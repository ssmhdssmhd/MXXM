<?php
/*
Name:取随机字符方法
Version:1.0
*/

function getcode($length){ //取随机字符
	$str = null;  
	//$strPol = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz";
	$strPol = "0213546879";
	$max = strlen($strPol)-1;  
	for($i=0;$i<$length;$i++){
		$str.=$strPol[rand(0,$max)];
	}  
	return $str; 
}

function getcodes($length){ //取随机字符
	$str = null;  
	$strPol = "ЯЮЭЬЫЪЩШЧяюэьыъщшчЦХФУТСРПОНМЛцхфутсрпонмлАБВГДЕЁЖЗИЙКкйизжёедгвбаΩΨΧΦΥΤΣΡΠΟΞΝνξοπρστυφχψωΜΛΚΙΘΗΖΕΔΓΒΑαβγδεζηθικλμ";
	$max = strlen($strPol)-1;  
	for($i=0;$i<$length;$i++){
		$str.=$strPol[rand(0,$max)];
	}  
	return $str; 
}
?>