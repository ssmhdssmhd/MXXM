<?php
/*
Name:净化参数方法
Version:1.0
*/

function purge($string,$trim = true,$filter = true,$force = 0, $strip = FALSE) {//递归addslashes  对参数进行净化
	$encode = mb_detect_encoding($string,array("ASCII","UTF-8","GB2312","GBK","BIG5"));
	if($encode != 'UTF-8'){
		$string = iconv($encode,'UTF-8',$string);
	}
	if($trim){$string=preg_replace('/\s+/','',$string);}
	if($filter){
		$farr = array(
			"/<(\\/?)(script|i?frame|style|html|body|title|link|meta|object|\\?|\\%)([^>]*?)>/isU",
			"/(<[^>]*)on[a-zA-Z]+\s*=([^>]*>)/isU",
			"/select |insert |and |or |create |update |delete |alter |count |\'|\/\*|\*|\.\.\/|\.\/|\^|union |into |load_file|outfile |dump/is"
		);
		$string = preg_replace($farr,'',$string);
	}
	!defined('MAGIC_QUOTES_GPC') && define('MAGIC_QUOTES_GPC', get_magic_quotes_gpc());
	if(!MAGIC_QUOTES_GPC || $force) {
		if(is_array($string)) {
			foreach($string as $key => $val) {
				$string[$key] = purge($val, $force, $strip);
			}
		} else {
			$string = addslashes($strip ? stripslashes($string) : $string);
		}
	}
	
	return $string;
}

?>