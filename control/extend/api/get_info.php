<?php
/*
 Name:获取用户信息
 Version:1.0
*/
	if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	//if($app_res['logon_way'] != 0)out(164,$app_res);//不是账号登录方式不允许使用当前操作
	
	$token = isset($data_arr['token']) && !empty($data_arr['token']) ? purge($data_arr['token']) : out(125,$app_res);//请输TOKEN
	
	$res_logon = Db::table('user_logon','as logon')->field('U.*')->JOIN('user','as U','logon.uid=U.id')->where('U.appid',$appid)->where('logon.token',$token)->find();//false
	
	if(!$res_logon)out(127,$app_res);//TOKEN不存在或已失效
	if($res_logon['ban'] > time())out(114,$res_logon['ban_notice'],$app_res);//账号被禁用
	Db::table('user_logon')->where('token',$token)->update(['last_t'=>time()]);//记录活动时间
	//if($app_res['mode'] == 'y'){$vip = $res_logon['vip'];}else{$vip = '2147483647';}//免费模式有商品
	if($app_res['mode'] == 'y'){$vip = $res_logon['vip'];}else{$vip = '999999999';}//判断当前收费模式
	if($app_res['diary_award_num'] > 0){
		$res = Db::table('log')->where(['uid'=>$res_logon['id'],'type'=>'clock'])->where('time','between',[timeRange('t_a'),timeRange('t_b')])->find();
		$diary = ($res)?'n':'y';
	}else{
		$diary = 'y';
	}
	if ($res_logon['inv']==0) {
	    $code = mt_rand(0,9999999);//生成邀请码
	    $add_res = Db::table('user')->where('user',$res_logon['user'])->where('appid',$appid)->update(['inv'=>$code]);
	    $inv=$code;
	}else{
	    $inv = $res_logon['inv'];
	}
	
	
	$user_info = [
		'vip'=>$vip,
		'fen'=>$res_logon['fen'],
		'inv'=>$inv
	];
	out(200,$user_info,$app_res);
?>