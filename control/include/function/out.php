<?php
/*
Name:数据输出方法
Version:1.0
*/

function out($code,$msg = null,$mi = null) {//输出结果
	if($msg && is_array($msg) && isset($msg['mi_state']) && isset($msg['mi_type'])){$mi = $msg;$msg = null;}
	if(!$msg && !is_array($msg)){
		require_once FCPATH.'include/lang/lang_msg.php';//返回数组
		$msg = $lang_msg[$code];
	}
	if(DEFAULT_RETURN_TYPE == 0){
		if($mi && is_array($mi) && isset($mi['mi_state']) && isset($mi['mi_type'])){
			if($mi['mi_state'] == 'y' && $mi['mi_type'] ==1){
				if(is_array($msg)){$msg = json_encode($msg);}
				$msg = mi_rc4($msg,$mi['mi_rc4_key']);
			}elseif($mi['mi_state'] == 'y' && $mi['mi_type'] ==2){
				if(is_array($msg)){$msg = json_encode($msg);}
				$msg = RSA_SMI($msg,$mi['mi_rsa_private_key']);
			}elseif($mi['mi_state'] == 'y' && $mi['mi_type'] ==3){
				if(is_array($msg)){$msg = json_encode($msg);}
				$msg = AESencrypt($msg,$mi['mi_aes_key'],$mi['mi_aes_iv']);
			}
		}
		$jdata = array('code'=>$code,'msg'=>$msg,'time'=>time());
		$data = json_encode($jdata);
	}elseif(DEFAULT_RETURN_TYPE == 1){
		require_once FCPATH.'include/class/Xml.php';//引入类配置信息
		header("Content-type:text/xml");//输出xml头信息
		$xml = new Array_to_Xml();//实例化类
		if($mi && is_array($mi) && isset($mi['mi_state']) && isset($mi['mi_type'])){
			if($mi['mi_state'] == 'y' && $mi['mi_type'] ==1){
				if(is_array($msg)){$msg = $xml->toXml($msg);}
				$msg = mi_rc4($msg,$mi['mi_rc4_key']);
			}elseif($mi['mi_state'] == 'y' && $mi['mi_type'] ==2){
				if(is_array($msg)){$msg = $xml->toXml($msg);}
				$msg = RSA_SMI($msg,$mi['mi_rsa_private_key']);
			}
		}
		$res = array('code'=>$code,'msg'=>$msg,'time'=>time());
		$data = $xml->toXml($res);//转为数组 
	}
	echo $data;
	exit;
}

?>