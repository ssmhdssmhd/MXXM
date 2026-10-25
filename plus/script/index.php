<?php
/**
 * 脚本解析 · 播放入口
 *
 * 读取后台「脚本解析」从用户脚本中解析出的线路，用于解析并播放官方视频。
 * 入口：/plus/script/?url=官方视频地址[&line=线路序号][&wd=片名][&ep=集数][&vid=资源ID]
 */
@set_time_limit(30);
error_reporting(0);

function sp_h($s) { return htmlspecialchars((string)$s, ENT_QUOTES, 'UTF-8'); }
function sp_get($k) { return isset($_GET[$k]) ? trim((string)$_GET[$k]) : ''; }

// 读取脚本解析配置
function sp_config() {
    $file = dirname(__FILE__) . '/../../save/script.config.php';
    $cfg = array();
    if (file_exists($file)) {
        include $file;
        if (isset($SCRIPT_CONFIG) && is_array($SCRIPT_CONFIG)) { $cfg = $SCRIPT_CONFIG; }
    }
    $direct = array(
        'site'   => 'https://wsyzy.cc',
        'api'    => 'https://api.wsyzy.net/api.php/provide/vod/',
        'player' => 'https://wsyzy.vip/m3u8/?url=',
    );
    $cfg += array('off' => '1', 'name' => '脚本解析', 'version' => '', 'time' => '', 'lines' => array(), 'direct' => $direct);
    if (!isset($cfg['direct']) || !is_array($cfg['direct'])) { $cfg['direct'] = $direct; }
    $cfg['direct'] += $direct;
    if (!isset($cfg['lines']) || !is_array($cfg['lines'])) { $cfg['lines'] = array(); }
    return $cfg;
}

// 带超时的网页抓取
function sp_http($url, $timeout = 12) {
    if (!preg_match('~^https?://~i', $url)) { return ''; }
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
    curl_setopt($ch, CURLOPT_MAXREDIRS, 5);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 6);
    curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
    curl_setopt($ch, CURLOPT_ENCODING, '');
    curl_setopt($ch, CURLOPT_AUTOREFERER, true);
    curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
    $data = curl_exec($ch);
    curl_close($ch);
    return is_string($data) ? $data : '';
}

// 清洗片名：去掉站点名与常见后缀
function sp_clean_title($t) {
    $t = trim(preg_replace('/\s+/u', ' ', (string)$t));
    if ($t === '') { return ''; }
    $sites = '爱奇艺|腾讯视频|腾讯|优酷|芒果TV|芒果|哔哩哔哩|bilibili|B站|搜狐视频|搜狐|乐视视频|乐视|PPTV聚力|PPTV|1905电影网|1905|土豆网|土豆|AcFun|西瓜视频|咪咕视频|咪咕';
    $t = preg_replace('/[\s\-_：:|｜，,。·]*(?:' . $sites . ')[\s\-_：:|｜，,。·]*/u', ' ', $t);
    $t = preg_replace('/在线观看|高清正版|免费观看|完整版|正片|预告|全集|更新至\d+[集期话]/u', ' ', $t);
    $t = trim(preg_replace('/\s+/u', ' ', $t));
    if ($t === '') { return ''; }
    // 中文片名通常不含空格，取首段可用的片名
    $parts = preg_split('/[\s\-_（(｜|]/u', $t);
    foreach ($parts as $p) {
        $p = trim($p);
        if (mb_strlen($p, 'UTF-8') >= 2) { return $p; }
    }
    return $t;
}

// 从官方页面提取片名（og:title / title）
function sp_page_title($url) {
    $html = sp_http($url, 10);
    if ($html === '') { return ''; }
    $t = '';
    if (preg_match('~<meta[^>]+(?:property|name)\s*=\s*["\']og:title["\'][^>]*content\s*=\s*["\']([^"\']*)~i', $html, $m)) {
        $t = html_entity_decode($m[1], ENT_QUOTES, 'UTF-8');
    }
    if ($t === '' && preg_match('~<title[^>]*>(.*?)</title>~is', $html, $m)) {
        $t = html_entity_decode(strip_tags($m[1]), ENT_QUOTES, 'UTF-8');
    }
    return sp_clean_title($t);
}

