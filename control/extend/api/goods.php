<?php
/*
 Name:获取商品
 Version:1.0
*/
    if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	//if($app_res['logon_way'] != 0)out(164,$app_res);//不是账号登录方式不允许使用当前操作
	$ret = [];
	$goods_res = Db::table('goods')->where('appid',$appid)->select();//获取商品列表
	$pay_res = Db::table("app")->where(["id" => $appid])->find();
	if(is_array($goods_res)){
		foreach ($goods_res as $k => $v){
		    $rows = $goods_res[$k];
			if($rows['state'] == 'y'){
				$ret[] = [
					'gid' => $rows['id'],
					'gname' => $rows['name'],
					'gmoney' => $rows['money'],
					'gtype' => $rows['type'],
					'obtain' => $rows['amount'],
					'cv' => $rows['jie'],
					'pay_ali_state' => $pay_res['pay_ali_state'],
            		'pay_ali_name' => "支付宝",
            		'pay_ali_type' => "ali",
            		'pay_wx_state' => $pay_res['pay_wx_state'],
            		'pay_wx_name' => "微信",
            		'pay_wx_type' => "wx",
            		'pay_qq_state' => $pay_res['pay_qq_state'],
            		'pay_qq_name' => "QQ钱包",
            		'pay_qq_type' => "qq",
            		//'pay_other_state' => $pay_res['pay_other_state'],
                    'pay_other_state' => "n",
            		'pay_other_name' => "银联",
            		'pay_other_type' => "other",
            		'clock_state' => $pay_res['diary_award_num'],
            		'vip_card' => "1"
				];
			}
		}
		if (empty($ret)) {
            out(201,$ret,$app_res);
        } else {
            out(200, $ret, $app_res);
        }
	}out(201,'商品读取失败',$app_res);
?>