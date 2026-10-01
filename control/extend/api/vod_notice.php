<?php
/*
 Name:获取视频跑马公告通知
 Version:1.0
*/
	if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	$ret = [];
	$notice_res = Db::table('app_vod_notice')->where('appid',$appid)->select();//获取通知列表
	if(is_array($notice_res)){
		foreach ($notice_res as $k => $v){$rows = $notice_res[$k];
			$ret[] = [
				'content' => $rows['content']
			];
		}if (empty($ret)) {
            out(201,$ret,$app_res);
        } else {
            out(200, rawurlencode($rows['content']), $app_res);
        }
	}out(201,'通知列表加载失败',$app_res);
	
?>