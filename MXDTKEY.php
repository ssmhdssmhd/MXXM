<?php
/**
 * 动态临时密钥 JSON 接口
 *
 * 推荐地址：域名/MXDTKEY.json（Apache 通过根目录 .htaccess 转发到本文件）
 * 通用地址：域名/MXDTKEY.php
 *
 * 仅返回当前动态临时密钥，绝不返回管理员固定密钥。
 * APP 每次启动或密钥失效时读取 JSON 中的 key，再拼接 /1.php?url=视频地址&key=动态密钥。
 */

@set_time_limit(10);

header('Content-Type: application/json; charset=utf-8');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type');
header('Cache-Control: no-store, no-cache, must-revalidate, max-age=0');
header('Pragma: no-cache');
header('Expires: 0');

if (strtoupper(isset($_SERVER['REQUEST_METHOD']) ? $_SERVER['REQUEST_METHOD'] : 'GET') === 'OPTIONS') {
    http_response_code(204);
    exit;
}

require_once dirname(__FILE__) . '/include/class.script.php';
require_once dirname(__FILE__) . '/include/class.log.php';

//调用日志：后台「日志与调用 → 调用日志」按「动态密钥接口」筛选
mxxm_log_call_begin('动态密钥接口', 'MXDTKEY.json', array(
    'referer' => isset($_SERVER['HTTP_REFERER']) ? (string)$_SERVER['HTTP_REFERER'] : '',
));

function mxdtkey_output($code, $msg, $extra = array()) {
    //防火墙核心类会设置 HTML 响应头，这里统一恢复为 JSON
    header('Content-Type: application/json; charset=utf-8');
    http_response_code((int)$code);
    $row = array(
        'code'       => (int)$code,
        'msg'        => (string)$msg,
        'key'        => '',
        'expires'    => 0,
        'expires_at' => '',
    );
    if (is_array($extra) && !empty($extra)) {
        $row = array_merge($row, $extra);
    }
    echo json_encode($row, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
    exit;
}

$KANJU = script_endpoint_load();

if ((string)$KANJU['off'] !== '1') {
    mxdtkey_output(403, '独立接口已关闭');
}
if (!isset($KANJU['dynamic_json_off']) || (string)$KANJU['dynamic_json_off'] !== '1') {
    mxdtkey_output(403, '动态密钥 JSON 接口已关闭');
}
if (!isset($KANJU['dynamic_off']) || (string)$KANJU['dynamic_off'] !== '1') {
    mxdtkey_output(403, '动态密钥未启用');
}

//与 /1.php 共用同一份动态密钥和轮换逻辑：到期访问时自动生成新密钥
$key_error = '';
$KANJU = script_endpoint_hourly_sync($KANJU, false, $key_error);
if ($key_error !== '') {
    mxdtkey_output(500, $key_error);
}

//复用独立接口的系统防火墙开关与规则；命中规则时按后台配置拦截
if ((string)$KANJU['firewall'] === '1') {
    define('FCPATH', str_replace('\\', '/', dirname(__FILE__)));
    require_once FCPATH . '/include/class.main.php';
    if (is_file(FCPATH . '/save/config.php')) {
        require_once FCPATH . '/save/config.php';
        if (class_exists('Blacklist') && isset($CONFIG['BLACKLIST'])) {
            Blacklist::parse($CONFIG['BLACKLIST']);
        }
    }
}

$dynamic_key = isset($KANJU['dynamic_key']) ? (string)$KANJU['dynamic_key'] : '';
if (preg_match('/^[A-Za-z0-9]{18}$/', $dynamic_key) !== 1) {
    mxdtkey_output(503, '动态密钥尚未生成，请稍后重试');
}

$hours = isset($KANJU['dynamic_hours']) ? (int)$KANJU['dynamic_hours'] : 1;
$hours = max(0, min(24, $hours));
$expires = isset($KANJU['dynamic_expires']) ? (int)$KANJU['dynamic_expires'] : 0;
$expires_in = $expires > 0 ? max(0, $expires - time()) : 0;

mxdtkey_output(200, 'success', array(
    'key'        => $dynamic_key,
    'expires'    => $expires,
    'expires_at' => $expires > 0 ? date('Y-m-d H:i:s', $expires) : '',
    'expires_in' => $expires_in,
    'interval'   => $hours,
    'api'        => '/1.php',
    'usage'      => '/1.php?url=官方视频地址&key=' . $dynamic_key,
    'server_time'=> time(),
));
