<?php
error_reporting(E_ALL);
/*
常见错误代码
105 = 应用编号不存在
106 = 应用已被停用
*/

/*PHP版本验证*/
if(version_compare(PHP_VERSION,'7.3.99','>'))  die('PHP版本需要<=7.3,请检查!');
/*安装验证*/
if(!file_exists('install/install.lock')){
	header("Location: install"); 
	return;
}

/*缓存目录检查*/
if (!file_exists("Cache/")) {
    mkdir("Cache/", 0777, true);
}
require_once("include/global.php");
$appid = $_GET['app'];
$time = $_POST['t'];
$keys = $_POST['key'];
$sign = $_POST['sign'];
$ios = $_POST['ios'];




/*基础校验拦截*/
if (!$time||!$keys||!$sign||!$appid) {
    header('HTTP/1.1 404 Forbidden');
    exit;
}




$privatekey = "MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBAMOEOwL1Uxqf4WIqzPJgrPHOtlOvDoxJQnHyGtDfo6jVHnEd95XTjYaqhnK/Df+TZz47Vq8UTnKbmWILykUI5f4XJ2iRUCvoxqxCvj9ylRDG0bZKbf4LuHAZqXgQIOxP1nCWTuYgolm475+4os3C1fRDmpHfeVmCAecrFUXL8Rc3AgMBAAECgYEAofmsQdkoDgiiWgeHXs2EuZc9Kbr/XG1c5LVkTeLY3QgifigLc06eExC27d0mJbPidoYGXGmATCZoPffyjJrAnfs4u6diEpqc1thxCF14bU0qS7jx2TqcnH285y2Z3YlFksNQt9nKEIwE3ZiuVKy8IeA7sM094BR8g6DpT0nHx/ECQQDrZFFbWyLspkKlM5R1fzRx+ALkntUUgc9sBYu42t5p6qfbPxTru/T7GbtsT9qxYsTgVdfvI36YU6K4PQRRWI6rAkEA1KI2i+xxvbYNdUG2amLrjbm4D0yUftHOCR2Tvgw9/vPsEhhRVODDG8pvnJpnmc5TFEFfrbVPaTrhMI5NvgtppQJBAMKFfi3unGfP5Vc7zr1iR2a/OzTOhOuTcmOkGZjDVfVVMy2dbZ55DrPKyfVx8BmSs3tntTArttwOkXOLCNxoQE0CQQCjw+d07v9PGKbW12ySFWvMNOygw99eqWIhPSlr5uvcr6ry6M3DLHS4s7owh+8g03rDD/KLzCfEKTgE+KTBqPKNAkA82EWqz5AYbeSMIa/yjDQRJcWbD4en1P+OVsZSB/iKZzqmrjXZJpHnrficw+oEUHGzg5LEhJ+AwTWrKu9pByKx";
$key = "9DAWg7IYUXIZDx1217EXNwIDAQABsdEO";
$iv = "e2he2peIHGpjsFJW";
$md5 = "G25zqaNtpQW1rJ96ZKIPLHSvGHb1M0kRCG0=";
$core = 200;
$msg = "数据正常";
/*查询数据库基本信息*/
$app_res = Db::table('app')->where('id',$appid)->find();
$main_res = Db::table('main')->where('uid',$appid)->find();
$analysis_set = Db::table('analysis_set')->find();
/*验证随机广告*/
$randad = $main_res['Random_ad'];
/*验证邀请奖励*/
$logon_way = $app_res['logon_way'];
/*验证设置页四格*/
$Settings_page = $main_res['Settings_page'];
/*验证自动换源*/
$Auto_Source = $main_res['Auto_Source'];
/*验证新UI*/
$Interface_Style = $main_res['Interface_Style'];
$Allow_changing_styles = $main_res['Allow_changing_styles'];
/*验证视频跑马公告*/
$Vod_Notice_end_time = $main_res['Vod_Notice_end_time'];
/*验证直播功能*/
$live = 1;
/*验证指定线路内核*/
$core_mode = 1;
/*验证广告遮挡*/
$Adblock = 1;

$json['z'] = 1;

