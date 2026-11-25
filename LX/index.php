<?php
/**
 * 轮训接口入口
 *
 * 调用：域名/LX/?url=官方视频地址
 * 可选：&line=2 指定线路；不传 line 时使用后台设置的线路（0 = 自动轮询）
 * 配置：后台「扩展功能 → 轮训接口」，保存到 LX/config.php
 */

require_once dirname(__FILE__) . '/lib.php';
require_once dirname(__FILE__) . '/../include/class.log.php';

mxxm_log_call_begin('轮训接口', 'LX', array(
    'url'  => isset($_GET['url']) ? $_GET['url'] : '',
    'line' => isset($_GET['line']) ? $_GET['line'] : '',
));

@set_time_limit(120);

header('Content-Type: application/json; charset=utf-8');
header('Access-Control-Allow-Origin: *');
header('Cache-Control: no-store');

//统一 JSON 输出（附带 errormsg 兼容原轮训源码的调用方）
function lx_output($code, $msg, $extra = array()) {
    http_response_code((int)$code);
    header('Content-Type: application/json; charset=utf-8');
    $out = array_merge(
        array('code' => (int)$code, 'msg' => $msg, 'errormsg' => $msg),
        is_array($extra) ? $extra : array()
    );
    echo json_encode($out, JSON_UNESCAPED_UNICODE);
    exit;
}

$cfg = lx_config_load();
if ((string)$cfg['enabled'] !== '1') {
    lx_output(403, '轮训接口已关闭');
}

$videoUrl = isset($_GET['url']) ? trim((string)$_GET['url']) : '';
if ($videoUrl === '') {
    lx_output(400, '请输入解析的视频地址');
}
if (!preg_match('~^https?://~i', $videoUrl)) {
    lx_output(400, '视频地址需以 http:// 或 https:// 开头');
}

$lineId = isset($_GET['line']) ? (int)$_GET['line'] : null;

//Key 自动同步：到期后从指定地址获取 key，并替换线路中的 key=
$lxKeyErr = '';
$cfg = lx_key_sync($cfg, false, $lxKeyErr);

$result = lx_rotate($cfg, $videoUrl, $lineId);

if (!$result['ok']) {
    lx_output(502, $result['msg'] !== '' ? $result['msg'] : '线路无法解析到', array('logs' => $result['logs']));
}

//成功时直接返回解析结果（保留接口原始字段，如 url）
echo json_encode($result['data'], JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
exit;
