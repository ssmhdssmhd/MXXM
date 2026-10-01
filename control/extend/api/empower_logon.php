<?php
/*
Name:二维码登录 
Version:1.0
*/

if(Db::table('empower_logon')->exist()){//判断数据表是否存在
}else{
$sql = "CREATE TABLE `{$DP}empower_logon` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `appid` int(10) NOT NULL COMMENT 'appid',
  `log_in` varchar(32) NOT NULL COMMENT '机器码',
  `t` int(10) NOT NULL COMMENT '登录时间',
  `key` varchar(32) NOT NULL COMMENT '登录IP',
  `user` varchar(32) DEFAULT NULL COMMENT '用户帐号',
  `pwd` varchar(32) DEFAULT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`),
  KEY `appid` (`appid`),
  KEY `log_in` (`log_in`),
  KEY `t` (`t`),
  KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;";
$res = Db::establish($sql);
}
	if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	if($app_res['logon_state']=='n')out(103,rawurlencode($retVal = ($app_res['logon_notice']=="") ? "可能服务器在维护" : $app_res['logon_notice']),$app_res);//判断是否可登录
	//if($app_res['logon_way'] != 0)out(163,$app_res);//不允许账号登录方式
	$log_in = isset($data_arr['markcode']) ? purge($data_arr['markcode']) : '';//机器码
	if($app_res['logon_check_in'] == 'y' && $log_in == '')out(112,rawurlencode('二维码获取失败'),$app_res);//判断是否验证机器码
	
	$fhkg = 0;//扫码防红 0=关闭防红 1=龙珠防红  2=自建防红
	
	if ($fhkg == 1) {
	    $url = 'https://www.lzfh.com/api/dwz.php?cb=1&sturl=2&longurl='.base64_encode($_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST']."/login.php?app=".$appid."&log_in=".$log_in."&t=".$data_arr['t']."&key=".md5(($data_arr['t']+5).$log_in));
	    $curl = curl_init();//初始化 curl
	    curl_setopt($curl, CURLOPT_URL, $url);//要访问网页 URL 地址
	    curl_setopt($curl, CURLOPT_TIMEOUT,6);//数据传输的最大允许时间
	    curl_setopt($curl, CURLOPT_CONNECTTIMEOUT,6); //服务器1秒内没有响应断开连接
	    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 0);//0=不检查 1=检查 SSL 证书来源
	    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);//0=不检查 1=检查 证书中SSL加密算法是否存在
	    curl_setopt($curl, CURLOPT_HEADER, 0);//1=输出 0=不输出	header部分
	    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);//0=输出 1=不输出	到屏幕上
	    $datas = curl_exec($curl); 
	    curl_close($curl);
	    $J = json_decode($datas);
	    $fhurl = $J->dwz_url;
	}else if ($fhkg == 2) {
	   $fhurl = "https://test--vodyy.repl.co/?url=".base64_encode($_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST']."/login.php?app=".$appid."&log_in=".$log_in."&t=".$data_arr['t']."&key=".md5(($data_arr['t']+5).$log_in));
	}
	else{
	    $fhurl = $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST']."/login.php?app=".$appid."&log_in=".$log_in."&t=".$data_arr['t']."&key=".md5(($data_arr['t']+5).$log_in);
	}
	
	$user_info = [
 		'login_url'=>$fhurl,

		't' => $data_arr['t'],//时间戳
		
		'notify' => $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST']."/api.php?act=notify&app=".$appid//查询地址
	];
	$res_add = Db::table('empower_logon')->add(['log_in'=>$log_in,'t'=>$data_arr['t'],'key'=>md5(($data_arr['t']+5).$log_in),'appid'=>$appid]);
	if($res_add){
		$data = ['info'=>$user_info];
	    out(200,$data,$app_res);
	}else{
		out(201,rawurlencode('二维码入库失败'),$app_res);
	}
?>