/*缓存查询*/
if ($ios=='new1') {
    $file4 = "Cache/app".$appid."_new.html";
}else if ($ios=='new2') {
    $file4 = "Cache/app".$appid."_news.html";
}else {
    $file4 = "Cache/app".$appid.".html";
}
if(file_exists($file4)){
	clearstatcache($file4);
	/*自动清理主控缓存*/
	if (time() > filemtime($file4) + Cache_time) {
    	unlink($file4);
	}
}

/*缓存存在直接调用缓存*/
if(file_exists($file4)){
    if ($ios=='new1') {
        header("Location:Cache/app".$_GET['app']."_new.html"); 
    }else if ($ios=='new2') {
        header("Location:Cache/app".$_GET['app']."_news.html"); 
    }else {
        header("Location:Cache/app".$_GET['app'].".html"); 
    }
	exit;
}

/*校验时间*/
if($app_res['mi_time'] > 0){
    $sign_t = time() - $time;//服务器时间-客户端时间，对比时间差
    if($sign_t > $app_res['mi_time'] || $time > time() + $app_res['mi_time']){
	    $json['code'] = 201;
	    if (TimeMsg == '') {
	        $json['msg'] = "设备时间异常,请先调整时间或稍后在试!";//时间错误消息
	    }else{
	        $json['msg'] = TimeMsg;//时间错误消息
	    }
	    $json['time'] = floor(microtime(true)*1000);//动态RSA
	   // echo json_encode($json,JSON_UNESCAPED_UNICODE);
        if ($ios=='new1') {
            echo RSA_SMI(str_rot13(mi_rc4s(json_encode($json,JSON_UNESCAPED_UNICODE).floor(microtime(true)*1000),md5($md5.md5($md5)),0)),$privatekey,0);
        }else if ($ios=='new2') {
        //   var_dump($json);die;
            echo RSA_SMI(str_rot13(mi_rc4s(base64_encode(gzcompress(json_encode($json,JSON_UNESCAPED_UNICODE).floor(microtime(true)*1000))),md5($md5.md5($md5)),0)),$privatekey,0);
        }else {
            echo RSA_SMI(json_encode($json,JSON_UNESCAPED_UNICODE).floor(microtime(true)*1000),$privatekey,0);
        }
		exit;
	}
}else{
    $core = 200;
    $msg = "数据正常";
}

/*校验APP编号*/
if (!$app_res) {
    $json['code'] = 201;
    $json['msg'] = " error 105";//APP编号不存在
    $json['time'] = floor(microtime(true)*1000);//动态RSA
    // echo json_encode($json,JSON_UNESCAPED_UNICODE);
    if ($ios=='new1') {
        echo RSA_SMI(str_rot13(mi_rc4s(json_encode($json,JSON_UNESCAPED_UNICODE).floor(microtime(true)*1000),md5($md5.md5($md5)),0)),$privatekey,0);
    }else if ($ios=='new2') {
        echo RSA_SMI(str_rot13(mi_rc4s(base64_encode(gzcompress(json_encode($json,JSON_UNESCAPED_UNICODE).floor(microtime(true)*1000))),md5($md5.md5($md5)),0)),$privatekey,0);
    }else {
        echo RSA_SMI(json_encode($json,JSON_UNESCAPED_UNICODE).floor(microtime(true)*1000),$privatekey,0);
    }
    exit;
}else{
    $core = 200;
    $msg = "数据正常";
}

/*校验应用状态*/
if ($app_res['state'] != 'y') {
    $json['code'] = 201;
    if ($app_res['notice'] != '') {
        $json['msg'] = $app_res['notice'];//应用已被停用
    }else {
        $json['msg'] = " error 106";//应用已被停用
    }
    $json['time'] = floor(microtime(true)*1000);//动态RSA
    // echo json_encode($json,JSON_UNESCAPED_UNICODE);
    if ($ios=='new1') {
        echo RSA_SMI(str_rot13(mi_rc4s(json_encode($json,JSON_UNESCAPED_UNICODE).floor(microtime(true)*1000),md5($md5.md5($md5)),0)),$privatekey,0);
    }else if ($ios=='new2') {
        echo RSA_SMI(str_rot13(mi_rc4s(base64_encode(gzcompress(json_encode($json,JSON_UNESCAPED_UNICODE).floor(microtime(true)*1000))),md5($md5.md5($md5)),0)),$privatekey,0);
    }else {
        echo RSA_SMI(json_encode($json,JSON_UNESCAPED_UNICODE).floor(microtime(true)*1000),$privatekey,0);
    }
    exit;
}else{
    $core = 200;
    $msg = "数据正常";
}

