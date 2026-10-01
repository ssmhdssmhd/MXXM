<?php
/*
 Name:蓝奏云密码版API
 Version:1.0
*/
$key =  $pwd;
$_url = str_replace(['http://', 'https://'], '', $updateurl);
$_keyArr = explode('/', $_url);
$_key = end($_keyArr);
$BASEURL = 'https://'.$_keyArr[0].'/';
/*解析密码*/
$_res = getData($BASEURL . $_key);
$pattern = "/var skdklds = '(.*)';/";
preg_match($pattern, $_res, $matches);
$skdklds = $matches[1];
/*取直连*/
$datas = curlPosr($BASEURL, $skdklds,$key,$updateurl);
$J	=	json_decode($datas);
/*取直连*/
$zlurl = restoreUrl($J->dom."/file/".$J->url);
header("location:$zlurl");

/*取页面*/
function getData($url) {
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url); //设置传输的 url
    curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36");
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE); // 对认证证书来源的检查
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE); // 从证书中检查SSL加密算法是否存在
    curl_setopt($ch, CURLOPT_TIMEOUT, 5); // 设置超时限制防止死循环
    $output = curl_exec($ch);
    curl_close($ch);
    return $output;
}
/*取密码*/
function curlPosr($BASEURL, $lzykey,$key,$updateurl) {
    $header[] = "Referer:$updateurl";
    $data = array("action" => "downprocess","sign" => $lzykey,"p" => $key);
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $BASEURL."/ajaxm.php");
    curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36");
    curl_setopt($ch, CURLOPT_HTTPHEADER, $header); //发送 http 报头
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    $output = curl_exec($ch);
    curl_close($ch);
    return $output;
}
/*取地址*/
function restoreUrl($shortUrl) {
    $header[] = "accept-language: zh-CN,zh;q=0.9";
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $shortUrl);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
    curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36"); //设置UA
    curl_setopt($ch, CURLOPT_NOBODY, 1);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
    curl_exec($ch);
    $info = curl_getinfo($ch, CURLINFO_EFFECTIVE_URL);
    curl_close($ch);
    return $info;
}