// 匹配度打分：精确 > 前缀 > 包含 > 反向包含
function sp_score($name, $wd) {
    if ($name === $wd) { return 4; }
    if (strpos($name, $wd) === 0) { return 3; }
    if (strpos($name, $wd) !== false) { return 2; }
    if (mb_strlen($wd, 'UTF-8') >= 2 && strpos($wd, $name) !== false) { return 1; }
    return 0;
}

// 搜索资源站候选
function sp_search($site, $wd) {
    $q = rtrim($site, '/') . '/index.php/ajax/suggest?' . http_build_query(array('mid' => 1, 'wd' => $wd));
    $json = sp_http($q, 10);
    $j = json_decode($json, true);
    $list = (is_array($j) && !empty($j['list']) && is_array($j['list'])) ? $j['list'] : array();
    $out = array();
    foreach ($list as $it) {
        if (!isset($it['id'], $it['name'])) { continue; }
        $out[] = array('id' => (int)$it['id'], 'name' => (string)$it['name']);
    }
    usort($out, function ($a, $b) use ($wd) {
        return sp_score($b['name'], $wd) - sp_score($a['name'], $wd);
    });
    return $out;
}

// 取资源详情中的剧集列表
function sp_episodes($api, $vid) {
    $q = rtrim($api, '/') . '/?' . http_build_query(array('ac' => 'detail', 'ids' => $vid));
    $json = sp_http($q, 12);
    $j = json_decode($json, true);
    $vod = (is_array($j) && !empty($j['list'][0]) && is_array($j['list'][0])) ? $j['list'][0] : array();
    $play = isset($vod['vod_play_url']) ? (string)$vod['vod_play_url'] : '';
    if ($play === '') { return array(); }
    // 多播放源用 $$$ 分隔，取第一组
    $groups = explode('$$$', $play);
    $eps = array();
    foreach (explode('#', $groups[0]) as $seg) {
        $i = strpos($seg, '$');
        $name = $i > 0 ? trim(substr($seg, 0, $i)) : '';
        $link = $i > 0 ? trim(substr($seg, $i + 1)) : trim($seg);
        if (!preg_match('~^https?://~i', $link)) { continue; }
        $eps[] = array(
            'name' => $name !== '' ? $name : ('第' . (count($eps) + 1) . '集'),
            'url'  => $link,
        );
    }
    return $eps;
}

$cfg   = sp_config();
$lines = $cfg['lines'];
$url   = sp_get('url');
$wd    = sp_get('wd');
$ep    = max(0, (int)sp_get('ep'));
$vid   = sp_get('vid');
$lineK = sp_get('line');

// 启用中的线路
$enabled = array();
foreach ($lines as $k => $it) {
    if (!is_array($it)) { continue; }
    $it += array('name' => '', 'url' => '', 'type' => '', 'direct' => '0', 'off' => '0');
    if ((string)$it['off'] === '1' && $it['name'] !== '') { $enabled[$k] = $it; }
}

// 当前线路：指定线路优先，否则用第一条启用的
$curKey = null;
if ($lineK !== '' && isset($enabled[$lineK])) { $curKey = $lineK; }
if ($curKey === null && !empty($enabled)) { $curKey = key($enabled); }
$line = ($curKey !== null) ? $enabled[$curKey] : null;

$src = ''; $error = ''; $epList = array(); $curEp = 0; $resolvedName = '';

