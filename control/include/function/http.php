<?php
/*
 Name:http方法
 Version:1.0
*/

function http_post($url,$data =null,$ua='') {//发送httppost请求
	require_once FCPATH.'include/class/HttpCurl.php';
	$http = new HttpCurl();
	if(!empty($ua)){
		$result = $http->userAgent($ua)->post($url,$data);
	}else{
		$result = $http->post($url,$data);
	}
	return $result;
}

function http_gets($url,$data =null) {//发送httpget请求
	require_once FCPATH.'include/class/HttpCurl.php';
	$http = new HttpCurl();
	$result = $http->get($url,$data);
	return $result;
}

?>