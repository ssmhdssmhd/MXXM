<?php
/**
 * 官替算法 算法1 (mx1) - 缓存文件地址查询（调试用）
 * 用法：域名/mx1/md5.php?url=视频地址
 */
header('Content-Type: application/json; charset=utf-8');
$url = isset($_GET['url']) ? $_GET['url'] : '';
if ($url === '') {
    echo json_encode(array('code' => 400, 'msg' => '请输入url地址!'), JSON_UNESCAPED_UNICODE);
    exit;
}
$sqlurl = str_replace(['http://', 'https://'], '', $url);
$md5 = md5($url) . "\r\n";
$md52 = md5($sqlurl);
echo '集数缓存文件地址MD5值：' . $md5;
echo 'm3u8资源地址文件MD5值：' . $md52;
exit;
