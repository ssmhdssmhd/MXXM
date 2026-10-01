<?php
/*
Name:解析方法
Version:1.0
*/
function analysiscurl($url,$header,$timeout) { //地址 标头 超时时间
   $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL,$url); //Curl地址
    if (empty($header) == false) {
        curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
    }
    curl_setopt($curl, CURLOPT_TIMEOUT, $timeout); //数据传输的最大允许时间
    curl_setopt($curl, CURLOPT_CONNECTTIMEOUT, $timeout); //服务器1秒内没有响应断开连接
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 0); //0=不检查 1=检查 SSL 证书来源
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0); //0=不检查 1=检查 证书中SSL加密算法是否存在
    curl_setopt($curl, CURLOPT_ENCODING, ''); //解决网页乱码问题
    curl_setopt($curl, CURLOPT_HEADER, 0); //1=输出 0=不输出	header部分
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1); //0=输出 1=不输出	到屏幕上
    $data = curl_exec($curl);
    curl_close($curl);
    return $data;
}

function jsonresult($url) {
    $json2['url'] = $url;
    $json2['Type'] = 0;
    $json2['ClientID'] = 1;
    $json2['MaxClientID'] = 1;
    $json2['Maxtimeout'] = 15;
	$json2['Core'] = intval(99);
	$json2['Ad_block'] = intval(0);
	$json2['position'] = intval(0);
	$json2['Safe'] = intval(0);
	$json2['Ewmsize'] = intval(250);
	$json2['EwmWidth'] = intval(0);
	$json2['EwmHeight'] = intval(0);
	$json2['Moviesize'] = intval(120);
	$json2['Tvplaysize'] = intval(70);
	$json2['headposition'] = intval(0);
    $json2['Exclude_content'] = "m3u8.pw";
    $json2['Conditions'] = json_decode('{"m3u8":".m3u8","mp4":".mp4","flv":".flv","mkv":".mkv"}');
    $json2['header'] = json_decode('{"User-Agent":" Android"}');
    $json['code'] = 200;
    $json['encrypt'] = 0;
    $json['data'] =$json2;
    echo json_encode($json);
    exit;
}

function jsonstop($url,$id,$analysismax,$timeout,$Anti_theft) {
    $json2['url'] = "";
    $json2['Type'] = 0;
    $json2['ClientID'] = intval($id);
    $json2['MaxClientID'] = intval($analysismax);
    $json2['Maxtimeout'] = 1;
	$json2['Core'] = intval(99);
	$json2['Ad_block'] = intval(0);
	$json2['position'] = intval(0);
	$json2['Safe'] = intval(0);
	$json2['Ewmsize'] = intval(250);
	$json2['EwmWidth'] = intval(0);
	$json2['EwmHeight'] = intval(0);
	$json2['Moviesize'] = intval(120);
	$json2['Tvplaysize'] = intval(70);
	$json2['headposition'] = intval(0);
    $json2['Exclude_content'] = "m3u8.pw";
    $json2['Conditions'] = json_decode('{"m3u8":".m3u8","mp4":".mp4","flv":".flv","mkv":".mkv"}');
    $json2['header'] = json_decode('{"User-Agent":" Android"}');
    $json['code'] = 200;
    $json['encrypt'] = 0;
    $json['data'] =$json2;
    /*防盗验证*/
    if ($Anti_theft == 0) {
        echo json_encode($json);
    }
    if ($Anti_theft == 1) {
        echo json_encode($json).getcodes(6);
    }
    if ($Anti_theft == 2) {
       echo json_encode($json)."接口停用";
    }
    exit;
}
?>