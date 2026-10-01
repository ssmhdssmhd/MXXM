<?php
/*
Name:文本转数组方法
Version:1.0
*/

function txt_Arr($txt){//文本转数组
	$arr = explode('&', $txt);
	$array = [];
	foreach($arr as $value){
		$tmp_arr = explode('=',$value);
		if(is_array($tmp_arr) && count($tmp_arr) == 2){
			$array = array_merge($array,[$tmp_arr[0]=>$tmp_arr[1]]);
		}
	}
	return $array;
}

?>