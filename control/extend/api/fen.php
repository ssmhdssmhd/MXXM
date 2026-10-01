<?php
/*
 Name:获取积分兑换
 Version:1.0
*/
	if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	//if($app_res['logon_way'] != 0)out(164,$app_res);//不是账号登录方式不允许使用当前操作
	
	$ret = [];
	$goods_res = Db::table('fen')->where('appid',$appid)->select();//获取商品列表
	$pay_res = Db::table("app")->where(["id" => $appid])->find();
	if(is_array($goods_res)){
		foreach ($goods_res as $k => $v){
		    $rows = $goods_res[$k];
			if($rows['state'] == 'y'){
				$ret[] = [
					'gid' => $rows['id'],
					'gname' => $rows['name'],
					'fen_num' => $rows['fen_num'],
					'vip_num' => $rows['vip_num']
				];
			}
		}
		$ret [] = [
			'clock_state' => $pay_res['diary_award_num'],
			'inv_state' => $pay_res['inv_award_num']
			];
		out(200,$ret,$app_res);/*201不显示积分兑换*/
	}out(201,'商品读取失败',$app_res);
	
?>