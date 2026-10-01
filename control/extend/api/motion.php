<?php
/*
 Name:运动/心跳
 Version:1.0
*/
	if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	//if($app_res['logon_way'] != 0)out(164,$app_res);//不是账号登录方式不允许使用当前操作
	
	        /*免费模式：免登录直接放行*/
        if ($app_res['mode'] != "y") {
            $analysis_set = Db::table("analysis_set")->where(["id" => 1])->find();
            $info = [
                'vip' => "999999999",
                'Try' => 1,
                'Clientmode' => intval($analysis_set['Submission'])
            ];
            out(200,$info,$app_res);
        }

$token = isset($data_arr['token']) && !empty($data_arr['token']) ? purge($data_arr['token']) : out(125,$app_res);//请输TOKEN
	
	$res_logon = Db::table('user_logon','as logon')->field('U.*')->JOIN('user','as U','logon.uid=U.id')->where('logon.appid',$appid)->where('U.appid',$appid)->where('logon.token',$token)->find();//false
	if(!$res_logon)out(127,$app_res);//TOKEN不存在或已失效
	if($res_logon['ban'] > time() || $res_logon['ban'] == 999999999)out(114,$res_logon['ban_notice'],$app_res);//账号被禁用
	
	$res = Db::table('user_logon')->where('token',$token)->update(['last_t'=>time()]);//记录活动时间
	
	$analysis_set = Db::table("analysis_set")->where(["id" => 1])->find();
	
	/*检查收费模式*/
	if ($app_res['mode'] =="y") {
	    /*试看已开启*/
        if (Trystate == 1) {//从数据库提取
            /*可试看*/
            $try = 1;
            /*查询会员时间*/
            $viptime = $res_logon['vip'];
	    }else{
	        /*是会员*/
	        /*试看未开启*/
	        if ($res_logon['vip'] == "999999999" || $res_logon['vip'] > time()) {
	            /*可试看*/
	            $try = 1;
	            /*查询会员时间*/
	            $viptime = $res_logon['vip'];
	        }else{
	            /*不是会员*/
	            /*不可试看*/
	            $try = 0;
	            /*查询会员时间*/
	            $viptime = $res_logon['vip'];
	        }
	    }
    }else{
        /*免费模式*/
        /*可试看*/
        $try = 1;
        /*查询会员时间*/
        $viptime = "999999999";
    }
    
	$info = [
	    /*会员时间*/
		'vip' => $viptime,
		/*试看状态*/
		'Try' => intval($analysis_set['Try']),
		/*解析提交方式*/
		'Clientmode'=> intval($analysis_set['Submission'])
	];
	
	if($res){
		out(200,$info,$app_res);
	}else{
		out(201,$app_res);
	}
?>