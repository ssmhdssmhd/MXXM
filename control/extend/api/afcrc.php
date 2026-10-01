<?php
/*
 Name:请求验证码
 Version:1.0
*/
	if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	if($app_res['smtp_state']=='n' && $app_res['sms_state'] =='n')out(121,rawurlencode('验证码尚未开启'),$app_res);//判断邮箱是否可用
	//if($app_res['logon_way'] != 0)out(164,$app_res);//不是账号登录方式不允许使用当前操作
	
	$email = isset($data_arr['email']) && !empty($data_arr['email']) ? purge($data_arr['email']) : out(110,rawurlencode('手机/邮箱为空'),$app_res);//请输入账号
	$type = isset($data_arr['type']) ? purge($data_arr['type']) : 'reg';//验证码类型,reg=注册，seek=找回密码
	
	if (check_phone($email)) {
	    $user = "phone";
	}
	if (check_email($email)){
	    $user = "email";
	}
	
	if (!check_email($email) && !check_phone($email)) {
	    out(116,rawurlencode('手机/邮箱不合法'),$app_res);//账号长度5~11位，不支持中文和特殊字符
	}
	
	$code = mt_rand(1000,9999);//生成验证码
	if($type == '' or $type == 'reg'){
		if($app_res['reg_state']=='n')out(103,$app_res['reg_notice'],$app_res);//判断是否可注册
		if ($user == "phone") {
	        $res_user = Db::table('user')->where(['phone'=>$email,'appid'=>$appid])->find();//false
	    }
	    if ($user == "email") {
	       $res_user = Db::table('user')->where(['email'=>$email,'appid'=>$appid])->find();//false
	    }
		if($res_user)out(115,'您的邮箱已经注册过账号了',$app_res);//账号已存在
		$title = $app_res['name'].'注册账号';
		$muban = "您注册账号的验证码是：".$code."，请不要把验证码泄露给其他人<br/>【".$app_res['name']."】";
	}else if($type == 'seek'){
	    
	    if ($user == "phone") {
	        $res_user = Db::table('user')->where(['phone'=>$email,'appid'=>$appid])->find();//false
	        if(!$res_user)out(122,rawurlencode('手机不存在'),$app_res);//账号不存在
	        $title = $app_res['name'].'找回密码';
		    $muban = "您找回密码的验证码是：".$code."，请不要把验证码泄露给其他人<br/>【".$app_res['name']."】";
	    }
	    
	    if ($user == "email") {
	        $res_user = Db::table('user')->where(['email'=>$email,'appid'=>$appid])->find();//false
	        if(!$res_user)out(122,rawurlencode('邮箱不存在'),$app_res);//账号不存在
	        $title = $app_res['name'].'找回密码';
		    $muban = "您找回密码的验证码是：".$code."，请不要把验证码泄露给其他人<br/>【".$app_res['name']."】";
	    }
		
		if($res_user['ban'] == 999999999)out(114,rawurlencode($retVal = ($res_user['ban_notice']=="")? "未知 永不解锁!":$res_user['ban_notice']." 永不解锁!"),$app_res);//账号被禁用
		
	    if($res_user['ban'] > time())out(114,rawurlencode($retVal = ($res_user['ban_notice']=="") ? "未知 ".date("Y-m-d H:i:s",$res_user['ban'])."解锁!" : $res_user['ban_notice']." ".date("Y-m-d H:i:s",$res_user['ban'])."解锁!"),$app_res);//账号被禁用
	    
		if(defined('USER_LOG') && USER_LOG == 1){
			Db::table('log')->add(['uid'=>$res_user['id'],'type'=>$act,'time'=>time(),'ip'=>getip(),'appid'=>$appid]);//记录日志
		}
		
	}else if($type == 'untie'){
	    
	    if ($user == "phone") {
	        $res_user = Db::table('user')->where(['phone'=>$email,'appid'=>$appid])->find();//false
	        if(!$res_user)out(122,rawurlencode('手机不存在'),$app_res);//邮箱不存在
	        $title = $app_res['name'].'解绑手机';
		    $muban = "您解绑手机的验证码是：".$code."，请不要把验证码泄露给其他人<br/>【".$app_res['name']."】";
	    }
	    
	    if ($user == "email") {
	       $res_user = Db::table('user')->where(['email'=>$email,'appid'=>$appid])->find();//false
	       if(!$res_user)out(122,rawurlencode('邮箱不存在'),$app_res);//邮箱不存在
	       $title = $app_res['name'].'解绑邮箱';
		    $muban = "您解绑邮箱的验证码是：".$code."，请不要把验证码泄露给其他人<br/>【".$app_res['name']."】";
	    }
	    
		if( $res_user['ban'] == 999999999)out(114,rawurlencode($retVal = ($res_user['ban_notice'] == "")? "未知 永不解锁!":$res_user['ban_notice']." 永不解锁!"),$app_res);//账号被禁用
		
	    if($res_user['ban'] > time())out(114,rawurlencode($retVal = ($res_user['ban_notice'] == "") ? "未知 ".date("Y-m-d H:i:s",$res_user['ban'])."解锁!" : $res_user['ban_notice']." ".date("Y-m-d H:i:s",$res_user['ban'])."解锁!"),$app_res);//账号被禁用
	    
		if(defined('USER_LOG') && USER_LOG == 1){
			Db::table('log')->add(['uid'=>$res_user['id'],'type'=>$act,'time'=>time(),'ip'=>getip(),'appid'=>$appid]);//记录日志
		}
		
	}else if($type == 'bind'){
	    
	    if ($user == "phone") {
	        $res_user = Db::table('user')->where(['phone'=>$email,'appid'=>$appid])->find();//false
	        if($res_user)out(115,rawurlencode('该手机已被其他帐号绑定'),$app_res);//账号已存在
	        $title = $app_res['name'].'绑定手机';
		    $muban = "您绑定手机的验证码是：".$code."，请不要把验证码泄露给其他人<br/>【".$app_res['name']."】";
	    }
	    
	    if ($user == "email") {
	        $res_user = Db::table('user')->where(['email'=>$email,'appid'=>$appid])->find();//false
	        if($res_user)out(115,rawurlencode('该邮箱已被其他帐号绑定'),$app_res);//账号已存在
	        $title = $app_res['name'].'绑定邮箱';
		    $muban = "您绑定邮箱的验证码是：".$code."，请不要把验证码泄露给其他人<br/>【".$app_res['name']."】";
	    }
	}
	
	if ($user == "phone") {
	    $res_code = Db::table('captcha')->where(['phone'=>$email,'appid'=>$appid])->order('id DESC')->find();//false
    	if($res_code && $res_code['time'] > time() - 180)out(123,rawurlencode('验证码频繁,稍后在试'),$app_res);//验证码频率过快
    	/*短信验证码模块暂不开发*/
    // 	$config = array();
    // 	$config['sms_key']  = $app_res['sms_key'];//短信密钥
    // 	$config['sms_to']    = $email;//收信人
    // 	if($app_res['sms_state'] == 'n' or $app_res['sms_key'] == '')out(201,rawurlencode('短信验证码不可用'),$app_res);
    // 	$rs = send_phone($config['sms_to'],$app_res['sms_key'],$title,$muban);
    // 	if ($rs) {
    // 	    $time = time();
    // 		$add_res = Db::table('captcha')->add(['phone'=>$email,'code'=>$code,'time'=>$time,'appid'=>$appid]);
    // 		if($add_res){
    // 			out(200,rawurlencode('发送成功'),$app_res);//验证码发送成功
    // 		}out(201,rawurlencode('验证码入库失败'),$app_res);//验证码发送失败
    // 	}else {
    // 		out(201,rawurlencode('发送失败'),$app_res);//验证码发送失败
    // 	}
    
        out(201,rawurlencode('暂不支持短信,请使用邮箱!'),$app_res);//验证码发送成功
	}
    if ($user == "email") {
        $res_code = Db::table('captcha')->where(['email'=>$email,'appid'=>$appid])->order('id DESC')->find();//false
    	if($res_code && $res_code['time'] > time() - 180)out(123,rawurlencode('验证码频繁,稍后在试'),$app_res);//验证码频率过快
    	$config = array();
    	$config['from_email']  = $app_res['smtp_user'];//发信邮箱
    	$config['smtp_user']   = $app_res['smtp_user'];//发信邮箱
    	$config['smtp_port']   = $app_res['smtp_port'];//发信端口
    	$config['smtp_host']   = $app_res['smtp_host'];//发信服务器
    	$config['from_name']   = $app_res['name'];//发信标题
    	$config['smtp_pass']   = $app_res['smtp_pass'];//发信密码
    	$config['reply_email'] = $app_res['smtp_user'];//回复电子邮件
    	$config['reply_name']  = $app_res['name'];//回复名称
    	$config['email_to']    = $email;//收信人
    	if($app_res['smtp_user'] == '' or $app_res['smtp_pass'] == '' or $app_res['smtp_state']=='n')out(201,rawurlencode('邮箱验证码不可用'),$app_res);
    	$rs = send_mail($config['email_to'],$app_res['name'],$title,$muban,'',$config);
    	if ($rs) {
    		$time = time();
    		$add_res = Db::table('captcha')->add(['email'=>$email,'code'=>$code,'time'=>$time,'appid'=>$appid]);
    		if($add_res){
    			out(200,rawurlencode('发送成功'),$app_res);//验证码发送成功
    		}out(201,rawurlencode('验证码入库失败'),$app_res);//验证码发送失败
    	} else {
    		out(201,rawurlencode('发送失败'),$app_res);//验证码发送失败
    	}
    }
?>