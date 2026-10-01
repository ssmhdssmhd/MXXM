<?php
/*
 Name:充值卡密
 Version:1.0
*/
	if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	
	$user = isset($data_arr['account']) && !empty($data_arr['account']) ? purge($data_arr['account']) : out(110,rawurlencode("请填写账号"),$app_res);//请输入账号
	$kami = isset($data_arr['kami']) && !empty($data_arr['kami']) ? purge($data_arr['kami']) : out(148,rawurlencode("卡密为空"),$app_res);//卡密为空
	$res_kami = Db::table('kami')->where('appid',$appid)->where('kami',$kami)->find();//false
	if(!$res_kami)out(149,rawurlencode("卡密不存在"),$app_res);//卡密不存在
	if(!empty($res_kami['user']) or !empty($res_kami['use_time']))out(150,rawurlencode("卡密已使用"),$app_res);//卡密已使用
	if($res_kami['state'] == 'n')out(151,rawurlencode("卡密已被禁用"),$app_res);//卡密被禁用
	if(!empty($user)){
		$res_user = Db::table('user')->where(['appid'=>$appid])->where('user',$user)->find();//false
		if(!$res_user)out(122,rawurlencode("账号不存在"),$app_res);//账号不存在
		if($res_user['ban'] > time())out(114,rawurlencode("账号已被禁用"),$res_user['ban_notice'],$app_res);//账号被禁用
		if($res_kami['type'] == 'vip'){
		    //if($res_user['vip'] > time()-432000||$res_user['vip'] >= time())out(149,$app_res);//非到期账户
			if($res_user['vip'] == '999999999')out(199,rawurlencode("您已经是永久会员了"),$app_res);//已经是永久会员了
			if($res_user['vip'] > time()){//没有过期

				if ($res_kami['amount']=='999999999') {
					$vip = '999999999';
				}else{
					$vip = $res_user['vip'] + 86400 * $res_kami['amount'];
				}
				
			}else{//已过期

				if ($res_kami['amount']=='999999999') {
					$vip = '999999999';
				}else{
					$vip = time() + 86400 * $res_kami['amount'];
				}
				
			}
			$res = Db::table('user')->where('id',$res_user['id'])->update(['vip'=>$vip]);//更新用户资料
			if($res){
				Db::table('kami')->where('id',$res_kami['id'])->update(['use_time'=>time(),'user'=>$user]);//更新卡密信息
				if(defined('USER_LOG') && USER_LOG == 1){
					Db::table('log')->add(['uid'=>$res_user['id'],'type'=>$act,'status'=>200,'vip'=>$res_kami['amount'],'time'=>time(),'ip'=>getip(),'appid'=>$appid]);//记录日志
				}
				out(200,rawurlencode("充值成功"),$app_res);
			}else{
				if(defined('USER_LOG') && USER_LOG == 1){
					Db::table('log')->add(['uid'=>$res_user['id'],'type'=>$act,'status'=>201,'vip'=>$res_kami['amount'],'time'=>time(),'ip'=>getip(),'appid'=>$appid]);//记录日志
				}
				out(201,rawurlencode("充值失败"),$app_res);
			}
		}elseif($res_kami['type'] == 'fen'){
			$fen = $res_user['fen'] + $res_kami['amount'];
			$res = Db::table('user')->where('id',$res_user['id'])->update(['fen'=>$fen]);//更新用户资料
			if($res){
				Db::table('kami')->where('id',$res_kami['id'])->update(['use_time'=>time(),'user'=>$user]);//更新卡密信息
				if(defined('USER_LOG') && USER_LOG == 1){
					Db::table('log')->add(['uid'=>$res_user['id'],'type'=>$act,'status'=>200,'fen'=>$res_kami['amount'],'time'=>time(),'ip'=>getip(),'appid'=>$appid]);//记录日志
				}
				out(200,rawurlencode("充值成功"),$app_res);
			}else{
				if(defined('USER_LOG') && USER_LOG == 1){
					Db::table('log')->add(['uid'=>$res_user['id'],'type'=>$act,'status'=>201,'fen'=>$res_kami['amount'],'time'=>time(),'ip'=>getip(),'appid'=>$appid]);//记录日志
				}
				out(201,rawurlencode("充值失败"),$app_res);
			}
		}
	}else{
		out(201,rawurlencode("未知充值对象"),$app_res);
	}
	
	
	
	
	
	
	
	
