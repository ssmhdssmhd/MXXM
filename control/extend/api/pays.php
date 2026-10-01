<?php
/*
 Name:网页支付
 Version:1.0
*/
	if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	//if($app_res['logon_way'] != 0)out(164,$app_res);//不是账号登录方式不允许使用当前操作
	
	$ua = isset($data_arr['ua']) && !empty($data_arr['ua']) ? intval($data_arr['ua']) : 0;//0=pc(电脑扫码),1=H5(手机唤起),2=如意支付
	
	$order = isset($data_arr['order']) && !empty($data_arr['order']) ? purge($data_arr['order']) : return_code(130,$app_res,$ua);//订单号为空

	//$user = isset($data_arr['user']) && !empty($data_arr['user']) ? purge($data_arr['user']) : return_code(110,$app_res,$ua);//请输账号
	$user = isset($data_arr['user']) && !empty($data_arr['user']) ? purge($data_arr['user']) : "";//请输账号
	if ($user=="undefined"&&$user=="") {echo "<script>location.href='./pay.php?app=".$appid."';</script>";}
	
	$way = isset($data_arr['way']) && !empty($data_arr['way']) ? purge($data_arr['way']) : return_code(131,$app_res,$ua);//支付方式
	$gid = isset($data_arr['gid']) && !empty($data_arr['gid']) ? purge($data_arr['gid']) : return_code(132,$app_res,$ua);//商品ID
	
	$res_goods_order = Db::table('goods_order')->where(['`order`'=>$order])->find();//false
	if ($res_goods_order) {echo "<script>location.href='./pay.php?app=".$appid."';</script>";}
	//if($res_goods_order)return_code(168,$app_res,$ua);//订单已存在
	//$order = date('YmdHis') . str_pad(mt_rand(1, 99999), 5, '0', STR_PAD_LEFT);
	
	//if($app_res['pay_state']=='n' or empty($app_res['pay_url']) or empty($app_res['pay_id']) or empty($app_res['pay_key']))return_code(133,$app_res,$ua);//判断是否可支付
	if($app_res['pay_state']=='n')echo "<script>alert('未开启在线充值');location.href='./pay.php?app=".$appid."';</script>";//判断是否可支付
	
	if ($way=="ali") {
	    /*易支付*/
	    if ($app_res['pay_ali_type']==0) {
	        if($app_res['pay_ali_state']=='n' or empty($app_res['pay_ali_eurl']) or empty($app_res['pay_ali_eid']) or empty($app_res['pay_ali_ekey']))return_code(133,$app_res,$ua);//判断是否可支付
	        if ($app_res['pay_ali_notify']=='') {
	            $pay_notify = $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST'].'/ali_notify.php';
	        }else{
	            $pay_notify = $app_res['pay_ali_notify'];
	        }
	        $pay_urls = $app_res['pay_ali_eurl'];
	        $pay_id = $app_res['pay_ali_eid'];
	        $pay_key = $app_res['pay_ali_ekey'];
	    }
	    /*商户*/
	    if ($app_res['pay_ali_type'] == 1) {
	        //未开发
	    }
	}
	if ($way=="wx") {
	    /*易支付*/
	    if ($app_res['pay_wx_type'] == 0) {
	        if($app_res['pay_wx_state']=='n' or empty($app_res['pay_wx_eurl']) or empty($app_res['pay_wx_eid']) or empty($app_res['pay_wx_ekey']))return_code(133,$app_res,$ua);//判断是否可支付
	        if ($app_res['pay_wx_notify']=='') {
	            $pay_notify = $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST'].'/wx_notify.php';
	        }else{
	            $pay_notify = $app_res['pay_wx_notify'];
	        }
	        $pay_urls = $app_res['pay_wx_eurl'];
	        $pay_id = $app_res['pay_wx_eid'];
	        $pay_key = $app_res['pay_wx_ekey'];
	    }
	    /*商户*/
	    if ($app_res['pay_wx_type'] == 1) {
	        //未开发
	    }
	}
	if ($way=="qq") {
	    /*易支付*/
	    if ($app_res['pay_qq_type'] == 0) {
	        if($app_res['pay_qq_state']=='n' or empty($app_res['pay_qq_eurl']) or empty($app_res['pay_qq_eid']) or empty($app_res['pay_qq_ekey']))return_code(133,$app_res,$ua);//判断是否可支付
	        if ($app_res['pay_qq_notify']=='') {
	            $pay_notify = $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST'].'/qq_notify.php';
	        }else{
	            $pay_notify = $app_res['pay_qq_notify'];
	        }
	        $pay_urls = $app_res['pay_qq_eurl'];
	        $pay_id = $app_res['pay_qq_eid'];
	        $pay_key = $app_res['pay_qq_ekey'];
	    }
	    /*商户*/
	    if ($app_res['pay_qq_type'] == 1) {
	        //未开发
	    }
	}
	
	if(empty($pay_notify))return_code(134,$app_res,$ua);//没有设置异步通知地址
	if($way == 'ali' && $app_res['pay_ali_state'] == 'n')return_code(135,$app_res,$ua);//不支持该支付方式
	if($way == 'wx' && $app_res['pay_wx_state'] == 'n')return_code(135,$app_res,$ua);//不支持该支付方式
	if($way == 'qq' && $app_res['pay_qq_state'] == 'n')return_code(135,$app_res,$ua);//不支持该支付方式
	
	$res_goods = Db::table('goods')->where(['id'=>$gid,'appid'=>$appid])->find();//false
	if(!$res_goods)return_code(136,$app_res,$ua);//商品不存在
	
