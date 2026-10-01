<?php
/*
Name:json输出方法
Version:1.0
*/

function json($code,$msg) {//json输出
	$udata = array('code'=>$code,'msg'=>$msg);
	$jdata = json_encode($udata);
	echo $jdata;
	exit;
}

?>