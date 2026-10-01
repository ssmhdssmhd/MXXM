<?php
/*
 Name:扫码文字提示
 Version:1.0
*/
	if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	$notice_res = Db::table('app_text_notice')->where('appid',$appid)->select();//获取通知列表
	$pay_res = Db::table('app_pay_text')->where('appid',$appid)->find();//获取通知列表
	if(is_array($notice_res)){
		foreach ($notice_res as $k => $v){
		    $rows = $notice_res[$k];
			$ret = [
				'content' => $rows['content'],
				'qr_code_url' => $rows['erweimaurl'],
				/*永久会员二维码*/
				//'long_qr_code_url' => "",
				'long_qr_code_url' => "https://pic1.58cdn.com.cn/nowater/im/n_v3f7dc618c725d4e6eb67ae2eed4440e9e.png",
				'pay_text' => $pay_res['content']
			];
		}
		out(200,$ret,$app_res);
	}out(201,'通知列表加载失败',$app_res);
	
?>