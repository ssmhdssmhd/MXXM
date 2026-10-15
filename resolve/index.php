<?php
/**
 * 官替算法 统一解析调度入口
 *
 * 对外只暴露这一个入口：域名/resolve/?url=官方视频地址
 * 内部根据 save/resolve.config.php 配置：
 *   - mode = 'mx1'  : 直接调 mx1
 *   - mode = 'mx2'  : 直接调 mx2
 *   - mode = 'auto' : 并行 curl_multi 调 mx1 + mx2，首个 code=200 立即返回
 *
 * 当前版本：暂不缓存（速度优先）
 */

error_reporting(0);
header('Content-Type: application/json;charset=utf-8');
header('X-MXXM-Resolve: 1');

$scheme = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? 'https' : 'http';
$host   = $_SERVER['HTTP_HOST'] ?? 'localhost';
$self   = $scheme . '://' . $host;

// ---- 读配置 ----
$cfgFile = __DIR__ . '/../save/resolve.config.php';
$cfg = @include $cfgFile;
if (!is_array($cfg)) { $cfg = array(); }
$cfg += array('mode' => 'auto', 'mx1_url' => '', 'mx2_url' => '', 'timeout' => 10, 'enabled' => '1');

if ($cfg['enabled'] === '0') {
    die(json_encode(['code' => 403, 'msg' => '官替算法 统一调度入口已关闭', 'link' => '', 'from' => 'resolve'], JSON_UNESCAPED_UNICODE));
}

// ---- 读 URL 参数 ----
$url = isset($_GET['url']) ? trim($_GET['url']) : '';
if ($url === '') {
    die(json_encode(['code' => 400, 'msg' => '请输入 url 地址', 'link' => '', 'from' => 'resolve'], JSON_UNESCAPED_UNICODE));
}
if (strpos($url, 'http') !== 0) { $url = 'http://' . $url; }

// ---- 决定要请求哪些算法 ----
$targets = array();
if ($cfg['mode'] === 'mx1') {
    $targets[] = array('name' => 'mx1', 'url' => mx_resolve_algo_url($cfg['mx1_url'], $self, 'mx1', $url));
} elseif ($cfg['mode'] === 'mx2') {
    $targets[] = array('name' => 'mx2', 'url' => mx_resolve_algo_url($cfg['mx2_url'], $self, 'mx2', $url));
} else {
    // auto：两个都请求
    $targets[] = array('name' => 'mx1', 'url' => mx_resolve_algo_url($cfg['mx1_url'], $self, 'mx1', $url));
    $targets[] = array('name' => 'mx2', 'url' => mx_resolve_algo_url($cfg['mx2_url'], $self, 'mx2', $url));
}

$timeout = max(1, (int)$cfg['timeout']);
$modeLabel = $cfg['mode'];

// ---- 并行请求（auto）或单请求（mx1/mx2）----
if (count($targets) === 1) {
    $result = mx_fetch_once($targets[0]['url'], $timeout);
    $winner = $result;
} else {
    $winner = mx_fetch_fastest(array_column($targets, 'url', 'name'), $timeout);
}

// ---- 组装返回 ----
if (!empty($winner) && !empty($winner['json']) && isset($winner['json']['code']) && (int)$winner['json']['code'] === 200 && !empty($winner['json']['url'])) {
    $j = $winner['json'];
    $player = array(
        'code' => 200,
        'msg'  => '解析成功',
        'url'  => $j['url'],
        'link' => $url,
        'name' => $j['name'] ?? '',
        'from' => 'resolve (' . ($winner['name'] ?? '?') . ', mode=' . $modeLabel . ', ms=' . ($winner['ms'] ?? 0) . ')',
    );
    die(json_encode($player, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));
}

// 两个都没成功：返回更丰富的错误信息
$msgs = array();
foreach ($winner['tries'] ?? array() as $t) {
    $msgs[] = $t['name'] . '：' . ($t['msg'] ?? '请求失败');
}
die(json_encode(array(
    'code' => 404,
    'msg'  => '所有算法均未命中（mode=' . $modeLabel . '）',
    'link' => $url,
    'from' => 'resolve',
    'tries' => $winner['tries'] ?? array(),
), JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));


// ================= 辅助函数 =================

