<?php
/*
Name:取时间范围方法
Version:1.0
*/

function timeRange($day = 0,$type = 0,$date = false){
	$startFix = ' 00:00:00';
	$endFix = ' 23:59:59';
	$res = date('Y-m-d', strtotime($day.' day')).(($type==0) ? $startFix : $endFix);
	if($date == true){
		return $res;
	}else{
		return strtotime($res);
	}
}

?>