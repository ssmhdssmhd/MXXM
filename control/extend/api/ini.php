<?php
/*
 Name:获取配置
 Version:1.0
*/
	if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	$app_bb = $app_res['android_bb'];//APP版本
	$app_nshow = $app_res['android_show'];//更新内容
	$analysis_set = Db::table("analysis_set")->where(["id" => 1])->find();
	if ($app_res['downloadtype1'] == 0) {//直连
	    $app_nurl = $app_res['android_url'];//更新地址
	}else{
	    $app_nurl = $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST']."/".$app_res['id']."/1.apk";//更新地址
	}
	
	
	$ini_data = [//基本配置
		'app_bb'=>$app_bb,
		'app_nshow'=>$app_nshow,
		'app_nurl'=>$app_nurl,
		'compel'=> $analysis_set['Force_Upgrade']
	];
	
	
	$app_exten = [];
	$app_exten_res = Db::table('app_exten')->where('appid',$appid)->order('id desc')->select();//获取扩展配置
	foreach ($app_exten_res as $k => $v){$rows = $app_exten_res[$k];
		$app_exten = array_merge($app_exten,[$rows['name']=>$rows['data']]);
	}
	if(count($app_exten) > 0){
		$ini_data = array_merge($ini_data,['exten'=>$app_exten]);
	}
	
	if(isset($pay_ini) && is_array($pay_ini)){
		$ini_data = array_merge($ini_data,['pay'=>$pay_ini]);
	}
	out(200,$ini_data);
?>