/*以下是播放器设置*/
/*初装播放器内核*/
$Config['play_core'] = $main_res['play_core'];
/*卡顿换源校验*/
$Config['vod_caton_check'] = intval($main_res['vod_caton_check']);
/*卡顿校验时间*/
 $Config['seizing_time'] = intval($main_res['seizing_time']);
/*高负载丢帧*/
$Config['framedrop'] = intval($main_res['framedrop']);
/*自动播放片源*/
$Config['start_on_prepared'] = intval($main_res['start_on_prepared']);
/*异步解码*/
$Config['async_init_decoder'] = intval($main_res['async_init_decoder']);
/*直播出装播放器内核*/
$Config['live_core'] = $main_res['live_core'];
/*卡顿校验*/
$Config['caton_check'] = intval($main_res['caton_check']);
/*卡顿校验时间*/
$Config['check_time'] = intval($main_res['check_time']);
/*卡顿解决方式*/
$Config['Tackle_mode'] = intval($main_res['Tackle_mode']);
/*显示网速*/
$Config['networkspeed'] = intval($main_res['networkspeed']);
/*EPG风格*/
$Config['epg'] = intval($main_res['epg']);
/*换台方式*/
$Config['switchs'] = intval($main_res['switchs']);
/*记忆播放源*/
$Config['memory_source'] = intval($main_res['memory_source']);
/*记忆频道*/
$Config['memory_channel'] = intval($main_res['memory_channel']);
/*真实视频时间*/
$Config['no_time_adjust'] = intval($main_res['no_time_adjust']);
/*无限缓冲*/
$Config['infbuf'] = intval($main_res['infbuf']);
/*源用尽处理方式*/
$Config['live_no_source'] = intval($main_res['live_no_source']);
/*选集显示方式*/
$Config['xuanjitype'] = intval($main_res['xuanjitype']);
/*每组多少集*/
$Config['xuanjinumber'] = intval($main_res['xuanjinumber']);
/*反转换台*/
$Config['reverse'] = intval($main_res['reverse']);
/*播放线路记忆*/
$Config['remember_source'] = intval($main_res['remember_source']);
/*同源搜索*/
$Config['Same_source_search'] = intval($main_res['Same_source_search']);
/*远程搜索*/
$Config['search'] = intval($main_res['search']);
/*远程搜索端口*/
$Config['searchport'] = intval($main_res['searchport']);
$Config['play_decode'] = $main_res['play_decode'];//显示初装解码
$Config['play_ratio'] = $main_res['play_ratio'];//初装画面比例
$Config['packet_buffering'] = intval($main_res['packet_buffering']);//启用缓冲进度条
$Config['videotimeout'] = intval($main_res['videotimeout']);//视频连接超时跳帧
$Config['http_detect_range_support'] = intval($main_res['http_detect_range_support']);//播放资源支持续传
$Config['reconnect'] = intval($main_res['reconnect']);//资源重试
$Config['resources_reconnect'] = intval($main_res['resources_reconnect']);//播放重连次数
$Config['live_streaming'] = intval($main_res['live_streaming']);//直播流媒体优化
$Config['skip_loop_filter'] = intval($main_res['skip_loop_filter']);//画面质量
$Config['Navigation_mode'] = intval($main_res['Navigation_mode']);//系统导航
/*调试设置*/
$Config['Sniff_debug_mode'] = intval($main_res['Sniff_debug_mode']);//嗅探调试模式
$Config['Play_timeout_debug'] = intval($main_res['Play_timeout_debug']);//播放时间超时调试窗口
$Config['Ijk_log_debug'] = intval($main_res['Ijk_log_debug']);//IJK_DEBUG日志
$Config['Vpn_check'] = intval($main_res['Vpn_check']);//Vpn及抓包检测 
$Config['Xp_check'] = intval($main_res['Xp_check']);//Xp环境检测
$Config['Verifysign'] = $main_res['Verifysign'];//APP签名md5
$Config['Verifysign_check'] = intval($main_res['Verifysign_check']);//验证签名
$Config['Name_check'] = intval($main_res['Name_check']);//验证名字
/*以下是常规设置*/
$Config['Base_host'] = $main_res['Base_host'];//苹果文件名
$Config['Home_text_shadow'] = intval($main_res['Home_text_shadow']);//热门推荐文字及阴影
$Config['Ad_time'] = intval($main_res['Ad_time']);//开屏广告时间
$Config['Ad_jump'] = intval($main_res['Ad_jump']);//跳过广告
$Config['play_jump'] = $main_res['play_jump'];//初装跳片头时间
$Config['play_jump_end'] = $main_res['play_jump_end'];//初装跳片尾时间
$Config['Login_control'] = intval($main_res['Login_control']);//隐藏扫码和找回密码
$Config['Exit_Message'] = $main_res['Exit_Message'];//远程退出消息
$Config['Client'] = strstr($main_res['Client'], "http") ? $main_res['Client'] : $main_res['User_url']."/".$main_res['Client'];
$Config['Fb_type'] = intval($main_res['Fb_type']);//反馈类型
$Config['Vod_Notice_starting_time'] = intval($main_res['Vod_Notice_starting_time']);//视频跑马公告起始时间
$Config['Vod_Notice_end_time'] = intval($Vod_Notice_end_time);//公告停留时间
$Config['Logo_url'] = $main_res['Logo_url'];//远程Logo地址
$Config['EpisodesNumber'] = intval($main_res['EpisodesNumber']);//剧集数量显示
$Config['Force_Style'] = intval($main_res['Force_Style']);//强制UI样式
if (empty($ios)) {
    if ($Interface_Style == 4) {
        $Config['Interface_Style'] = intval(rand(0,1));//用户界面样式 0=经典 1=现代 2=现代圆角 3=经典圆角
    }elseif ($Interface_Style == 2||$Interface_Style == 3) {
        $Config['Interface_Style'] = intval(0);//用户界面样式 0=经典 1=现代 2=现代圆角 3=经典圆角
    }else {
        $Config['Interface_Style'] = intval($Interface_Style);//用户界面样式 0=经典 1=现代 2=现代圆角 3=经典圆角
    }
}else{
    // if ($Interface_Style == 4) {
    //     $Config['Interface_Style'] = intval(rand(0,3));//用户界面样式 0=经典 1=现代 2=现代圆角 3=经典圆角
    // }else{
    //     $Config['Interface_Style'] = intval($Interface_Style);//用户界面样式 0=经典 1=现代 2=现代圆角 3=经典圆角
    // }
    
    $Config['Interface_Style'] = intval($Interface_Style);//用户界面样式 0=经典 1=现代 2=现代圆角 3=经典圆角
    
}
$Config['Allow_changing_styles'] = intval($Allow_changing_styles);//允许用户更改主题 0=不允许 1=允许
$Config['Topic'] = intval($main_res['Topic']);//专题显示
$Config['vod_Logo'] = intval($main_res['vod_Logo']);//视频logo
$Config['CornerLabelView'] = intval($main_res['CornerLabelView']);//角标模式
$Config['Pwd_text'] = $main_res['Pwd_text'];//密码提示语 
$Config['Settings_page'] = intval($Settings_page);//设置页四格
$Config['UpdateNumber'] = intval($main_res['UpdateNumber']);//更新集数
/*解析获取*/
$Config['time'] = floor(microtime(true)*1000);//动态RSA
$Config['Trytime'] = intval($analysis_set['Trytime']);//试看时间 单位(分钟) 不能等于0
$Config['Trystate'] = intval($analysis_set['Try']);//试看状态 1=可试看 
$Config['Timeout'] = intval($analysis_set['Timeout']);//解析超时时间
$Config['Submission_method'] = intval($analysis_set['Submission']);//解析读取提交方式 0=GET 1=POST
$Config['login_type'] = intval($logon_way);//注册类型
$Config['Auto_Source'] = intval($Auto_Source);//自动换源
$Config['live'] = intval($live);//直播功能 1=开启 0=不开启 
$Config['core_mode'] = intval($core_mode);//指定播放器内内核功能 1=开启 0=不开启 
$Config['Adblock'] = intval($Adblock);//广告遮挡 1=开启 0=不开启 
$Config['Name'] = md5($app_res['name']);//应用名字
$Config['mi_type'] = intval($app_res['mi_type']);//加密类型
/*基础设置*/
$json['code'] = $core;//状态码
$json['msg'] = $msg;
$json['time'] = floor(microtime(true)*1000);//动态RSA
if ($randad == 0) {
	$ad_list = Db::table('ad')->select();
	$ii=0;
	foreach($ad_list as $vv){
		$data[$ii]=$vv["url"];
		$ii++;
	}
	$randadurl  = $data[rand(0,$ii++-1)];
   	$json['Ad_url'] = AESencrypt($randadurl, $key, $iv);//随机广告
}else{
    $json['Ad_url'] = AESencrypt($main_res['Ad_url'], $key, $iv);//不随机广告
}

