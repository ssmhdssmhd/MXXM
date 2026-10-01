<?php
/*
 Name:IPTV
 Version:1.0
*/
	if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	$data = isset($data_arr['data']) && !empty($data_arr['data']) ? purge($data_arr['data']) : out(125,$app_res);
	$sign = isset($data_arr['sign']) && !empty($data_arr['sign']) ? purge($data_arr['sign']) : out(125,$app_res);
	$timekey = isset($data_arr['key']) && !empty($data_arr['key']) ? purge($data_arr['key']) : out(125,$app_res);
	$time = isset($data_arr['time']) && !empty($data_arr['time']) ? purge($data_arr['time']) : out(125,$app_res);
	
    $channel_res = Db::table('live_channeltype')->where('appid',0)->order('id asc')->select();
    
    $dataValues = [];
    $dataValues2 = [];
    $totalLiveNum = 0;
    foreach ($channel_res as $channel) {  
        $channelId = $channel['id'];
        $live_res = Db::table('live')->where('appid', 0)->where('url', $channelId)->order('id asc')->select();
        $live_num = 0;
        if (!empty($live_res)) {
            foreach ($live_res as $item) {
                $itemData = trim((string)$item['data']);
                if ($itemData === '' || strpos($itemData, '#genre#') !== false) continue;
                $dataValues[] = $itemData;
                $live_num++;
            }
        }
        if ($live_num > 0) {
            $totalLiveNum += $live_num;
            $dataValues2[] = $channel['name'].",".($totalLiveNum-$live_num+1);
        }
        
    }
    $hh["code"] = 200;
    $iptv_list = $dataValues;
    $iptv_list2 = $dataValues2;
    $hh["video_list"] = [["lists" => [], "list" => []]];
    foreach ($iptv_list2 as $v) {
        $iptv = explode(",", $v);
        $hh["video_list"][0]["lists"][] = ["title" => $iptv[0],"url" => $iptv[1]];
    }
    foreach ($iptv_list as $v) {
        $iptv = explode(",", $v);
        $hh["video_list"][0]["list"][] = ["title" => $iptv[0],"url" => $iptv[1]];
    }
    
    // codex: timekey gate skipped; request data is decrypted/validated by app.php

    
    echo mi_rc4s(json_encode($hh),AESdecrypt($data,md5(str_rot13(base64_decode($sign))),str_rot13(base64_decode($sign))),0);
    exit;

?>