<?php
/**
 * 官替算法 算法2 (mx2) - 解析入口
 * 用法：域名/mx2/?url=官方视频地址
 *
 * 基于 MXGJ 沫兮官替系统核心算法：
 *   1. 解析官方链接 → 平台 / vid / cid / 集数
 *   2. 命中本地映射表（config/mapping.json）得到「剧名 + 集数」
 *   3. 映射未命中时自动抓取官方页面识别「剧名 + 集数」
 *   4. 多线程并发向后台配置的资源站搜索对应资源
 *   5. 命中返回 code=200 + m3u8 地址
 *
 * 配置文件：config/settings.json、config/sites.json、config/mapping.json
 * 返回格式与算法1(mx1)一致：{code, msg, url, link, name, from}
 */

require_once __DIR__ . '/bootstrap.php';

header('Content-Type: application/json;charset=utf-8');

$debug = !empty($_GET['debug']);
$page  = isset($_GET['page']) ? max(1, (int)$_GET['page']) : 1;
$t0    = microtime(true);
$ip    = $_SERVER['REMOTE_ADDR'] ?? '';

// 读取配置
$settings = mx2_settings();

// 启用状态检查
if (($settings['off'] ?? '0') === '1') {
    $player['code'] = 403;
    $player['msg']  = '官替算法 算法2 已关闭';
    $player['link'] = '';
    $player['from'] = '官替算法 算法2 (mx2)';
    die(json_encode($player, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));
}

// 读取 url 参数
$raw = isset($_GET['url']) ? trim($_GET['url']) : '';

if ($raw === '') {
    $player['code'] = 400;
    $player['msg']  = '请输入url地址!';
    $player['link'] = '';
    $player['from'] = '官替算法 算法2 (mx2)';
    die(json_encode($player, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));
}
if (strpos($raw, 'http') !== 0) {
    $raw = 'http://' . $raw;
}
if (!parse_url($raw, PHP_URL_HOST)) {
    $player['code'] = 400;
    $player['msg']  = '链接格式非法';
    $player['link'] = $raw;
    $player['from'] = '官替算法 算法2 (mx2)';
    die(json_encode($player, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));
}

// 1. 解析官方链接
$parsed = LinkParser::parse($raw);

// 2. 本地映射表
$mapping = mx2_mapping_data();
$name    = $parsed['title'];
$episode = $parsed['episode'] > 0 ? $parsed['episode'] : $page;

// 2.1 vid → 剧名+集数
$epMap = isset($mapping['episode']) && is_array($mapping['episode']) ? $mapping['episode'] : [];
$vidKey = 'vid:' . $parsed['vid'];
if ($parsed['vid'] !== '' && mx2_mapping_enabled($mapping, 'episode', $vidKey)) {
    if (isset($epMap[$vidKey]) && !empty($epMap[$vidKey]['name'])) {
        $name    = $epMap[$vidKey]['name'];
        $episode = !empty($epMap[$vidKey]['episode']) ? (int)$epMap[$vidKey]['episode'] : $episode;
    }
}

// 2.2 cid → 剧名
if ($name === '' && $parsed['cid'] !== '') {
    $cidMap = isset($mapping['cid']) && is_array($mapping['cid']) ? $mapping['cid'] : [];
    if (isset($cidMap[$parsed['cid']]) && mx2_mapping_enabled($mapping, 'cid', $parsed['cid'])) {
        $name = $cidMap[$parsed['cid']];
    }
}

// 2.3 剧名映射
if ($name !== '') {
    $titleMap = isset($mapping['title']) && is_array($mapping['title']) ? $mapping['title'] : [];
    if (isset($titleMap[$name]) && mx2_mapping_enabled($mapping, 'title', $name)) {
        $name = $titleMap[$name];
    }
}

// 2.4 映射仍无法识别时，自动抓取官方页面
$nameFrom = '';
if ($name === '') {
    $pgKey = 'page:' . ($parsed['vid'] !== '' ? $parsed['vid']
        : ($parsed['cid'] !== '' ? $parsed['cid'] : md5($raw)));
    $pageRes = Cache::get($pgKey);
    if (!is_array($pageRes) || empty($pageRes['title'])) {
        $pageRes = PageResolver::resolve($raw, $episode, (int)$settings['timeout']);
        if (!empty($pageRes['title']) && !mx2_is_garbage_title($pageRes['title'])) {
            Cache::set($pgKey, $pageRes, 600);
        }
    }
    if (!empty($pageRes['title']) && !mx2_is_garbage_title($pageRes['title'])) {
        $nameFrom = $pageRes['title'];
        $name     = $pageRes['title'];
        if (!empty($pageRes['episode'])) {
            $episode = (int)$pageRes['episode'];
        }
        if ($episode > 0) {
            mx2_auto_mapping($parsed, $name, $episode);
        }
    }
}