$json['User_url'] = AESencrypt($main_res['User_url'], $key, $iv);//易如意地址
$json['Appkey'] = AESencrypt($app_res['appkey'], $key, $iv);//appkey(主控密钥)
$json['Rc4key'] = AESencrypt($app_res['mi_rc4_key'], $key, $iv);//rc4密钥
$json['mi_rsa_public_key'] = AESencrypt($app_res['mi_rsa_public_key'], $key, $iv);//rsa公钥
$json['mi_aes_key'] = AESencrypt($app_res['mi_aes_key'], $key, $iv);//aes密钥
$json['mi_aes_iv'] = AESencrypt($app_res['mi_aes_iv'], $key, $iv);//aesiv
$json['Api_url'] = AESencrypt($main_res['Api_url'], $key, $iv);//苹果地址
$json['ApiKey'] = AESencrypt($app_res['mi_rc4_key'], $key, $iv);//苹果密钥
$json['Fb_url'] = AESencrypt(strstr($main_res['Fb_url'], "http") ? $main_res['Fb_url'] : $main_res['User_url']."/".$main_res['Fb_url'], $key, $iv);
$json['Config'] = $Config;//苹果密钥

// echo json_encode($json,JSON_UNESCAPED_UNICODE);
if ($ios=='new1') {
    
    echo RSA_SMI(str_rot13(mi_rc4s(json_encode($json,JSON_UNESCAPED_UNICODE).floor(microtime(true)*1000),md5($md5.md5($md5)),0)),$privatekey,0);
    /*缓存文件*/
    file_put_contents("Cache/app".$appid."_new.html", RSA_SMI(str_rot13(mi_rc4s(json_encode($json,JSON_UNESCAPED_UNICODE).floor(microtime(true)*1000),md5($md5.md5($md5)),0)),$privatekey,0), FILE_APPEND);
    
}else if ($ios=='new2') {
    
    echo RSA_SMI(str_rot13(mi_rc4s(base64_encode(gzcompress(json_encode($json,JSON_UNESCAPED_UNICODE).floor(microtime(true)*1000))),md5($md5.md5($md5)),0)),$privatekey,0);
    /*缓存文件*/
    file_put_contents("Cache/app".$appid."_news.html", RSA_SMI(str_rot13(mi_rc4s(base64_encode(gzcompress(json_encode($json,JSON_UNESCAPED_UNICODE).floor(microtime(true)*1000))),md5($md5.md5($md5)),0)),$privatekey,0), FILE_APPEND);
    
}else {
    
    echo RSA_SMI(json_encode($json,JSON_UNESCAPED_UNICODE).floor(microtime(true)*1000),$privatekey,0);
    /*缓存文件*/
    file_put_contents("Cache/app".$appid.".html", RSA_SMI(json_encode($json,JSON_UNESCAPED_UNICODE).floor(microtime(true)*1000),$privatekey,0), FILE_APPEND);
    
}
exit;
?>