/** 生成单个算法的请求 URL */
function mx_resolve_algo_url($configured, $self, $module, $rawUrl) {
    if (!empty($configured)) {
        $base = rtrim($configured, '/?');
    } else {
        $base = rtrim($self, '/') . '/' . $module . '/index.php';
    }
    // 防止用户自己填了 ?url=...
    if (strpos($base, '?') === false) { $base .= '?'; }
    else { $base .= '&'; }
    return $base . 'url=' . rawurlencode($rawUrl);
}

/** 单次请求 */
function mx_fetch_once($url, $timeout) {
    $t0 = microtime(true);
    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
    curl_setopt($ch, CURLOPT_USERAGENT, 'MXXM-resolve/1.0 (+https://github.com/ssmhdssmhd/MXXM)');
    $body = curl_exec($ch);
    $ms = (int)((microtime(true) - $t0) * 1000);
    $err = curl_error($ch);
    curl_close($ch);
    $json = null;
    if ($body !== false && $body !== '') { $json = json_decode($body, true); }
    return array('name' => 'single', 'json' => $json, 'msg' => $err ?: '', 'ms' => $ms);
}

/**
 * 并行 curl_multi：谁先 code=200 立即返回（**最快胜出**）
 * 但 curl_multi 本身是等多个 handle 都完成或超时才返回，
 * 所以用多轮 select + 每轮检查已完成 handle，首个成功就 cancel 剩余。
 */
function mx_fetch_fastest($urlsByName, $timeout) {
    $t0 = microtime(true);
    $names = array_keys($urlsByName);
    $handles = array();   // name => ch
    $completed = array(); // name => ['json'=>..., 'ms'=>..., 'msg'=>...]

    $multi = curl_multi_init();
    foreach ($names as $n) {
        $ch = curl_init($urlsByName[$n]);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($ch, CURLOPT_USERAGENT, 'MXXM-resolve/1.0');
        curl_setopt($ch, CURLOPT_NOSIGNAL, true);
        curl_multi_add_handle($multi, $ch);
        $handles[$n] = $ch;
    }

    $winner = null;
    $running = null;
    do {
        curl_multi_exec($multi, $running);
        curl_multi_select($multi, 0.1);

        // 检查已完成的 handle
        $info = curl_multi_info_read($multi);
        if ($info !== false) {
            foreach ($names as $n) {
                if (!isset($completed[$n]) && isset($handles[$n]) && $handles[$n] === $info['handle']) {
                    $ch = $handles[$n];
                    $body = curl_multi_getcontent($ch);
                    $err  = curl_error($ch);
                    $json = null;
                    if ($body !== false && $body !== '') { $json = json_decode($body, true); }
                    $ms = (int)((microtime(true) - $t0) * 1000);
                    $completed[$n] = array('name' => $n, 'json' => $json, 'msg' => $err ?: '', 'ms' => $ms);
                    curl_multi_remove_handle($multi, $ch);
                    curl_close($ch);

                    // 如果首个成功（code=200 且有 url），立刻停止剩余
                    if (!empty($json) && isset($json['code']) && (int)$json['code'] === 200 && !empty($json['url'])) {
                        $winner = $completed[$n];
                        // 立即 cancel 其他 handle
                        foreach ($handles as $nn => $chh) {
                            if ($nn !== $n && !isset($completed[$nn])) {
                                curl_multi_remove_handle($multi, $chh);
                                curl_close($chh);
                                $completed[$nn] = array('name' => $nn, 'json' => null, 'msg' => '被胜者终止', 'ms' => $ms);
                            }
                        }
                        break 2;
                    }
                }
            }
        }
        // 时间到？
        if ((microtime(true) - $t0) >= $timeout) break;
    } while ($running > 0);

    // 收尾：剩余 handle 释放
    foreach ($handles as $n => $ch) {
        if (!isset($completed[$n])) {
            $body = curl_multi_getcontent($ch);
            $err  = curl_error($ch);
            $json = null;
            if ($body !== false && $body !== '') { $json = json_decode($body, true); }
            $ms = (int)((microtime(true) - $t0) * 1000);
            $completed[$n] = array('name' => $n, 'json' => $json, 'msg' => $err ?: '超时', 'ms' => $ms);
            curl_multi_remove_handle($multi, $ch);
            curl_close($ch);
        }
    }
    curl_multi_close($multi);

    // 如果还没有 winner（两者都没 code=200），返回第一个有错误信息的
    if ($winner === null) {
        $winner = array('tries' => array_values($completed));
    }
    return $winner;
}
