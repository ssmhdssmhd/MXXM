<?php
/**
 * 脚本解析 · 对外 JSON 接口（可独立调用）
 *
 * 列表：/plus/script/api.php?list=1
 * 解析：/plus/script/api.php?url=官方视频地址[&line=线路序号或名称][&wd=片名][&ep=集数][&vid=资源ID]
 *
 * 返回 type：direct（直连，url 为 m3u8）/ iframe（内嵌播放地址）/ popup（需在新窗口打开）
 */

@set_time_limit(30);
error_reporting(0);
header('Content-Type: application/json; charset=utf-8');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type');
header('Cache-Control: no-store, no-cache, must-revalidate');
header('Pragma: no-cache');

if (strtoupper(isset($_SERVER['REQUEST_METHOD']) ? $_SERVER['REQUEST_METHOD'] : 'GET') === 'OPTIONS') {
    exit;
}

require_once dirname(__FILE__) . '/../../include/class.script.php';

function scapi_get($k) {
    return isset($_GET[$k]) ? trim((string)$_GET[$k]) : '';
}

function scapi_out($code, $msg, $data = array()) {
    echo json_encode(array_merge(array('code' => $code, 'msg' => $msg), $data), JSON_UNESCAPED_UNICODE);
    exit;
}

$cfg = script_load();

// 自动检测上游仓库更新（受后台「检查间隔」限制）
if ((string)$cfg['off'] === '1') {
    script_auto_update($cfg);
    $cfg = script_load();
}

if ((string)$cfg['off'] !== '1') {
    scapi_out(403, '脚本解析已关闭');
}

$enabled = script_enabled_lines($cfg);
if (empty($enabled)) {
    scapi_out(404, '暂无可用线路，请先在后台「脚本解析」更新脚本');
}

// 线路列表
if (scapi_get('list') === '1') {
    $list = array();
    foreach ($enabled as $k => $it) {
        $list[] = array(
            'index'  => (int)$k,
            'name'   => $it['name'],
            'type'   => $it['direct'] === '1' ? 'direct' : ($it['popup'] === '1' ? 'popup' : 'iframe'),
            'direct' => (int)$it['direct'],
            'popup'  => (int)$it['popup'],
        );
    }
    scapi_out(200, 'success', array(
        'scripts' => count((array)$cfg['scripts']),
        'total'   => count($list),
        'lines'   => $list,
    ));
}

$url = scapi_get('url');
$wd  = scapi_get('wd');
$vid = scapi_get('vid');
$ep  = max(0, (int)scapi_get('ep'));
$key = scapi_get('line');
// 官方链接未编码时，其 &vid=xxx 会被拆成独立参数，这里补回 url
list($url, $vid) = script_repair_media_url($url, $vid);

// 选择线路：序号优先，其次按名称精确匹配，默认第一条启用线路
$curKey = null;
if ($key !== '' && isset($enabled[$key])) {
    $curKey = $key;
} elseif ($key !== '') {
    foreach ($enabled as $k => $it) {
        if ($it['name'] === $key) { $curKey = $k; break; }
    }
    if ($curKey === null) { scapi_out(404, '指定的线路不存在或已停用'); }
}
if ($curKey === null) { $curKey = key($enabled); }
$line = $enabled[$curKey];

if ($line['direct'] === '1') {
    if ($url === '' && $vid === '') { scapi_out(400, '缺少 url 或 vid 参数'); }
} elseif ($url === '') {
    scapi_out(400, '缺少 url 参数（官方视频地址）');
}

$res = script_resolve_line($cfg, $line, $url, $wd, $vid, $ep);
if (!$res['ok']) {
    scapi_out($res['code'] ? $res['code'] : 500, $res['msg'] !== '' ? $res['msg'] : '解析失败');
}

$data = array(
    'line'   => $res['name'],
    'index'  => (int)$curKey,
    'type'   => $res['type'],
    'url'    => $res['url'],
    'direct' => $res['type'] === 'direct' ? 1 : 0,
    'popup'  => $res['type'] === 'popup' ? 1 : 0,
);
if ($res['type'] === 'direct') {
    $data['title'] = $res['name'];
    $data['ep']    = (int)$res['cur'];
    $data['vid']   = $res['vid'];
    $data['eps']   = $res['eps'];
    $data['ext']   = 'm3u8';
}
scapi_out(200, 'success', $data);
