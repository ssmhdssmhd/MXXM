<?php
/*
 Name：Global.php
 Version:1.0
*/	
	header("content-type:text/html; charset=utf-8");
	require_once "config.php";//引入配置信息
	require_once "db.class.php";//引入数据库类
	require_once "lang/lang_cp.php";//引入日志配置
	require_once "lang/lang_whitelist.php";//白名单入口
	
	if (APP_DEBUG == 0) {error_reporting(0);}//关闭错误报告
	date_default_timezone_set(DEFAULT_TIMEZONE);//默认时区
	
	if (defined("DB_PRE")) {$DP = DB_PRE;} else {$DP = "";}
	if (defined("DATA_PAGE_ENUMS")) {$ENUMS = DATA_PAGE_ENUMS;} else {$ENUMS = 10;}
	if (defined("USER_TOKEN_TIME")) {$UTT = time() - USER_TOKEN_TIME;} else {$UTT = time() - 1800;}
	
	$file_arr = scandir(FCPATH . "include/function");
	foreach ($file_arr as $item) {
		if (is_file(FCPATH . "include/function/" . $item) && $item != ".." && $item != ".") {
			require_once "function/" . $item;
		}
	}
	
	session_start();
	function getPluginData($FilePath) {
		$file_arr = myScanDir(FCPATH.ADM_EXTEND_MULU.$FilePath.'/view',2);
		$nav_arr = [];
		foreach($file_arr as $val){
			$Data = implode('', file(FCPATH.ADM_EXTEND_MULU.$FilePath.'/view/'.$val));
			preg_match("/Sort:(.*)/i", $Data, $sort);
			preg_match("/Hidden:(.*)/i", $Data, $hidden);
			preg_match("/icons:(.*)/i", $Data, $icons);
			preg_match("/Name:(.*)/i", $Data, $name);
			preg_match("/Url:(.*)/i", $Data, $url);
			preg_match("/Right:(.*)/i", $Data, $right);
			$sort = isset($sort[1]) ? strip_tags(trim($sort[1])) : '';
			$hidden = isset($hidden[1]) ? strip_tags(trim($hidden[1])) : '';
			$icons = isset($icons[1]) ? strip_tags(trim($icons[1])) : '';
			$name = isset($name[1]) ? strip_tags(trim($name[1])) : '';
			$url = isset($url[1]) ? strip_tags(trim($url[1])) : '';
			$right = isset($right[1]) ? strip_tags(trim($right[1])) : '';
			//if($hidden == 'true')continue;
			$nav_arr[] = ['name' => $name,'file' => $url,'icons'=>$icons,'right' => $right,'sort' => $sort,'hidden' => $hidden];
		}
		$sortKey =  array_column($nav_arr,'sort');
		array_multisort($sortKey,SORT_ASC,$nav_arr);
		return $nav_arr;
	}