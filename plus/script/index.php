<?php
/**
 * 脚本解析 · 播放入口
 *
 * 读取后台「脚本解析」从用户脚本中解析出的线路，用于解析并播放官方视频。
 * 入口：/plus/script/?url=官方视频地址[&line=线路序号][&wd=片名][&ep=集数][&vid=资源ID]
 */
@set_time_limit(30);
error_reporting(0);

require_once dirname(__FILE__) . '/../../include/class.script.php';

function sp_h($s) { return htmlspecialchars((string)$s, ENT_QUOTES, 'UTF-8'); }
function sp_get($k) { return isset($_GET[$k]) ? trim((string)$_GET[$k]) : ''; }

// 站点配置（自动同步解析线路时会用到全局 $CONFIG）
if (file_exists(dirname(__FILE__) . '/../../save/config.php')) {
    include dirname(__FILE__) . '/../../save/config.php';
}

// 自动检测上游仓库更新（受后台「检查间隔」限制，未到期不发起请求）
$cfg = script_load();
if ((string)$cfg['off'] === '1') {
    script_auto_update($cfg);
    $cfg = script_load();
}
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
        // 直连线路：按配置顺序尝试多条直连线路，取第一条成功
        $res = sp_resolve_direct(script_direct_list($cfg), $url, $wd, $vid, $ep);
        if ($res['ok']) {
            $src = $res['play'] !== '' ? $res['play'] : $res['url'];
            $epList = $res['eps'];
            $curEp = (int)$res['cur'];
            $resolvedName = $res['name'];
            $vid = $res['vid'];
        } elseif ((int)$res['code'] === 400) {
            $error = '未能自动识别片名，请在下方「片名」输入框补充剧名后重试。';
        } else {
            $error = $res['msg'] . '，请尝试其他线路。';
        }
    } elseif ($url !== '') {
        // 解析接口线路：接口地址 + 官方视频地址
        $src = $line['url'] . $url;
    }
}

$siteName = 'MXXM';
if (isset($CONFIG['TITLE']) && trim((string)$CONFIG['TITLE']) !== '') { $siteName = trim((string)$CONFIG['TITLE']); }

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
