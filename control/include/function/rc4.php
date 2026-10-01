<?php
/*
Name:rc4方法
Version:1.0
*/

function mi_rc4($data,$pwd,$t=0) {//t=0加密，1=解密
	$cipher = '';
	$key[] = "";
	$box[] = "";
	$pwd=mi_rc4_encode($pwd);
	$data=mi_rc4_encode($data);
	$pwd_length = strlen($pwd);
	if($t == 1){
		$data = hex2bin($data);
	}
	$data_length = strlen($data);
	for ($i = 0; $i < 256; $i++) {
		$key[$i] = ord($pwd[$i % $pwd_length]);
		$box[$i] = $i;
	}
	for ($j = $i = 0; $i < 256; $i++) {
		$j = ($j + $box[$i] + $key[$i]) % 256;
		$tmp = $box[$i];
		$box[$i] = $box[$j];
		$box[$j] = $tmp;
	}
	for ($a = $j = $i = 0; $i < $data_length; $i++) {
		$a = ($a + 1) % 256;
		$j = ($j + $box[$a]) % 256;
		$tmp = $box[$a];
		$box[$a] = $box[$j];
		$box[$j] = $tmp;
		$k = $box[(($box[$a] + $box[$j]) % 256)];
		$cipher .= chr(ord($data[$i]) ^ $k);
	}
	if($t == 1){
		return $cipher;
	}else{
		return bin2hex($cipher);
	}
}

function mi_rc4_encode($str,$turn = 0){//turn=0,utf8转gbk,1=gbk转utf8
	if(is_array($str)){
		foreach($str as $k => $v){
			$str[$k] = array_iconv($v);
		}
		return $str;
	}else{
		if(is_string($str) && $turn == 0){
			return mb_convert_encoding($str,'GBK','UTF-8');
		}elseif(is_string($str) && $turn == 1){
			return mb_convert_encoding($str,'UTF-8','GBK');
		}else{
			return $str;
		}
	}
}

function mi_rc4s($data,$pwd,$t=0) {//t=0加密，1=解密
	$cipher = '';
	$key[] = "";
	$box[] = "";
	$pwd_length = strlen($pwd);
	if($t == 1){
		$data = hex2bin($data);
	}
	$data_length = strlen($data);
	for ($i = 0; $i < 256; $i++) {
		$key[$i] = ord($pwd[$i % $pwd_length]);
		$box[$i] = $i;
	}
	for ($j = $i = 0; $i < 256; $i++) {
		$j = ($j + $box[$i] + $key[$i]) % 256;
		$tmp = $box[$i];
		$box[$i] = $box[$j];
		$box[$j] = $tmp;
	}
	for ($a = $j = $i = 0; $i < $data_length; $i++) {
		$a = ($a + 1) % 256;
		$j = ($j + $box[$a]) % 256;
		$tmp = $box[$a];
		$box[$a] = $box[$j];
		$box[$j] = $tmp;
		$k = $box[(($box[$a] + $box[$j]) % 256)];
		$cipher .= chr(ord($data[$i]) ^ $k);
	}
	if($t == 1){
		return $cipher;
	}else{
		return base64_encode($cipher);
	}
}

?>