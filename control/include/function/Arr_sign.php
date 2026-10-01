<?php
/*
Name:数组签名方法
Version:1.0
*/

function Arr_sign($arr,$key,$md5 = true){//数组签名
	unset($arr['sign']);
	unset($arr['app']);
	unset($arr['act']);
	$sign='';
	foreach ($arr as $k => $v) {
		$sign = $sign.$k . '='. $v .'&';
	}
	$sign = $sign.$key;
	if($md5){
		return md5($sign);
	}else{
		return $sign;
	}
}

?>