if ($line !== null) {
    if ((string)$line['direct'] === '1') {
        // 直连线路：片名 -> 搜索候选 -> 详情 m3u8 -> 官方播放器
        $title = sp_clean_title($wd);
        if ($title === '' && $url !== '') { $title = sp_page_title($url); }
        if ($title === '') {
            $error = '未能自动识别片名，请在下方「片名」输入框补充剧名后重试。';
        } else {
            $resolvedName = $title;
            if ($vid === '') {
                $cands = sp_search($cfg['direct']['site'], $title);
                if (empty($cands)) {
                    $error = '资源站未搜索到「' . $title . '」，请尝试其他线路。';
                } else {
                    $vid = (string)$cands[0]['id'];
                    $resolvedName = $cands[0]['name'];
                }
            }
            if ($error === '' && $vid !== '') {
                $epList = sp_episodes($cfg['direct']['api'], $vid);
                if (empty($epList)) {
                    $error = '资源详情获取失败，请更换线路或稍后重试。';
                } else {
                    $curEp = min($ep, count($epList) - 1);
                    $src = $cfg['direct']['player'] . rawurlencode($epList[$curEp]['url']);
                }
            }
        }
    } elseif ($url !== '') {
        // 解析接口线路：接口地址 + 官方视频地址
        $src = $line['url'] . $url;
    }
}

$siteName = 'MXXM';
if (file_exists(dirname(__FILE__) . '/../../save/config.php')) {
    include dirname(__FILE__) . '/../../save/config.php';
    if (isset($CONFIG['TITLE']) && trim((string)$CONFIG['TITLE']) !== '') { $siteName = trim((string)$CONFIG['TITLE']); }
}

