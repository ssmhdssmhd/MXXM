<?php
/*
 Name:二维码回调
 Version:1.0
*/
	if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	//if($app_res['logon_way'] != 0)out(164,$app_res);//不是账号登录方式不允许使用当前操作
	
	$oin = isset($data_arr['oin']) && !empty($data_arr['oin']) ? purge($data_arr['oin']) : out(140,rawurlencode('登录帐号不存在'),$app_res);//订单信息，可以是订单号也可以是用户账号
	$time = isset($data_arr['time']) && !empty($data_arr['time']) ? purge($data_arr['time']) : out(140,rawurlencode('登录订单不存在'),$app_res);//订单信息，可以是订单号也可以是用户账号
	
	if($time < (time()-180))out(123,rawurlencode('二维码已过期,请重新扫码登录'),$app_res);//验证码频率过快
	

	$res_user = Db::table('empower_logon')->where(['log_in'=>$oin,'t'=>$time,'appid'=>$appid])->find();//false
	
	if($res_user){
		$user_info = [
		'user'=>$res_user['user'],
		'pwd'=>$res_user['pwd']
	];
		out(200,$user_info,$app_res);
	}out(201,rawurlencode('未查询到登录信息'),$app_res);
	
	
	
?>