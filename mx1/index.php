<?php
/**
 * 官替算法 算法1 (mx1) - 解析入口
 * 用法：域名/mx1/?url=官方视频地址
 * 配置由后台「官替算法 → 算法1」页面管理（save/mx1.config.php），无需修改本文件
 */
error_reporting(0);
header('Content-Type: application/json;charset=utf-8');

//读取后台配置
$MX1 = @include dirname(__FILE__) . '/../save/mx1.config.php';
if (!is_array($MX1)) { $MX1 = array(); }
$MX1 += array('off' => '0', 'qggapi' => '', 'api' => '');

if ($MX1['off'] == '1') {
    $player['code'] = 403;
    $player['msg'] = '官替算法已关闭';
    die(json_encode($player, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));
}

$qggapi = $MX1['qggapi']; //去广告解析接口填写处。留空不启用

$url = isset($_GET['url']) ? $_GET['url'] : '';
if ($url == '') {
    $player['code'] = 400;
    $player['msg'] = '请输入url地址!';
    die(json_encode($player, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));
}
// 缓存相关信息
$mulu = '';
if (strstr($url, 'qq.com')) { $mulu = "m3u8/qq/"; } //腾讯视频缓存目录
if (strstr($url, 'youku.com')) { $mulu = "m3u8/youku/"; } //优酷视频缓存目录
if (strstr($url, 'qiyi.com')) { $mulu = "m3u8/qiyi/"; } //爱奇艺视频缓存目录
if (strstr($url, 'mgtv.com')) { $mulu = "m3u8/mgtv/"; } //芒果视频缓存目录
if (strstr($url, 'bilibili.com')) { $mulu = "m3u8/bilibili/"; } //哔哩哔哩视频缓存目录
if ($mulu == '') { $mulu = "m3u8/other/"; } //其他平台缓存目录

// 创建缓存文件夹
if (!is_dir($mulu)) {
    mkdir($mulu, 0777, true);
}

$url = str_replace('http://', 'https://', $url);
$md5 = md5($url);
$cacheFile = $mulu . $md5 . '.txt';
// 从缓存中获取数据
if (file_exists($cacheFile)) {
    $data = file_get_contents($cacheFile);
} else {
    //本目录下的 ziyuan.php 地址（目录改名后仍然可用）
    $selfDir = rtrim(str_replace('\\', '/', dirname($_SERVER['SCRIPT_NAME'])), '/');
    $api = "http://" . $_SERVER['HTTP_HOST'] . $selfDir . "/ziyuan.php?url=" . urlencode($url); //资源获取文件的地址
    $data = httpget($api);
    $xcdata = json_decode($data, true);
    if (isset($xcdata['code']) && $xcdata['code'] == 200) {
        file_put_contents($cacheFile, $data); // 缓存数据到文件
    }
}
$json_data = json_decode($data, true);
if (isset($json_data['code']) && $json_data['code'] == 200) {
    if (!empty($qggapi)) {
        $json = $qggapi . $json_data['url'];
        $data = httpget($json);
        $xc = json_decode($data, true);
    } else {
        $xc = $json_data;
    }
    if (isset($xc['code']) && $xc['code'] == 200) {
        $player['code'] = $xc['code'];
        $player['msg']  = $xc['msg'];
        $player['url']  = $xc['url'];
        $player['link'] = $url;
        $player['name'] = $json_data['name'];
        $player['from'] = '官替算法 算法1 (mx1)';
        die(json_encode($player, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));
    }
}
$player['code'] = 404;
$player['msg']  = '解析失败';
$player['link'] = $url;
$player['from'] = '官替算法 算法1 (mx1)';
die(json_encode($player, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));

#请求函数
function httpget($data) {
    $curl = curl_init();
    //1.初始化，创建一个新cURL资源
    $UserAgent = 'Mozilla/5.0 (Linux; Android 11; Pixel 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36';
    curl_setopt($curl, CURLOPT_URL, $data);
    // 设置超时限制防止死循环
    curl_setopt($curl, CURLOPT_TIMEOUT, 10);
    //在发起连接前等待的时间，如果设置为0，则无限等待。
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    //设定是否显示头信息
    curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1);
    //启用时会将服务器服务器返回的"Location: "放在header中递归的返回给服务器,设置可以302跳转
    curl_setopt($curl, CURLOPT_REFERER, "http://www.gov.com");
    //构造来路
    curl_setopt($curl, CURLOPT_USERAGENT, $UserAgent);
    curl_setopt($curl, CURLOPT_ENCODING, 'gzip,deflate');
    //gzip压缩内容
    $data = curl_exec($curl);
    // 抓取URL并把它传递给浏览器
    curl_close($curl);
    return $data;
}