// 生成链接（自动过滤空参数）
function sp_link($params) {
    $params = array_filter($params, function ($v) { return $v !== '' && $v !== null; });
    return '?' . http_build_query($params);
}
?>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<meta name="referrer" content="no-referrer">
<title>脚本解析 - <?php echo sp_h($siteName); ?></title>
<style>
*{box-sizing:border-box}
html,body{margin:0;padding:0;background:#0b1220;color:#e5edf7;font:14px/1.6 -apple-system,BlinkMacSystemFont,"Microsoft YaHei",sans-serif}
a{color:#7dd3fc;text-decoration:none}
.hd{display:flex;align-items:baseline;gap:10px;flex-wrap:wrap;padding:14px 16px 8px}
.hd-t{font-size:18px;font-weight:700;color:#fff}
.hd-s{font-size:12px;color:#94a3b8}
.hd-s em{font-style:normal;color:#38bdf8}
.q{display:flex;gap:8px;flex-wrap:wrap;padding:8px 16px 12px}
.q input{flex:1 1 260px;min-width:0;height:38px;padding:0 12px;border:1px solid #1e3a5f;border-radius:8px;background:#0f1b2d;color:#e5edf7;outline:none}
.q input:focus{border-color:#38bdf8}
.q .q-wd{flex:0 1 200px}
.q button{height:38px;padding:0 20px;border:0;border-radius:8px;background:#0ea5e9;color:#fff;font-weight:700;cursor:pointer}
.q button:hover{background:#38bdf8}
.lines{display:flex;gap:8px;flex-wrap:wrap;padding:0 16px 12px}
.lines a{padding:5px 12px;border:1px solid #1e3a5f;border-radius:999px;background:#0f1b2d;color:#bae6fd;font-size:12px}
.lines a.on{border-color:#38bdf8;background:#0369a1;color:#fff}
.lines a i{font-style:normal;color:#fbbf24;font-size:10px;margin-left:2px}
.stage{margin:0 16px;border-radius:12px;overflow:hidden;background:#000;min-height:220px;display:flex;align-items:center;justify-content:center}
.stage iframe{display:block;width:100%;height:min(72vh,560px);min-height:360px;border:0;background:#000}
.msg{padding:40px 20px;text-align:center;color:#94a3b8}
.msg b{color:#7dd3fc}
.eps{margin:14px 16px 0}
.eps-h{font-size:12px;color:#94a3b8;margin-bottom:8px}
.eps-list{display:flex;flex-wrap:wrap;gap:6px;max-height:220px;overflow:auto}
.ep{padding:4px 10px;border:1px solid #155e75;border-radius:6px;background:#0b2942;color:#bae6fd;font-size:12px;white-space:nowrap}
.ep.on{border-color:#38bdf8;background:#0369a1;color:#fff}
.ft{padding:18px 16px 26px;text-align:center;font-size:12px;color:#64748b}
@media (max-width:640px){
  .q .q-wd{flex:1 1 100%}
  .stage iframe{height:56vh;min-height:260px}
}
</style>
</head>
<body>
<header class="hd">
    <div class="hd-t">脚本解析</div>
    <div class="hd-s"><?php echo sp_h($cfg['name']); ?><?php echo $cfg['version'] !== '' ? ' <em>v' . sp_h($cfg['version']) . '</em>' : ''; ?></div>
</header>

<form class="q" method="get" action="">
    <?php if ($curKey !== null): ?><input type="hidden" name="line" value="<?php echo sp_h($curKey); ?>"><?php endif; ?>
    <input class="q-url" type="text" name="url" value="<?php echo sp_h($url); ?>" placeholder="官方视频地址，如 https://v.qq.com/x/cover/xxx.html">
    <input class="q-wd" type="text" name="wd" value="<?php echo sp_h($wd); ?>" placeholder="片名（直连线路识别失败时填写）">
    <button type="submit">解析播放</button>
</form>

<div class="lines">
    <?php foreach ($enabled as $k => $it): ?>
    <a class="<?php echo ((string)$k === (string)$curKey) ? 'on' : ''; ?>" href="<?php echo sp_h(sp_link(array(
        'line' => $k,
        'url'  => $url,
        'wd'   => $wd,
        'vid'  => ((string)$k === (string)$curKey) ? $vid : '',
        'ep'   => ((string)$k === (string)$curKey) ? $ep : '',
    ))); ?>"><?php echo sp_h($it['name']); ?><?php echo (string)$it['direct'] === '1' ? '<i>直连</i>' : ''; ?></a>
    <?php endforeach; ?>
</div>

<main class="stage">
    <?php if ((string)$cfg['off'] !== '1'): ?>
        <div class="msg">脚本解析已在后台关闭，请前往「脚本解析 → 脚本设置」开启。</div>
    <?php elseif (empty($enabled)): ?>
        <div class="msg">尚未解析出可用线路，请前往后台「脚本解析」点击<b>更新脚本</b>。</div>
    <?php elseif ($error !== ''): ?>
        <div class="msg"><?php echo sp_h($error); ?></div>
    <?php elseif ($src !== ''): ?>
        <iframe src="<?php echo sp_h($src); ?>" scrolling="no" frameborder="0" allow="autoplay; fullscreen; encrypted-media" allowfullscreen></iframe>
    <?php elseif ($url === ''): ?>
        <div class="msg">粘贴官方视频地址后点击<b>「解析播放」</b>即可。</div>
    <?php else: ?>
        <div class="msg">当前线路需要点击「解析播放」后加载。</div>
    <?php endif; ?>
</main>

<?php if (!empty($epList)): ?>
<div class="eps">
    <div class="eps-h">选集 · <?php echo sp_h($resolvedName); ?>（共 <?php echo count($epList); ?> 集）</div>
    <div class="eps-list">
        <?php foreach ($epList as $i => $e): ?>
        <a class="ep<?php echo $i === $curEp ? ' on' : ''; ?>" href="<?php echo sp_h(sp_link(array(
            'url'  => $url,
            'wd'   => $wd,
            'line' => $curKey,
            'vid'  => $vid,
            'ep'   => $i,
        ))); ?>"><?php echo sp_h($e['name']); ?></a>
        <?php endforeach; ?>
    </div>
</div>
<?php endif; ?>

<div class="ft">脚本：<a href="https://github.com/88lin/video_vip" target="_blank" rel="noopener">88lin/video_vip</a> · 仅供学习交流</div>
</body>
</html>
