<?php
/*
Name:数组维度判断方法
Version:1.0
*/

function foreachArray($array = [], $count = 0){//数组维度判断
	if (!is_array($array)){
		return $count;
	}
	foreach ($array as $value){
		$count++;
		if (!is_array($value)){
			return $count;
		}
		return foreachArray($value, $count);
	}
}

?>