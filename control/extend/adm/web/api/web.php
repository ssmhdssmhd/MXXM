<?php
/*
Name:系统配置API
Version:1.1
*/
	if(!isset($islogin))header("Location: /");//非法访问
	
	/*系统设置*/
	if($act == 'set'){
		$app_debug = isset($_POST['app_debug']) ? intval($_POST['app_debug']) : 0;
		$default_return_type = isset($_POST['default_return_type']) ? intval($_POST['default_return_type']) : 0;
		$user_token_time = isset($_POST['user_token_time']) ? intval($_POST['user_token_time']) : 0;
		$data_page_enums = isset($_POST['data_page_enums']) ? intval($_POST['data_page_enums']) : 0;
		$default_timezone = isset($_POST['default_timezone']) ? purge($_POST['default_timezone']) : '';
		$index_template = isset($_POST['index_template']) ? purge($_POST['index_template']) : '';
		$api_extend_mulu = isset($_POST['api_extend_mulu']) ? purge($_POST['api_extend_mulu']) : '';
		$adm_extend_mulu = isset($_POST['adm_extend_mulu']) ? purge($_POST['adm_extend_mulu']) : '';
		$user_pic_mulu = isset($_POST['user_pic_mulu']) ? purge($_POST['user_pic_mulu']) : '';
		$adm_log = isset($_POST['adm_log']) ? intval($_POST['adm_log']) : 0;
		$user_log = isset($_POST['user_log']) ? intval($_POST['user_log']) : 0;
		$log_del = isset($_POST['log_del']) ? intval($_POST['log_del']) : 0;
		$log_key = isset($_POST['log_key']) ? purge($_POST['log_key']) : '';
		//------ add by xg@20250818----------------
		$empower = $_POST['empower'] ? $_POST['empower'] : '';
		$timemsg = $_POST['timemsg'] ? $_POST['timemsg'] : '';
    	$Cache_key = $_POST['Cache_key'] ? $_POST['Cache_key'] : '';
    	$Cosaddress = $_POST['Cosaddress'] ? $_POST['Cosaddress'] : '';
    	$Mainaddress = $_POST['Mainaddress'] ? $_POST['Mainaddress'] : '';
    	$Serveruser = $_POST['Serveruser'] ? $_POST['Serveruser'] : '';
    	$Serverpwd = $_POST['Serverpwd'] ? $_POST['Serverpwd'] : '';
    	$Cache_time = isset($_POST['Cache_time']) ? intval($_POST['Cache_time']) : 0;

		if($user_token_time == '')json(201,'用户在线状态有效期有误');
		if($default_timezone == '')json(201,'系统时区有误');
		if($api_extend_mulu == '')json(201,'接口扩展目录有误');
		if($adm_extend_mulu == '')json(201,'后台扩展目录有误');
		if($user_pic_mulu == '')json(201,'用户头像目录有误');
		if($log_key == '')json(201,'日志key不可为空');

		
		$userdata = file_get_contents('../include/config.php');

		$userdata = preg_replace("/\'APP_DEBUG',(\d+)/", "'APP_DEBUG',{$app_debug}", $userdata);
		$userdata = preg_replace("/\'DEFAULT_RETURN_TYPE',(\d+)/", "'DEFAULT_RETURN_TYPE',{$default_return_type}", $userdata);
		$userdata = preg_replace("/\'USER_TOKEN_TIME',(\d+)/", "'USER_TOKEN_TIME',{$user_token_time}", $userdata);
		$userdata = preg_replace("/\'DATA_PAGE_ENUMS',(\d+)/", "'DATA_PAGE_ENUMS',{$data_page_enums}", $userdata);
		$userdata = preg_replace("/\'DEFAULT_TIMEZONE','(.*?)'/", "'DEFAULT_TIMEZONE','{$default_timezone}'", $userdata);
		$userdata = preg_replace("/\'INDEX_TEMPLATE','(.*?)'/", "'INDEX_TEMPLATE','{$index_template}'", $userdata);
		$userdata = preg_replace("/\'API_EXTEND_MULU','(.*?)'/", "'API_EXTEND_MULU','{$api_extend_mulu}'", $userdata);
		$userdata = preg_replace("/\'ADM_EXTEND_MULU','(.*?)'/", "'ADM_EXTEND_MULU','{$adm_extend_mulu}'", $userdata);
		$userdata = preg_replace("/\'USER_PIC_MULU','(.*?)'/", "'USER_PIC_MULU','{$user_pic_mulu}'", $userdata);
		$userdata = preg_replace("/\'ADM_LOG',(\d+)/", "'ADM_LOG',{$adm_log}", $userdata);
		$userdata = preg_replace("/\'USER_LOG',(\d+)/", "'USER_LOG',{$user_log}", $userdata);
		$userdata = preg_replace("/\'LOG_DEL',(\d+)/", "'LOG_DEL',{$log_del}", $userdata);
		$userdata = preg_replace("/\'LOG_KEY','(.*?)'/", "'LOG_KEY','{$log_key}'", $userdata);
		//var_dump($userdata);die;
		//------begin add by xg@20250818----------------
		$userdata = preg_replace("/\'Empower','(.*?)'/", "'Empower','{$empower}'", $userdata);
		$userdata = preg_replace("/\'TimeMsg','(.*?)'/", "'TimeMsg','{$timemsg}'", $userdata);
    	$userdata = preg_replace("/\'Cache_key','(.*?)'/", "'Cache_key','{$Cache_key}'", $userdata);
    	$userdata = preg_replace("/\'Cosaddress','(.*?)'/", "'Cosaddress','{$Cosaddress}'", $userdata);
    	$userdata = preg_replace("/\'Mainaddress','(.*?)'/", "'Mainaddress','{$Mainaddress}'", $userdata);
    	$userdata = preg_replace("/\'Serveruser','(.*?)'/", "'Serveruser','{$Serveruser}'", $userdata);
    	$userdata = preg_replace("/\'Serverpwd','(.*?)'/", "'Serverpwd','{$Serverpwd}'", $userdata);
    	$userdata = preg_replace("/\'Cache_time',(\d+)/", "'Cache_time',{$Cache_time}", $userdata);
		//------end add by xg@20250818----------------

		$adm_res = file_put_contents('../include/config.php', $userdata);
		if($adm_res){
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'web_set','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(200,'修改成功');
		}else{
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'web_set','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(201,'修改失败');
		}
	}
	
	/*修改密码*/
	if($act == 'pswd'){
		$user = isset($_POST['user']) && !empty($_POST['user']) ? purge($_POST['user']) : json(201,'账号不能为空');
		$pwd = isset($_POST['pwd']) && !empty($_POST['pwd']) ? purge($_POST['pwd']) : json(201,'密码不能为空');
		$okpwd = isset($_POST['okpwd']) && !empty($_POST['okpwd']) ? purge($_POST['okpwd']) : json(201,'请确认密码');
		if($okpwd != $pwd)json(201,'确认密码有误');
		$userdata = file_get_contents('userdata.php');
		//json(201,$userdata);
		$userdata = preg_replace('/\$user = \'.*?\'/', '$user = \'' . $user . '\'', $userdata);
		$userdata = preg_replace('/\$pass = \'.*?\'/', '$pass = \'' . $pwd . '\'', $userdata);
		$userdata = preg_replace('/\$cookie = \'.*?\'/', '$cookie = \'' . md5($user.$pwd.time()) . '\'', $userdata);
		$adm_res = file_put_contents('userdata.php', $userdata);
		if($adm_res){
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'web_pswd','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(200,'修改成功');
		}else{
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'web_pswd','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(201,'修改失败');
		}
	}
	
	/*接口白名单*/
	if($act == 'api_whitelist'){
		$api_bmd = isset($_POST['api_bmd']) && !empty($_POST['api_bmd']) ? purge($_POST['api_bmd']) : '';
		
		$whitelist_data = file_get_contents('../include/lang/lang_whitelist.php');
		$api_arr = whitelist_Arr($api_bmd);
		$whitelist_data = preg_replace('/\$api_whitelist = \[.*?\]/', '$api_whitelist = [' . $api_arr . ']', $whitelist_data);
		$res = file_put_contents('../include/lang/lang_whitelist.php',$whitelist_data);
		if($res){
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'api_whitelist','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>addslashes(json_encode($_POST))]);}//记录日志
			json(200,'修改成功');
		}else{
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'api_whitelist','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>addslashes(json_encode($_POST))]);}//记录日志
			json(201,'修改失败');
		}
	}
	
	json(201,'没有这个接口:'.$act);
?>