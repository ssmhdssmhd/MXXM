<?php
/*
Name:白名单数组互转
Version:1.0
*/

function Arr_whitelist($arr,$t=1){
	$txt_arr = '';
	if($t == 1){
		foreach ($arr as $k) {
			if($k == reset($arr)){
				$txt_arr = $k;
			}else{
				$txt_arr = $txt_arr.",".$k;
			}
		}
	}
	return $txt_arr;
}

function whitelist_Arr($arr,$t=1){
	$arr_txt = explode(',',$arr);
	$txt_arr = '';
	$i=0;
	if($t == 1){
		foreach ($arr_txt as $k) {
			$i++;
			if(empty($k))continue;
			if($k == end($arr_txt) && $i == count($arr_txt)){
				$txt_arr = $txt_arr."'".$k ."'";
			}else{
				$txt_arr = $txt_arr."'". $k ."'". ',';
			}
		}
	}
	return $txt_arr;
}

?>