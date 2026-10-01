<?php
/*
Name:文本处理方法
Version:1.0
*/

function txt_zhong($str, $leftStr, $rightStr){//取文本中间
	$left = strpos($str, $leftStr);
	$right = strpos($str, $rightStr,$left);
	if($left < 0 or $right < $left) return '';
	return substr($str, $left + strlen($leftStr), $right-$left-strlen($leftStr));
}

function txt_you($str, $leftStr){//取文本右边
	$left = strpos($str, $leftStr);
	return substr($str, $left + strlen($leftStr));
}

function txt_zuo($str, $rightStr){//取文本左边
	$right = strpos($str, $rightStr);
	return substr($str, 0, $right);
}

?>