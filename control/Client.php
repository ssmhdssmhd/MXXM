<?php
/*
Name:解析客户端
Version:1.0
*/
define('Abstract_analysis_settings',0);//抽象解析设置 无解析线路/编码自动嗅探 1=自动嗅探 0=直连输出
define('analysis_config',0);// 0=读解析UA+本地UA混合  1=读解析UA 2=只读本地UA
/*JSON类型输出*/
header( 'Content-Type:text/json;charset=utf-8');
/*引入框架*/
require_once ("include/global.php");
/*查询全局设置相关信息*/
$res = Db::table('analysis_set','as A')->field('A.*')->find();
$id = $_GET['id'];
/*解析编号*/
if (!$id) {
    $id = 1;
}
/*查询提交方式*/
if ($res['Submission'] == 0) {
    $url = $_GET['url'];
    $app = $_GET['app'];
    $account = $_GET['account'];
    $password = $_GET['password'];
    $token = $_GET['token'];
    $machineid = $_GET['machineid'];
    $edition = $_GET['edition'];
    $vodname = $_GET['vodname'];
    $line = $_GET['line'];
    $new = $_GET['new'];
}
if ($res['Submission'] == 1) {
    $url = $_GET['url'];
    $app = $_POST['app'];
    $account = $_POST['account'];
    $password = $_POST['password'];
    $token = $_POST['token'];
    $machineid = $_POST['machineid'];
    $edition = $_POST['edition'];
    $vodname = $_POST['vodname'];
    $line = $_POST['line'];
    $new = $_POST['new'];
}
$app_res = Db::table('app')->where('id',$app)->find();
/*基础验证拦截*/
if (!$url||!$app_res||!$app_res['id']||!$machineid||!$edition||!$line) {
    header('HTTP/1.1 404 Forbidden');
    exit;
}
if ($app_res['mode'] == 'y' && (!$account||!$password||!$token)) {
    header('HTTP/1.1 404 Forbidden');
    exit;
}
/*验证加密拦截*/
if ($res['Resource_Key'] && $line!="live") {
    if (!mi_rc4($url,$res['Resource_Key'],1)) {
        echo jsonresult($res['Hotlink_notify']);
        exit;
    }
    $url = mi_rc4($url,$res['Resource_Key'],1);
}
/*验证版本号拦截*/
if ($edition > $app_res['android_bb'] && $res['Force_Upgrade'] == 1) {
    echo jsonresult($res['Version_high']);
    exit;
}
if ($edition < $app_res['android_bb'] && $res['Force_Upgrade'] == 1) {
    echo jsonresult($res['Version_low']);
    exit;
}
/*查询帐号相关信息*/
$acc = Db::table('user')->where(['appid' => $app, 'user' => $account])->find();
/*免费模式免登录放行：按设备生成虚拟账户*/
if ($app_res['mode'] != 'y' && (empty($acc) || empty($password))) {
    $account = '__free__' . $machineid;
    $pwd = ['id' => 0, 'appid' => $app, 'user' => $account, 'vip' => 999999999, 'ban' => 0];
}else{
    /*验证帐号拦截*/
    if (empty($acc)) {
        echo jsonresult($res['Account_does_not_exist']);
        exit;
    }
    /*查询密码相关信息*/
    $pwd = Db::table('user')->where(['appid' => $app, 'user' => $account, 'pwd' => md5($password)])->find();
    /*验证密码拦截*/
    if (empty($pwd)) {
        echo jsonresult($res['Password_error']);
        exit;
    }
}
/*验证运营模式*/
if ($app_res['mode'] == 'y') {
    /*验证会员时间拦截*/
    if ($pwd['vip'] != 999999999 && $pwd['vip'] < time() && $res['Try'] != 1) {
        echo jsonresult($res['Account_expiration']);
        exit;
    }
}
/*帐号状态拦截*/
if ($pwd['ban'] == 999999999 ||$pwd['ban'] > time() ) {
    echo jsonresult($res['Ban_notify']);
    exit;
}
/*机器码黑名单拦截*/
$Machine_blacklist = explode("|", $res['Machine_blacklist']);
if (in_array($machineid, $Machine_blacklist)) {
    exit;
}
/*IP黑名单拦截*/
$IP_blacklist = explode("|", $res['IP_blacklist']);
if (in_array($_SERVER["REMOTE_ADDR"], $IP_blacklist)) {
    exit;
}
/*验证直播*/
if ($line=="live") {
    /*需要解析*/
    $json_headers = '{"User-Agent":" '.$res['UA'].'"}';
    $Core = 99;
    $Safe = 0;
    $keyword = preg_replace('/\/\/(.*)$/', '//', $url);
    $analysis = Db::table('live_analysis')->where('state','0')->where('keyword','LIKE',"%{$keyword}")->find();
    if (!empty($analysis)) {
        $analysis_connect = Db::table('analysis_connect')->where('id',$analysis['url'])->find();
        $live_analysis_json = analysiscurl($analysis_connect['url'].$url,$headers,$timeout);
        $analysisresult = json_decode($live_analysis_json,true);
        if ($analysisresult['code'] == 200 && !empty($analysisresult['url'])) {
            if (!empty(array_intersect_key($analysisresult, array_flip(['User-Agent', 'user-agent', 'UA', 'ua', 'useragent', 'header'])))) {
                if (!empty($analysisresult['header'])) {
                    $data = json_decode(json_encode($analysisresult['header']), true);
                    foreach ($data as $key => $value) {
                        $data[$key] = ' ' . $value;
                    }
                    $json_headers = json_encode($data);
                } else {
                    $data = json_decode(json_encode($analysisresult), true);
                    $filteredData = [];
                    foreach ($data as $key => $value) {
                        $keywords = ['code', 'Code', 'type', 'Type', 'url', 'Url', 'time', 'Time', 'from', 'From', 'from_url', 'from_Url', 'From_url', 'From_Url', 'header', 'Header', 'msg', 'Msg', 'ad', 'Ad', 'AD', 'info', 'Info', 'InFo'];
                        if (!in_array($key, $keywords)) {
                            if ($key == 'UA' || $key == 'user-agent' || $key == 'ua' || $key == 'useragent' || $key == 'User-agent' || $key == 'user-Agent') {
                                $newKey = 'User-Agent';
                            } elseif ($key == 'CK' || $key == 'ck' || $key == 'cookie' || $key == 'cookies' || $key == 'Cookies') {
                                $newKey = 'Cookie';
                            } elseif ($key == 'ip' || $key == 'Ip') {
                                $newKey = 'IP';
                            } else {
                                $newKey = $key;
                            }
                            $filteredData[$newKey] = ' ' . $value;
                        }
                    }
                    
                    
                    if (analysis_config == 0) {
                        /*本地不是空的*/
                        if (!empty($analysis['header'])) {
                            $data = json_decode($analysis['header'], true);
                            /*遍历本地*/
                            foreach ($data as $key => $value) {
                                $data[$key] = ' '.$value;
                            }
                            $json_headers1 = json_encode($filteredData);
                            $json_headers2 = json_encode($data);
                            $array1 = json_decode($json_headers1, true);
                            $array2 = json_decode($json_headers2, true);
                            $mergedArray = $array1;  
                            /*去重复解析优先加本地*/
                            foreach ($array2 as $key => $value) {  
                                if (!array_key_exists($key, $mergedArray)) {  
                                    $mergedArray[$key] = $value;  
                                }  
                            }
                            $json_headers = json_encode($mergedArray);
                        }else {
                            $json_headers = json_encode($filteredData);
                        }
                    }else if(analysis_config == 1){
                        $json_headers = json_encode($filteredData);
                    }else{
                        if (empty($analysis['header'])) {
                            /*全局标头*/
                            $json_headers = '{"User-Agent":" '.$res['UA'].'"}';
                        }else{
                            /*自定义标头*/
                            // $json_headers = $analysis['header'];
                            $data = json_decode($analysis['header'], true);
                            foreach ($data as $key => $value) {
                                $data[$key] = ' '.$value;
                            }
                            $json_headers = json_encode($data);
                        }
                    }
                
                
                }
            } else {
                if (empty($analysis['header'])) {
                    $json_headers = '{"User-Agent":" ' . $res['UA'] . '"}';
                } else {
                    $data = json_decode($analysis['header'], true);
                    foreach ($data as $key => $value) {
                        $data[$key] = ' ' . $value;
                    }
                    $json_headers = json_encode($data);
                }
            }
            $url = $analysisresult['url'];
            
            $Core = $analysis['Core'];
            $Safe = $analysis['Safe'];
        }
    }
    /*验证加密*/
    if ($res['Encrypt'] == 1) {
        if (empty($new)) {
            $json2['url'] = mi_rc4(replaceChineseAndSpaceWithUtf8($url),$app_res['appkey'],0);
        }else {
            $json2['url'] = mi_rc4s(replaceChineseAndSpaceWithUtf8($url),$app_res['appkey'],0);
        }
    }else {
        $json2['url'] = replaceChineseAndSpaceWithUtf8($url);
    }
    $json2['Type'] = 0;
    $json2['ClientID'] = intval(1);
    $json2['MaxClientID'] = intval(1);
    $json2['Maxtimeout'] = intval(9);
    $json2['Core'] = intval($Core);
	$json2['Safe'] = intval($Safe);
    $json2['header'] = json_decode($json_headers);
    $json['code'] = 200;
    $json['encrypt'] = intval($res['Encrypt']);
    $json['data'] =$json2;
    /*防盗验证*/
    if ($res['Anti_theft'] == 0) {
        echo json_encode($json);
    }
    if ($res['Anti_theft'] == 1) {
        echo json_encode($json).getcodes(6);
    }
    if ($res['Anti_theft'] == 2) {
        echo json_encode($json)."直播直连";
    }
    exit;
}
/*查询超限信息MYSQL版*/
if ($res['Analysis_log'] == 1) {
    $analysis_log = Db::table('analysis_log')->where(['user' => $account, 'appid' => $app])->find();
    $analysis_number = $analysis_log['analysis_number'];//解析次数
    $Overrun_number = $analysis_log['Overrun_number'];//超限次数
    $Offsite_mumber = $analysis_log['Offsite_mumber'];//异地次数
    $Risk_number = $analysis_log['Risk_number'];//风险次数
    $Verify_token = $analysis_log['Verify_token'];//校验的token
    $Unseal_time = $analysis_log['Unseal_time'];//解封时间
    /*次日解除超限*/
    if (time() >= $analysis_log['Unseal_time']) {
        // 超限
        if ($analysis_number >= $res['Play_Value']) {
            // 超限 + 1
            $Overrun  = $Overrun_number + 1;
        }
        // 风险
        if ($Offsite_mumber >= $res['Offsite_value']) {
            // 异地 + 1
            $Risk = $Risk_number  + 1;
        }
        // 更新数据库
        $updateanalysis_log = Db::table('analysis_log')->where(['user' => $account, 'appid' => $app])->update(['token' => $machineid , 'analysis_number' => 0, 'Finally_time' => time(), 'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day'))),  'Overrun_number'=> $Overrun ,'Offsite_mumber' => 0,'Risk_number' => $Risk]);
        
        // 解析清零
        $analysis_number = 0;
    }
    /*播放超限拦截-24*/
    if ($analysis_number >= $res['Play_Value']) {
        echo jsonresult($res['Overrun_notify']);
        exit;
    }
    /*超限永久封禁拦截-永久*/
    if ($Overrun_number >= $res['Overrun_Value']) {
        /*禁止用户登录被封禁的账户*/
        // $updateacc = Db::table('user')->where(['appid' => $app, 'user' => $account])->update(['ban' => 999999999, 'ban_notice' => "播放超限的异常用户"]);
        echo jsonresult($res['Ban_notify']);
        exit;
    }
    /*异设备拦截-24*/
    if ($analysis_log['Offsite_mumber'] >= $res['Offsite_value']) {
        echo jsonresult($res['Offsite_notify']);
        exit;
    }
    /*风险拦截-永久*/
    if ($Risk_number >= $res['Risk_value']) {
        echo jsonresult($res['Risk_notify']);
        exit;
    }
    /*验证登录数量*/
    if ($app_res['logon_check_in']=='y' && $app_res['logon_num'] == 1 && $token != '') {
        $acc_token = Db::table('user_logon')->where(['token' => $token, 'appid' => $app])->find();
        /*查询token相关信息*/
        if ($token != $acc_token['token']) {
            /*掉线通知*/
            echo jsonresult($res['disconnect']);
            exit;
        }
    }
    /*单设备异地验证*/
    if ($app_res['logon_num'] == 1) {
        /*验证设备ID*/
        if ($analysis_log['Verify_token'] != $machineid) {
            $updateanalysis_log = Db::table('analysis_log')->where(['user' => $account, 'appid' => $app])->update(['Verify_token' => $machineid , 'Offsite_mumber' => $analysis_log['Offsite_mumber']+1]);
        }
    }
}
/*查询超限信息Redis版*/
if ($res['Analysis_log'] == 2) {
    $redis = new Redis();
    $redis->connect($res['Log_Redis_Address'], $res['Log_Redis_Port']);
    $redis->select($res['Log_RedisDB']);
    $analysis_log = $redis->hGetAll('analysis_log:' . $account . ':' . $app);
    $analysis_number = $analysis_log['analysis_number'];//解析次数
    $Overrun_number = $analysis_log['Overrun_number'];//超限次数
    $Offsite_mumber = $analysis_log['Offsite_mumber'];//异地次数
    $Risk_number = $analysis_log['Risk_number'];//风险次数
    $Verify_token = $analysis_log['Verify_token'];//校验的token
    $Unseal_time = $analysis_log['Unseal_time'];//解封时间
    /*次日解除超限*/
    if (time() >= $Unseal_time) {
        // 超限
        if ($analysis_number >= $res['Play_Value']) {
            // 超限 + 1
            $Overrun  = $Overrun_number + 1;
        }
        // 风险
        if ($Offsite_mumber >= $res['Offsite_value']) {
            // 异地 + 1
            $Risk = $Risk_number  + 1;
        }
        // 更新数据库
        $redis->hMSet('analysis_log:' . $account . ':' . $app, [
                'token' => $machineid,
                'analysis_number' => 0,
                'Finally_time' => time(),
                'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day'))),
                'Overrun_number' => $Overrun,
                'Offsite_mumber' => 0,
                'Risk_number' => $Risk,
            ]);
        // 解析清零
        $analysis_number = 0;
    }
    /*播放超限拦截-24*/
    if ($analysis_number >= $res['Play_Value']) {
        echo jsonresult($res['Overrun_notify']);
        exit;
    }
    /*超限永久封禁拦截-永久*/
    if ($Overrun_number >= $res['Overrun_Value']) {
        echo jsonresult($res['Ban_notify']);
        exit;
    }
    /*异设备拦截-24*/
    if ($Offsite_mumber >= $res['Offsite_value']) {
        echo jsonresult($res['Offsite_notify']);
        exit;
    }
    /*风险拦截-永久*/
    if ($Risk_number >= $res['Risk_value']) {
        echo jsonresult($res['Risk_notify']);
        exit;
    }
    /*验证登录数量*/
    if ($app_res['logon_check_in']=='y' && $app_res['logon_num'] == 1 && $token != '') {
        $acc_token = Db::table('user_logon')->where(['token' => $token, 'appid' => $app])->find();
        /*查询token相关信息*/
        if ($token != $acc_token['token']) {
            /*掉线通知*/
            echo jsonresult($res['disconnect']);
            exit;
        }
    }
    /*单设备异地验证*/
    if ($app_res['logon_num'] == 1) {
        /*验证设备ID*/
        if ($Verify_token != $machineid) {
            $redis->hset('analysis_log:'.$account.':'.$app, 'Verify_token', $machineid);
            $redis->hincrby('analysis_log:'.$account.':'.$app, 'Offsite_mumber', 1);
        }
    }
}
/*查询解析接口*/
$analysis = Db::table('analysis')->where('Client',$id)->where('keyword',$line)->find();
/*关键字&接口存在*/
if (!empty($analysis['url'])&&!empty($analysis['keyword'])) {
    $analysis_connect = Db::table('analysis_connect')->where('id',$analysis['url'])->find();
    $analysismax = Db::table('analysis')->where('keyword',$analysis['keyword'])->max('Client');
    /*解析状态查询*/
    if ($analysis['state'] == 1) {
        echo jsonstop($url,$id,$analysismax,$res['Timeout'],$res['Anti_theft']);
        exit;
    }
    /*查询超时时间*/
    if ($analysis_connect['Timeout'] == 0) {
        /*根据解析接口超时时间*/
        $timeout = $res['Timeout']-1;
    }else{
        /*根据全局超时时间*/
        $timeout = $analysis_connect['Timeout']-1;
    }
    /*验证解析类型*/
    if ($analysis_connect['type'] == 0) {
        /*解析类型*/
        /*查询解析标头*/
        if (empty($analysis_connect['header'])) {
            /*未填写解析前标头*/
            $headers = "";
        }else{
            /*已填写解析前标头json解码遍历*/
            $headers = array();
            $jsondata = json_decode($analysis_connect['header'], true);
            foreach ($jsondata as $key => $value) {
                $headers[] = $key . ': ' . $value;
            }
        }
        /*开始解析*/
        $analysis_json = analysiscurl($analysis_connect['url'].$url,$headers,$timeout);
        /*JSON解码*/
        $analysisresult = json_decode($analysis_json,true);
        /*查询解析站是否存在User-Agent*/
        if (!empty($analysisresult['User-Agent'])||!empty($analysisresult['user-agent'])||!empty($analysisresult['UA'])||!empty($analysisresult['ua'])||!empty($analysisresult['useragent'])||!empty($analysisresult['header'])) {
            if (!empty($analysisresult['header'])) {
                $data = json_decode(json_encode($analysisresult['header']),true);
                foreach ($data as $key => $value) {
                    $data[$key] = ' ' . $value;
                }
                $json_headers = json_encode($data);
            }else {
                $data = json_decode(json_encode($analysisresult),true);
                $filteredData = [];
                foreach ($data as $key => $value) {
                    /*屏蔽无用信息*/
                    $keyword = $key=='code'||$key=='Code';
                    $keyword .= $key=='type'||$key=='Type';
                    $keyword .= $key=='url'||$key=='Url';
                    $keyword .= $key=='time'||$key=='Time';
                    $keyword .= $key=='from'||$key=='From';
                    $keyword .= $key=='from_url'||$key=='from_Url'||$key=='From_url'||$key=='From_Url';
                    $keyword .= $key=='header'||$key=='Header';
                    $keyword .= $key=='msg'||$key=='Msg';
                    $keyword .= $key=='ad'||$key=='Ad'||$keyword .= $key=='AD';
                    $keyword .= $key=='info'||$key=='Info'||$keyword .= $key=='InFo';
					$keyword .= $key=='免备案服务器推荐';
                    $keyword .= $key=='地表最强蓝光一解';
                    $keyword .= $key=='火花解析';
					$keyword .= $key=='线路';
                    if (!$keyword) {
                        if ($key=='UA'||$key=='user-agent'||$key=='ua'||$key =='useragent'||$key =='User-agent'||$key =='user-Agent') {
                            $newKey = 'User-Agent';
                        } elseif ($key == 'CK'|| $key == 'ck' || $key == 'cookie'|| $key == 'cookies'|| $key == 'Cookies') {
                            $newKey = 'Cookie';
                        } elseif ($key == 'ip'|| $key == 'Ip') {
                            $newKey = 'IP';
                        }else {
                            $newKey = $key;
                        }
                        $filteredData[$newKey] = ' ' . $value;
                    }
                }
                if (analysis_config == 0) {
                    /*本地不是空的*/
                    if (!empty($analysis['header'])) {
                        $data = json_decode($analysis['header'], true);
                        /*遍历本地*/
                        foreach ($data as $key => $value) {
                            $data[$key] = ' '.$value;
                        }
                        $json_headers1 = json_encode($filteredData);
                        $json_headers2 = json_encode($data);
                        $array1 = json_decode($json_headers1, true);
                        $array2 = json_decode($json_headers2, true);
                        $mergedArray = $array1;  
                        /*去重复解析优先加本地*/
                        foreach ($array2 as $key => $value) {  
                            if (!array_key_exists($key, $mergedArray)) {  
                                $mergedArray[$key] = $value;  
                            }  
                        }
                        $json_headers = json_encode($mergedArray);
                    }else {
                        $json_headers = json_encode($filteredData);
                    }
                }else if(analysis_config == 1){
                    $json_headers = json_encode($filteredData);
                }else{
                    if (empty($analysis['header'])) {
                        /*全局标头*/
                        $json_headers = '{"User-Agent":" '.$res['UA'].'"}';
                    }else{
                        /*自定义标头*/
                        // $json_headers = $analysis['header'];
                        $data = json_decode($analysis['header'], true);
                        foreach ($data as $key => $value) {
                            $data[$key] = ' '.$value;
                        }
                        $json_headers = json_encode($data);
                    }
                }
            }
        }else{
            /*查询解析后标头*/
            if (empty($analysis['header'])) {
                /*全局标头*/
                $json_headers = '{"User-Agent":" '.$res['UA'].'"}';
            }else{
                /*自定义标头*/
                // $json_headers = $analysis['header'];
                $data = json_decode($analysis['header'], true);
                foreach ($data as $key => $value) {
                    $data[$key] = ' '.$value;
                }
                $json_headers = json_encode($data);
            }
        }
        $Block = explode("|", $res['Url_blacklist']); //屏蔽链接
        /*验证解析结果*/
        if ($analysisresult['code'] != 200||empty($analysisresult['url'])) {
            $analysisurl = "";
            $timeout = 0;
        }elseif (in_array($analysisresult['url'], $Block)) {
            $analysisurl = "";
            $timeout = 0;
        }else{
            $analysisurl = $analysisresult['url'];
            /*解析记录MYSQL版*/
            if ($res['Analysis_log'] == 1) {
                if (!$analysis_log) {
                    /*添加验证*/
                    $addanalysis_log = Db::table('analysis_log')->add(['user' => $account, 'appid' => $app, 'token' => $machineid, 'Verify_token' => $machineid, 'Finally_time' => time(), 'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day')))]);
                }else {
                    /*更新验证*/
                    $updateanalysis_log = Db::table('analysis_log')->where(['user' => $account, 'appid' => $app])->update(['token' => $machineid , 'analysis_number' => $analysis_number+1, 'Finally_time' => time(), 'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day')))]);
                }
            }
            
            /*解析记录Redis版*/
            if ($res['Analysis_log'] == 2) {
                if (!$analysis_log) {
                    /*添加验证*/
                    $redis->hMSet('analysis_log:' . $account . ':' . $app, [
                        'user' => $account,
                        'appid' => $app,
                        'token' => $machineid,
                        'Verify_token' => $machineid,
                        'analysis_number' => 0,
                        'Offsite_mumber' => 0,
                        'Risk_number' => 0,
                        'Offsite_mumber' => 0,
                        'Finally_time' => time(),
                        'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day')))
                    ]);
                }else {
                    /*更新验证*/
                    $redis->hMSet('analysis_log:' . $account . ':' . $app, [
                        'token' => $machineid,
                        'analysis_number' => $analysis_number + 1,
                        'Finally_time' => time(),
                        'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day')))
                    ]);
                }
            }
        }
        /*验证加密*/
        if ($res['Encrypt'] == 1) {
            if (empty($new)) {
                $json2['url'] = mi_rc4(replaceChineseAndSpaceWithUtf8($analysisurl),$app_res['appkey'],0);
            }else {
                $json2['url'] = mi_rc4s(replaceChineseAndSpaceWithUtf8($analysisurl),$app_res['appkey'],0);
            }
        }else {
            $json2['url'] = replaceChineseAndSpaceWithUtf8($analysisurl);
        }
        $json2['Type'] = intval($analysis_connect['type']);
        $json2['ClientID'] = intval($id);
        $json2['MaxClientID'] = intval($analysismax);
        $json2['Maxtimeout'] = intval($timeout+1);
		$json2['Core'] = intval($analysis['Core']);
		$json2['Ad_block'] = intval($analysis['Ad_block']);
		$json2['position'] = intval($analysis['position']);
		$json2['Safe'] = intval($analysis['Safe']);
		$json2['Ewmsize'] = intval($analysis['Ewmsize']);
		$json2['EwmWidth'] = intval(explode("|", $analysis['Ewm_Width_Height'])[0]);
		$json2['EwmHeight'] = intval(explode("|", $analysis['Ewm_Width_Height'])[1]);
		$json2['Moviesize'] = intval($analysis['Moviesize']);
		$json2['Tvplaysize'] = intval($analysis['Tvplaysize']);
		$json2['headposition'] = intval($analysis['headposition']);
        $json2['Exclude_content'] = $analysis_connect['Exclude_keywords'];
        $json2['Conditions'] = json_decode($analysis_connect['Sniffing_rules']);
        $json2['header'] = json_decode($json_headers);
        $json['code'] = 200;
        $json['encrypt'] = intval($res['Encrypt']);
        $json['data'] =$json2;
        /*防盗验证*/
        if ($res['Anti_theft'] == 0) {
            echo json_encode($json);
        }
        if ($res['Anti_theft'] == 1) {
            echo json_encode($json).getcodes(6);
        }
        if ($res['Anti_theft'] == 2) {
           echo json_encode($json)."解析";
        }
        exit;
    }else{
        /*嗅探类型*/
        
        /*解析记录MYSQL版*/
        if ($res['Analysis_log'] == 1) {
            if (!$analysis_log) {
                /*添加验证*/
                $addanalysis_log = Db::table('analysis_log')->add(['user' => $account, 'appid' => $app, 'token' => $machineid, 'Verify_token' => $machineid, 'Finally_time' => time(), 'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day')))]);
            }else {
                /*更新验证*/
                $updateanalysis_log = Db::table('analysis_log')->where(['user' => $account, 'appid' => $app])->update(['token' => $machineid , 'analysis_number' => $analysis_number+1, 'Finally_time' => time(), 'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day')))]);
            }
        }
        
        /*解析记录Redis版*/
        if ($res['Analysis_log'] == 2) {
            if (!$analysis_log) {
                /*添加验证*/
                $redis->hMSet('analysis_log:' . $account . ':' . $app, [
                    'user' => $account,
                    'appid' => $app,
                    'token' => $machineid,
                    'Verify_token' => $machineid,
                    'analysis_number' => 0,
                    'Offsite_mumber' => 0,
                    'Risk_number' => 0,
                    'Offsite_mumber' => 0,
                    'Finally_time' => time(),
                    'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day')))
                ]);
            }else {
                /*更新验证*/
                $redis->hMSet('analysis_log:' . $account . ':' . $app, [
                    'token' => $machineid,
                    'analysis_number' => $analysis_number + 1,
                    'Finally_time' => time(),
                    'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day')))
                ]);
            }
        }
            
        /*验证加密*/
        if ($res['Encrypt'] == 1) {
            if (empty($new)) {
                $json2['url'] = mi_rc4(replaceChineseAndSpaceWithUtf8($analysis_connect['url'].$url),$app_res['appkey'],0);
            }else {
                $json2['url'] = mi_rc4s(replaceChineseAndSpaceWithUtf8($analysis_connect['url'].$url),$app_res['appkey'],0);
            }
        }else {
            $json2['url'] = replaceChineseAndSpaceWithUtf8($analysis_connect['url'].$url);
        }
        $json2['Type'] = intval($analysis_connect['type']);
        $json2['ClientID'] = intval($id);
        $json2['MaxClientID'] = intval($analysismax);
        $json2['Maxtimeout'] = intval($timeout+1);
		$json2['Core'] = intval($analysis['Core']);
		$json2['Ad_block'] = intval($analysis['Ad_block']);
		$json2['position'] = intval($analysis['position']);
		$json2['Safe'] = intval($analysis['Safe']);
		$json2['Ewmsize'] = intval($analysis['Ewmsize']);
		$json2['EwmWidth'] = intval(explode("|", $analysis['Ewm_Width_Height'])[0]);
		$json2['EwmHeight'] = intval(explode("|", $analysis['Ewm_Width_Height'])[1]);
		$json2['Moviesize'] = intval($analysis['Moviesize']);
		$json2['Tvplaysize'] = intval($analysis['Tvplaysize']);
		$json2['headposition'] = intval($analysis['headposition']);
        $json2['Exclude_content'] = $analysis_connect['Exclude_keywords'];
        $json2['Conditions'] = json_decode($analysis_connect['Sniffing_rules']);
        $json2['header'] = json_decode($analysis_connect['Sniffing_header']);
        $json['code'] = 200;
        $json['encrypt'] = intval($res['Encrypt']);
        $json['data'] =$json2;
        /*防盗验证*/
        if ($res['Anti_theft'] == 0) {
            echo json_encode($json);
        }
        if ($res['Anti_theft'] == 1) {
            echo json_encode($json).getcodes(6);
        }
        if ($res['Anti_theft'] == 2) {
           echo json_encode($json)."嗅探";
        }
        exit;
    }
    exit;
}
/*关键字存在&接口不存在*/
if (empty($analysis['url'])&&!empty($analysis['keyword'])){
    $analysismax = Db::table('analysis')->where('keyword',$analysis['keyword'])->max('Client');
    /*解析状态查询*/
    if ($analysis['state'] == 1) {
        echo jsonstop($url,$id,$analysismax,$res['Timeout'],$res['Anti_theft']);
        exit;
    }
    /*解析记录MYSQL版*/
    if ($res['Analysis_log'] == 1) {
        if (!$analysis_log) {
            /*添加验证*/
            $addanalysis_log = Db::table('analysis_log')->add(['user' => $account, 'appid' => $app, 'token' => $machineid, 'Verify_token' => $machineid, 'Finally_time' => time(), 'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day')))]);
        }else {
            /*更新验证*/
            $updateanalysis_log = Db::table('analysis_log')->where(['user' => $account, 'appid' => $app])->update(['token' => $machineid , 'analysis_number' => $analysis_number+1, 'Finally_time' => time(), 'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day')))]);
        }
    }
    /*解析记录Redis版*/
    if ($res['Analysis_log'] == 2) {
        if (!$analysis_log) {
            /*添加验证*/
            $redis->hMSet('analysis_log:' . $account . ':' . $app, [
                'user' => $account,
                'appid' => $app,
                'token' => $machineid,
                'Verify_token' => $machineid,
                'analysis_number' => 0,
                'Offsite_mumber' => 0,
                'Risk_number' => 0,
                'Offsite_mumber' => 0,
                'Finally_time' => time(),
                'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day')))
            ]);
        } else {
            /*更新验证*/
            $redis->hMSet('analysis_log:' . $account . ':' . $app, [
                'token' => $machineid,
                'analysis_number' => $analysis_number + 1,
                'Finally_time' => time(),
                'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day')))
            ]);
        }
    }
    /*查询解析后标头*/
    if (empty($analysis['header'])) {
        /*全局标头*/
        $json_headers = '{"User-Agent":" '.$res['UA'].'"}';
    }else{
        /*自定义标头*/
        $data = json_decode($analysis['header'], true);
        foreach ($data as $key => $value) {
            $data[$key] = ' '.$value;
        }
        $json_headers = json_encode($data);
    }
    /*验证加密*/
    if ($res['Encrypt'] == 1) {
        if (empty($new)) {
            $json2['url'] = mi_rc4(replaceChineseAndSpaceWithUtf8($url),$app_res['appkey'],0);
        }else {
            $json2['url'] = mi_rc4s(replaceChineseAndSpaceWithUtf8($url),$app_res['appkey'],0);
        }
    }else {
        $json2['url'] = replaceChineseAndSpaceWithUtf8($url);
    }
    if (Abstract_analysis_settings == 1 ) {
        if (strstr($url, ".m3u8") == true || strstr($url, ".mp4") == true) {
            $json2['Type'] = 0;
        } else {
            $json2['Type'] = 1;
        }
    }else{
        $json2['Type'] = 0;
    }
    $json2['ClientID'] = intval($id);
    $json2['MaxClientID'] = intval($analysismax);
    $json2['Maxtimeout'] = intval($res['Timeout']);
	$json2['Core'] = intval($analysis['Core']);
	$json2['Ad_block'] = intval($analysis['Ad_block']);
	$json2['position'] = intval($analysis['position']);
	$json2['Safe'] = intval($analysis['Safe']);
	$json2['Ewmsize'] = intval($analysis['Ewmsize']);
	$json2['EwmWidth'] = intval(explode("|", $analysis['Ewm_Width_Height'])[0]);
	$json2['EwmHeight'] = intval(explode("|", $analysis['Ewm_Width_Height'])[1]);
	$json2['Moviesize'] = intval($analysis['Moviesize']);
	$json2['Tvplaysize'] = intval($analysis['Tvplaysize']);
	$json2['headposition'] = intval($analysis['headposition']);
    $json2['Exclude_content'] = "m3u8.pw";
    $json2['Conditions'] = json_decode('{"m3u8":".m3u8","mp4":".mp4","flv":".flv","mkv":".mkv"}');
    $json2['header'] = json_decode($json_headers);
    $json['code'] = 200;
    $json['encrypt'] = intval($res['Encrypt']);
    $json['data'] =$json2;
    /*防盗验证*/
    if ($res['Anti_theft'] == 0) {
        echo json_encode($json);
    }
    if ($res['Anti_theft'] == 1) {
        echo json_encode($json).getcodes(6);
    }
    if ($res['Anti_theft'] == 2) {
        if (Abstract_analysis_settings == 1 ) {
            if (strstr($url, ".m3u8") == true || strstr($url, ".mp4") == true) {
                echo json_encode($json)."无解析直连";
            } else {
                echo json_encode($json)."无解析嗅探";
            }
        }else{
            echo json_encode($json)."无解析直连";
        }
    }
    exit;
}
/*其他*/
/*解析记录MYSQL版*/
if ($res['Analysis_log'] == 1) {
    if (!$analysis_log) {
        /*添加验证*/
        $addanalysis_log = Db::table('analysis_log')->add(['user' => $account, 'appid' => $app, 'token' => $machineid, 'Verify_token' => $machineid, 'Finally_time' => time(), 'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day')))]);
    }else {
        /*更新验证*/
        $updateanalysis_log = Db::table('analysis_log')->where(['user' => $account, 'appid' => $app])->update(['token' => $machineid , 'analysis_number' => $analysis_number+1, 'Finally_time' => time(), 'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day')))]);
    }
}
/*解析记录Redis版*/
if ($res['Analysis_log'] == 2) {
    if (!$analysis_log) {
        /*添加验证*/
        $redis->hMSet('analysis_log:' . $account . ':' . $app, [
            'user' => $account,
            'appid' => $app,
            'token' => $machineid,
            'Verify_token' => $machineid,
            'analysis_number' => 0,
            'Offsite_mumber' => 0,
            'Risk_number' => 0,
            'Offsite_mumber' => 0,
            'Finally_time' => time(),
            'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day')))
        ]);
    } else {
        /*更新验证*/
        $redis->hMSet('analysis_log:' . $account . ':' . $app, [
            'token' => $machineid,
            'analysis_number' => $analysis_number + 1,
            'Finally_time' => time(),
            'Unseal_time' => strtotime(date('Y-m-d', strtotime('+1 day')))
        ]);
    }
}
$analysis = Db::table('analysis')->where('keyword',$line)->find();
/*关键字存在不标准*/
if (!empty($analysis['keyword'])) {
    $analysismax = Db::table('analysis')->where('keyword',$analysis['keyword'])->max('Client');
    $url = "";
}else{
    $analysismax = $id;
}
/*验证加密*/
if ($res['Encrypt'] == 1) {
    if (empty($new)) {
        $json2['url'] = mi_rc4(replaceChineseAndSpaceWithUtf8($url),$app_res['appkey'],0);
    }else {
        $json2['url'] = mi_rc4s(replaceChineseAndSpaceWithUtf8($url),$app_res['appkey'],0);
    }
}else {
    $json2['url'] = replaceChineseAndSpaceWithUtf8($url);
}
if (Abstract_analysis_settings == 1 ) {
    if (strstr($url, ".m3u8") == true || strstr($url, ".mp4") == true) {
        $json2['Type'] = 0;
    } else {
        $json2['Type'] = 1;
    }
}else{
    $json2['Type'] = 0;
}
// $json2['ClientID'] = intval($id);
// $json2['MaxClientID'] = intval($id);
$json2['ClientID'] = intval($id);
$json2['MaxClientID'] = intval($analysismax);
$json2['Maxtimeout'] = intval($res['Timeout']);
$json2['Core'] = intval(99);
$json2['Ad_block'] = intval(0);
$json2['position'] = intval(0);
$json2['Safe'] = intval(0);
$json2['Ewmsize'] = intval(250);
$json2['EwmWidth'] = intval(0);
$json2['EwmHeight'] = intval(0);
$json2['Moviesize'] = intval(120);
$json2['Tvplaysize'] = intval(70);
$json2['headposition'] = intval(0);
$json2['Exclude_content'] = "m3u8.pw";
$json2['Conditions'] = json_decode('{"m3u8":".m3u8","mp4":".mp4","flv":".flv","mkv":".mkv"}');
$json2['header'] = json_decode('{"User-Agent":" '.$res['UA'].'"}');
$json['code'] = 200;
$json['encrypt'] = intval($res['Encrypt']);
$json['data'] =$json2;
/*防盗验证*/
if ($res['Anti_theft'] == 0) {
    echo json_encode($json);
}
if ($res['Anti_theft'] == 1) {
    echo json_encode($json).getcodes(6);
}
if ($res['Anti_theft'] == 2) {
    if (Abstract_analysis_settings == 1 ) {
        if (strstr($url, ".m3u8") == true || strstr($url, ".mp4") == true) {
            echo json_encode($json)."无编码直连";
        } else {
            echo json_encode($json)."无编码嗅探";
        }
    }else{
        echo json_encode($json)."无编码直连";
    }
}
exit;
?>