// 	if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	
// 	if($app_res['logon_way'] == 0){
// 		$user = isset($data_arr['account']) && !empty($data_arr['account']) ? purge($data_arr['account']) : out(110,rawurlencode("请填写账号"),$app_res);//请输入账号
// 	}elseif($app_res['logon_way'] == 1){
// 		$mainkm = isset($data_arr['mainkm']) && !empty($data_arr['mainkm']) ? purge($data_arr['mainkm']) : out(110,rawurlencode("请输入出卡密"),$app_res);//主卡密
// 	}
// 	$kami = isset($data_arr['kami']) && !empty($data_arr['kami']) ? purge($data_arr['kami']) : out(148,rawurlencode("卡密为空"),$app_res);//卡密为空
// 	if(!empty($user) && !empty($mainkm))out(166,rawurlencode("一张被充值的卡密只能充值给一个账号或者一张主卡密"),$app_res);//一张被充值的卡密只能充值给一个账号或者一张主卡密
// 	$res_kami = Db::table('kami')->where('appid',$appid)->where('kami',$kami)->find();//false
// 	if(!$res_kami)out(149,rawurlencode("卡密不存在"),$app_res);//卡密不存在
// 	if(!empty($res_kami['user']) or !empty($res_kami['use_time']))out(150,rawurlencode("卡密已使用"),$app_res);//卡密已使用
// 	if($res_kami['state'] == 'n')out(151,rawurlencode("卡密已被禁用"),$app_res);//卡密被禁用
	
// 	if(!empty($user)){
	    
// // 		$res_user = Db::table('user')->where(['appid'=>$appid],"(",")")->where('(user',$user)->whereOr(['email'=>$user,'phone'=>$user],")")->find();//false
		
// 		$res_user = Db::table('user')->where(['appid'=>$appid])->where('user',$user)->find();//false
		
// 		if(!$res_user)out(122,rawurlencode("账号不存在"),$app_res);//账号不存在
// 		if($res_user['ban'] > time())out(114,rawurlencode("账号已被禁用"),$res_user['ban_notice'],$app_res);//账号被禁用
// 		if($res_kami['type'] == 'vip'){
// 		    //if($res_user['vip'] > time()-432000||$res_user['vip'] >= time())out(149,$app_res);//非到期账户
// 			if($res_user['vip'] == '999999999')out(199,rawurlencode("您已经是永久会员了"),$app_res);//已经是永久会员了
// 			if($res_user['vip'] > time()){//没有过期

// 				if ($res_kami['amount']=='999999999') {
// 					$vip = '999999999';
// 				}else{
// 					$vip = $res_user['vip'] + 86400 * $res_kami['amount'];
// 				}
				
// 			}else{//已过期

// 				if ($res_kami['amount']=='999999999') {
// 					$vip = '999999999';
// 				}else{
// 					$vip = time() + 86400 * $res_kami['amount'];
// 				}
				