if ($name === '') {
    $mapHint = $parsed['vid'] !== '' ? 'vid=' . $parsed['vid']
             : ($parsed['cid'] !== '' ? 'cid=' . $parsed['cid'] : '');
    $player['code'] = 502;
    $player['msg']  = '无法识别该链接对应的剧名' . ($mapHint !== '' ? '（' . $mapHint . '）' : '');
    $player['link'] = $raw;
    $player['from'] = '官替算法 算法2 (mx2)';
    die(json_encode($player, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));
}

// 3. 缓存命中
$fallbackCfg = is_array($settings['fallback'] ?? null) ? $settings['fallback'] : [];
$fallbackEnable  = !empty($fallbackCfg['enable']);
$retryMainOnFb   = !empty($fallbackCfg['step2_retry_main']);

$primaryKey = 'search:' . mx2_lower($name) . ':' . $episode;
$now        = time();

$cachedResult = Cache::get($primaryKey);
$cachedHit    = false;
if ($cachedResult && isset($cachedResult['code'], $cachedResult['url'])) {
    if (!empty($cachedResult['from_fallback']) && $retryMainOnFb && $fallbackEnable) {
        $cachedResult = null;
    } else {
        $cachedHit = true;
    }
} else {
    $cachedResult = null;
}

// 剧名预处理：清洗出短名（去掉书名号/括号/副标题/描述尾巴）
$cleanName = mx2_clean_title($name);

// 4. 搜索资源站
$sites = mx2_sites();

if ($cachedResult) {
    $result = $cachedResult;
} else {
    $result = SiteSearcher::searchWithFallback(
        $sites,
        $name,
        $episode,
        (int)$settings['timeout'],
        $fallbackCfg
    );
    // 二级 fallback：原始长剧名搜不到，用清洗后的短名再搜一次
    if (($result['code'] ?? 0) !== 200
        && $cleanName !== ''
        && $cleanName !== $name
        && mb_strlen($cleanName) >= 2) {
        Logger::log('search', '原始剧名未命中，改用短名重试：' . $cleanName, 'info');
        $result = SiteSearcher::searchWithFallback(
            $sites,
            $cleanName,
            $episode,
            (int)$settings['timeout'],
            $fallbackCfg
        );
    }
    if (($result['code'] ?? 0) === 200 && !empty($result['url'])) {
        $result['time'] = $now;
        Cache::set($primaryKey, $result, (int)$settings['cache_ttl']);
    }
}

// 5. 组装返回（与算法1一致的格式）
$code = (int)($result['code'] ?? 404);
$msg  = (string)($result['msg'] ?? '');

if ($code === 200 && !empty($result['url'])) {
    $videoname = $name;
    if ($episode > 0) {
        $videoname .= '【第' . $episode . '集】';
    }
    $player = [
        'code' => 200,
        'msg'  => '解析成功',
        'url'  => $result['url'],
        'link' => $raw,
        'name' => $videoname,
        'from' => '官替算法 算法2 (mx2)',
    ];
} else {
    $player = [
        'code' => $code,
        'msg'  => $msg !== '' ? $msg : '解析失败',
        'url'  => '',
        'link' => $raw,
        'name' => $name,
        'from' => '官替算法 算法2 (mx2)',
    ];
}

// 搜索调用日志
Logger::log(
    'search',
    ($code === 200 ? '命中' : '未命中') . '：' . $name . ' 第' . $episode . '集',
    $code === 200 ? 'success' : 'warn',
    [
        'title'    => $name,
        'episode'  => $episode,
        'platform' => $parsed['platform'],
        'code'     => $code,
        'site'     => $result['site'] ?? '',
        'url'      => $result['url'] ?? '',
        'cached'   => $cachedHit,
        'time_ms'  => round((microtime(true) - $t0) * 1000, 1),
        'ip'       => $ip,
    ]
);

die(json_encode($player, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));
