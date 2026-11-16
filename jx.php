<?php
/**
 * 解析线路同源适配：JSON 提取顶层 url，其他响应回退原解析页面。
 */
define('FCPATH', str_replace('\\', '/', dirname(__FILE__)));
require_once FCPATH . '/include/class.main.php';
require_once FCPATH . '/save/config.php';

header('Cache-Control: no-store, no-cache, must-revalidate');
header('Pragma: no-cache');

$line = filter_input(INPUT_GET, 'line', FILTER_VALIDATE_INT, array('options' => array('min_range' => 0)));
$lines = mxxm_jx_lines($CONFIG['jx_url']);
$query = isset($_SERVER['QUERY_STRING']) ? $_SERVER['QUERY_STRING'] : '';
$api = ($line !== false && $line !== null && isset($lines[$line])) ? $lines[$line]['url'] : '';
$target = $api !== '' ? mxxm_jx_target($api, $query) : '';
if ($target === '') {
    http_response_code(404);
    exit('解析线路不存在或请求参数错误');
}

$result = mxxm_jx_decode(mxxm_jx_fetch($target));
$location = $target;
if (is_array($result)) {
    $location = !empty($result['player']) ? mxxm_jx_player_url($result['url'], $CONFIG) : $result['url'];
}
header('Location: ' . $location, true, 302);
exit;
