<?php
/*
 Name:获取跑马公告通知
 Version:1.0
*/
	if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	$ret = [];
	$tianqiapi = "";
	$notice_res = Db::table('app_notices')->where('appid',$appid)->select();//获取通知列表
	$analysis_set_res = Db::table('analysis_set','as A')->field('A.*')->find();
	if ($analysis_set_res['Weather_switch'] == 1) {
	    /*天气接口*/
	    $url = 'https://v1.yiketianqi.com/api?unescape=1&version=v91&appid='.$analysis_set_res['Weather_Appid'].'&appsecret='.$analysis_set_res['Weather_Appsecret'].'&ip='.getIp();
	    $J = json_decode(analysiscurl($url, $header, 5));
        $liebiao = $J->data[0]; // 获取列表
        $date = $liebiao->date; // 时间
        $week = $liebiao->week; // 星期
        $wea = $liebiao->wea; // 实时天气情况
        $tem = $liebiao->tem; // 实时温度
        $tem1 = $liebiao->tem1; // 最高温度
        $tem2 = $liebiao->tem2; // 最低温度
        $win = $liebiao->win; // 风向
        $wins = $win[0] . "转" . $win[1]; // 风向
        $win_speed = $liebiao->win_speed; // 风力等级
        $humidity = $liebiao->humidity; // 湿度
        $air_level = $liebiao->air_level; // 空气质量
        if (empty($date)) {
            $tianqiapi = "";
        }else {
            $tianqiapi = "今天是: {$date} {$week} {$J->city} {$wea} 当前{$tem}℃ 最高{$tem1}℃ 最低{$tem2}℃ {$wins} {$win_speed} 空气质量: {$air_level}";
        }
	}
	if(is_array($notice_res)){
		foreach ($notice_res as $k => $v){$rows = $notice_res[$k];
			$ret[] = [
				'content' => $rows['content']
			];
		}
		if (empty($ret) && empty($tianqiapi)) {
            out(201,$ret,$app_res);
        } else {
            out(200, rawurlencode($rows['content']."      ".$tianqiapi), $app_res);
        }
	}out(201,'通知列表加载失败',$app_res);
?>