// 			}
// 			$res = Db::table('user')->where('id',$res_user['id'])->update(['vip'=>$vip]);//更新用户资料
// 			if($res){
// 				Db::table('kami')->where('id',$res_kami['id'])->update(['use_time'=>time(),'user'=>$user]);//更新卡密信息
// 				if(defined('USER_LOG') && USER_LOG == 1){
// 					Db::table('log')->add(['uid'=>$res_user['id'],'type'=>$act,'status'=>200,'vip'=>$res_kami['amount'],'time'=>time(),'ip'=>getip(),'appid'=>$appid]);//记录日志
// 				}
// 				out(200,rawurlencode("充值成功"),$app_res);
// 			}else{
// 				if(defined('USER_LOG') && USER_LOG == 1){
// 					Db::table('log')->add(['uid'=>$res_user['id'],'type'=>$act,'status'=>201,'vip'=>$res_kami['amount'],'time'=>time(),'ip'=>getip(),'appid'=>$appid]);//记录日志
// 				}
// 				out(201,rawurlencode("充值失败"),$app_res);
// 			}
// 		}elseif($res_kami['type'] == 'fen'){
// 			$fen = $res_user['fen'] + $res_kami['amount'];
// 			$res = Db::table('user')->where('id',$res_user['id'])->update(['fen'=>$fen]);//更新用户资料
// 			if($res){
// 				Db::table('kami')->where('id',$res_kami['id'])->update(['use_time'=>time(),'user'=>$user]);//更新卡密信息
// 				if(defined('USER_LOG') && USER_LOG == 1){
// 					Db::table('log')->add(['uid'=>$res_user['id'],'type'=>$act,'status'=>200,'fen'=>$res_kami['amount'],'time'=>time(),'ip'=>getip(),'appid'=>$appid]);//记录日志
// 				}
// 				out(200,rawurlencode("充值成功"),$app_res);
// 			}else{
// 				if(defined('USER_LOG') && USER_LOG == 1){
// 					Db::table('log')->add(['uid'=>$res_user['id'],'type'=>$act,'status'=>201,'fen'=>$res_kami['amount'],'time'=>time(),'ip'=>getip(),'appid'=>$appid]);//记录日志
// 				}
// 				out(201,rawurlencode("充值失败"),$app_res);
// 			}
// 		}
// 	}elseif(!empty($mainkm)){
// 		$res_mainkm = Db::table('kami')->where('appid',$appid)->where('kami',$mainkm)->find();//false
// 		if(!$res_mainkm)out(149,rawurlencode("主卡密不存在"),$app_res);//卡密不存在
// 		if($res_mainkm['state'] == 'n')out(151,rawurlencode("主卡密被禁用"),$app_res);//卡密被禁用
// 		if($res_kami['type'] != $res_mainkm['type'])out(152,rawurlencode("主卡密和充值卡密类型不一样"),$app_res);//主卡密和充值卡密类型不一样
// 		if($res_kami['type'] == 'vip'){
// 			if($res_mainkm['end_time'] == '999999999')out(199,rawurlencode("您已经是永久会员了"),$app_res);//已经是永久会员了
// 			if($res_mainkm['end_time'] > time()){//没有过期
// 				$vip = $res_user['vip'] + 86400 * $res_kami['amount'];
// 			}else{//已过期
// 				$vip = time() + 86400 * $res_kami['amount'];
// 			}
// 			$res = Db::table('kami')->where('id',$res_mainkm['id'])->update(['end_time'=>$vip]);//更新卡密信息
// 			if(!$res)out(201,rawurlencode("充值失败"),$app_res);
// 			Db::table('kami')->where('id',$res_kami['id'])->update(['use_time'=>time(),'user'=>$mainkm]);//更新卡密信息
// 			out(200,rawurlencode("充值成功"),$app_res);
// 		}elseif($res_kami['type'] == 'fen'){
// 			$fen = $res_mainkm['amount'] + $res_kami['amount'];
// 			$res = Db::table('kami')->where('id',$res_mainkm['id'])->update(['amount'=>$fen]);//更新卡密信息
// 			if(!$res)out(201,rawurlencode("充值失败"),$app_res);
// 			Db::table('kami')->where('id',$res_kami['id'])->update(['use_time'=>time(),'user'=>$mainkm]);//更新卡密信息
// 			out(200,rawurlencode("充值成功"),$app_res);
// 		}
// 	}else{
// 		out(201,rawurlencode("未知充值对象"),$app_res);
// 	}
?>