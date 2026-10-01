<?php
/*
 Name:获取积分兑换
 Version:1.0
*/
	if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	//if($app_res['logon_way'] != 0)out(164,$app_res);//不是账号登录方式不允许使用当前操作
    $pay_res = Db::table("app")->where(["id" => $appid])->find();
    if (!$pay_res)out(201,$app_res);
	if ($pay_res['download1'] == 0) {
        $app_nurl = $pay_res['android_url'];
    }else{
        $app_nurl = $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST']."/".$pay_res['id']."/1.apk";
    }
    $text = ($pay_res['inv_award'] == "vip") ? $pay_res['inv_award_num']."分钟" : $pay_res['inv_award_num']."积分" ;
    $ret = [
        'inv_state' => $pay_res['inv_award_num'],
        'inv_text' => rawurlencode("每分享给1位好友扫码下载APP,输入邀请码,您将得到".$text."奖励!"),
        'inv_url' => $app_nurl
        ];
	out(200,$ret,$app_res);
?>