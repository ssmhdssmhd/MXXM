<?php
/*
Name:RSA方法
Version:1.0
*/



function RSA_GMI($data,$key,$t=0) {//RSA公钥加解密
	require_once FCPATH.'include/class/Rsa.php';//引入RSA加解密类
	if($t == 0){
		$mi_data = Rsa::publicEncrypt($data,$key);//使用公钥将数据加密
	}else{
		$mi_data = Rsa::publicDecrypt($data,$key);//使用公钥将数据解密
	}
	return $mi_data;
}

function RSA_SMI($data,$key,$t=0) {//RSA私钥加解密
	require_once FCPATH.'include/class/Rsa.php';//引入RSA加解密类
	if($t == 0){
		$mi_data = Rsa::privateEncrypt($data,$key);//使用私钥将数据加密
	}else{
		$mi_data = Rsa::privateDecrypt($data,$key);//使用私钥将数据解密
	}
	return $mi_data;
}

?>