<?php
/*
 Name:邮箱找回密码
 Version:1.0
*/
	if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	if($app_res['smtp_state']=='n' && $app_res['sms_state'] =='n')out(121,rawurlencode('找回功能尚未开启'),$app_res);//判断邮箱是否可用
	//if($app_res['logon_way'] != 0)out(164,$app_res);//不是账号登录方式不允许使用当前操作
	
	$email = isset($data_arr['email']) && !empty($data_arr['email']) ? purge($data_arr['email']) : out(110,rawurlencode('请输入账号'),$app_res);//请输入账号
	$crc = isset($data_arr['crc']) && !empty($data_arr['crc']) ? intval($data_arr['crc']) : out(120,rawurlencode('请输入验证码'),$app_res);//验证码为空
	$newpwd = isset($data_arr['newpassword']) && !empty($data_arr['newpassword']) ? purge($data_arr['newpassword']) : out(111,rawurlencode('请输入新密码'),$app_res);//请输入密码
	
	if (check_phone($email)) {
	    $user = "phone";
	}
	if (check_email($email)){
	    $user = "email";
	}
	
	if (!check_email($email) && !check_phone($email)) {
	    out(116,rawurlencode('手机/邮箱不合法'),$app_res);//账号长度5~11位，不支持中文和特殊字符
	}
	
	if (preg_match ("/^[a-zA-Z\d.*_-]{6,18}$/",$newpwd)==0) out(119,rawurlencode("密码6-18位,不支持中文及特殊字符"),$app_res);//密码长度6~18位
	
	if ($user == "phone") {
	    $res_user = Db::table('user')->where(['phone'=>$email,'appid'=>$appid])->find();//false
	    $res_code = Db::table('captcha')->where(['phone'=>$email,'code'=>$crc,'new'=>'y','appid'=>$appid])->order('id DESC')->find();//false
	}
	if ($user == "email") {
	    $res_user = Db::table('user')->where(['email'=>$email,'appid'=>$appid])->find();//false
	    $res_code = Db::table('captcha')->where(['email'=>$email,'code'=>$crc,'new'=>'y','appid'=>$appid])->order('id DESC')->find();//false
	}
	
	if(!$res_user)out(122,rawurlencode('账号不存在'),$app_res);//账号不存在
	
	if($res_user['ban'] == 999999999)out(114,rawurlencode($retVal = ($res_user['ban_notice']=="")? "未知 永不解锁!":$res_user['ban_notice']." 永不解锁!"),$app_res);//账号被禁用
		
    if($res_user['ban'] > time())out(114,rawurlencode($retVal = ($res_user['ban_notice']=="") ? "未知 ".date("Y-m-d H:i:s",$res_user['ban'])."解锁!" : $res_user['ban_notice']." ".date("Y-m-d H:i:s",$res_user['ban'])."解锁!"),$app_res);//账号被禁用
	
	if(!$res_code)out(124,rawurlencode('验证码不正确'),$app_res);//验证码不正确
	
	Db::table('captcha')->where('id',$res_code['id'])->update(['new'=>'n']);

    $res = Db::table('user')->where('id',$res_user['id'])->update(['pwd'=>md5($newpwd)]);
    
    /*清除风险*/
    Db::table('analysis_log')->where(['appid'=>$appid, 'user' => $res_user['user']])->update(['Risk_number'=> 0]);
    $resanalysis_set = Db::table('analysis_set','as A')->field('A.*')->find();
    $redis = new Redis();
    $redis->connect($resanalysis_set['Log_Redis_Address'], $resanalysis_set['Log_Redis_Port']);
    $redis->select($resanalysis_set['Log_RedisDB']);
    $redis->hMSet('analysis_log:' . $res_user['user'] . ':' . $appid, ['Risk_number' => 0]);
    
	if($res){
		if(defined('USER_LOG') && USER_LOG == 1){Db::table('log')->add(['uid'=>$res_user['id'],'type'=>$act,'status'=>200,'time'=>time(),'ip'=>getip(),'appid'=>$appid]);}//记录日志
		out(200,rawurlencode('找回成功,请牢记密码'),$app_res);
	}else{
		if(defined('USER_LOG') && USER_LOG == 1){Db::table('log')->add(['uid'=>$res_user['id'],'type'=>$act,'status'=>201,'time'=>time(),'ip'=>getip(),'appid'=>$appid]);}//记录日志
		out(201,rawurlencode('找回失败,新密码可能与旧密码相同'),$app_res);
	}
?>