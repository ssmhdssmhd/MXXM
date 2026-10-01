<?php
/*
Name:匹配手机号方法
Version:1.0
*/

function check_phone($phone){//匹配手机号
	return preg_match('#^13[\d]{9}$|^14[5,6,7,8,9]{1}\d{8}$|^15[^4]{1}\d{8}$|^16[6]{1}\d{8}$|^17[0,1,2,3,4,5,6,7,8]{1}\d{8}$|^18[\d]{9}$|^19[8,9]{1}\d{8}$#',$phone) ? true : false;
}

?>