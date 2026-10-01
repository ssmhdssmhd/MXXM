<?php
/*
Name:匹配邮箱方法
Version:1.0
*/

function check_email($email){//匹配邮箱
	return preg_match('/^[a-z0-9]+([._-][a-z0-9]+)*@([0-9a-z]+\.[a-z]{2,14}(\.[a-z]{2})?)$/i',$email) ? true : false;
}

?>