// 	$res_user = Db::table('user')->where(['appid'=>$appid],"(",")")->where('(user',$user)->whereOr(['email'=>$user,'phone'=>$user],")")->find();//false
	
	$res_user = Db::table('user')->where(['appid'=>$appid])->where('user',$user)->find();//false
	
	//if(!$res_user)return_code(122,$app_res,$ua);//账号不存在
	//if(!$res_user)echo "<script>location.href='./pay.php?app=".$appid."';</script>";//账号不存在
	if(!$res_user){echo "<script>location.href='./pay.php?app=".$appid."';</script>";exit;}//账号不存在

	if(defined('USER_LOG') && USER_LOG == 1){Db::table('log')->add(['uid'=>$res_user['id'],'type'=>$act,'status'=>200,'time'=>time(),'ip'=>getip(),'appid'=>$appid]);}//记录日志

	$o_info = 'money='.$res_goods['money'].'&name='.$res_goods['name'].'&notify_url='.$pay_notify.'&out_trade_no='.$order.'&pid='.$pay_id.'&return_url='.WEB_URL.'/order.php&sitename='.$app_res['name'].'&type='.$way.'pay';
	$sign = md5Sign($o_info,$pay_key);
	$add_res = Db::table('goods_order')->add(['order'=>$order,'uid'=>$res_user['id'],'gid'=>$gid,'name'=>$res_goods['name'],'money'=>$res_goods['money'],'o_time'=>time(),'p_type'=>$way]);//订单入库
	if(!$add_res)return_code(137,$app_res,$ua);//订单入库失败
	$data = $o_info.'&sign='.$sign.'&sign_type=MD5';
	
	if($pay_urls)
	if(strstr($pay_urls,'submit.php')){
		$pay_url = $pay_urls;
	}else{
		$pay_url = $pay_urls.'/submit.php?';
	}
	
	if($ua == 1 or $ua == 2){
		//$retdata = http_post($pay_url,$data,'User-Agent: Mozilla/5.0 (Linux; U; Android 8.1.0; zh-cn; BLA-AL00 Build/HUAWEIBLA-AL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.132 MQQBrowser/8.9 Mobile Safari/537.36');
		header("location:$pay_url$data");
	}else{
		//$retdata = http_post($pay_url,$data);
		header("location:$pay_url$data");
	}
	if(strstr($retdata,'站点提示信息')){
		if(preg_match("/<h3>站点提示信息<\/h3>.*?<\/body>/",$retdata,$ts)){
			$erro_ts = txt_zhong($ts[0],"</h3>",'</body>');
			return_code(138,$app_res,$ua,$erro_ts);
		}else{
			return_code(139,$app_res,$ua);
		}
	}
	echo $retdata;
	return;
	
	
	
	function return_code($code,$app,$ua,$msg='') {
		if($ua == 2){
			echo "<script>location.href='?code=".$code."';</script>";
			return;
		}else{
			out($code,$msg,$app);
		}
	}
	
	function md5Sign($prestr, $key) {
		$prestr = $prestr . $key;
		return md5($prestr);
	}
	
?>