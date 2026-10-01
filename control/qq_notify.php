<?php
/* *
 * 功能：如意木皆支付异步通知页面
 * 说明：
 * 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 * 该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 *************************页面功能说明*************************
 * 创建该页面文件时，请留心该页面文件中无任何HTML代码及空格。
 * 该页面不能在本机电脑测试，请到服务器上做测试。请确保外部可以访问该页面。
 * 该页面调试工具请使用写文本函数logResult，该函数已被默认关闭，见alipay_notify_class.php中的函数verifyNotify
 */

$_GET     && SafeFilter($_GET);
$_POST    && SafeFilter($_POST);
$_COOKIE  && SafeFilter($_COOKIE);

function SafeFilter (&$arr){
  $ra=Array('/([\x00-\x08,\x0b-\x0c,\x0e-\x19])/','/script/','/javascript/','/vbscript/','/expression/','/applet/','/meta/','/xml/','/blink/','/link/','/style/','/embed/','/object/','/frame/','/layer/','/title/','/bgsound/','/base/','/onload/','/onunload/','/onchange/','/onsubmit/','/onreset/','/onselect/','/onblur/','/onfocus/','/onabort/','/onkeydown/','/onkeypress/','/onkeyup/','/onclick/','/ondblclick/','/onmousedown/','/onmousemove/','/onmouseout/','/onmouseover/','/onmouseup/','/onunload/');
  if (is_array($arr)){
    foreach ($arr as $key => $value){
      if(!is_array($value)){
        if (!get_magic_quotes_gpc()){             //不对magic_quotes_gpc转义过的字符使用addslashes(),避免双重转义。
          $value=addslashes($value);           //给单引号（'）、双引号（"）、反斜线（\）与 NUL（NULL 字符）加上反斜线转义
        }
        $value=preg_replace($ra,'',$value);     //删除非打印字符，粗暴式过滤xss可疑字符串
        $arr[$key]     = htmlentities(strip_tags($value)); //去除 HTML 和 PHP 标记并转换为 HTML 实体
      }else{
        SafeFilter($arr[$key]);
      }
    }
  }
}


include("include/global.php");


$order = isset($_GET['out_trade_no']) && !empty($_GET['out_trade_no']) ? purge($_GET['out_trade_no']) : die('fail');

$order_res = Db::table('goods_order','as O')->field('O.*,G.appid,G.type,G.amount,A.pay_qq_eid,A.pay_qq_ekey')->JOIN("goods","as G",'O.gid=G.id')->JOIN("app",'as A','G.appid=A.id')->where(['O.order'=>$order])->find();//false
if(!$order_res)die('fail');

//商户ID
$alipay_config['partner']= $order_res['pay_qq_eid'];
//商户KEY
$alipay_config['key']= $order_res['pay_qq_ekey'];
//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

//签名方式 不需修改
$alipay_config['sign_type']= strtoupper('MD5');
//字符编码格式 目前支持 gbk 或 utf-8
$alipay_config['input_charset']= strtolower('utf-8');
//访问模式,根据自己的服务器是否支持ssl访问，若支持请选择https；若不支持请选择http
$alipay_config['transport']= ($_SERVER['SERVER_PORT']==443) ? 'https':'http';

//支付API地址
$alipay_config['apiurl']= (($_SERVER['SERVER_PORT']==443) ? 'https':'http').'://'.$_SERVER['HTTP_HOST'].'/';
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
require_once("include/class/epay/epay_notify.class.php");
//计算得出通知验证结果
$alipayNotify = new AlipayNotify($alipay_config);
$verify_result = $alipayNotify->verifyNotify();

if($verify_result) {//验证成功
	$trade_no = $_GET['trade_no'];//支付交易号
	$type = $_GET['type'];//支付方式
	$money = $_GET['money'];//支付金额
	$data = json_encode($_GET);
	if ($_GET['trade_status'] == 'TRADE_SUCCESS' and $order_res['state'] == 0) {
		$res_user = Db::table('user')->where(['id'=>$order_res['uid']])->find();//false
		if(!$res_user){
			$state = 3;//用户不存在
		}else{
			if($order_res['type'] == 'vip'){
				if($res_user['vip'] == 999999999){
					$state = 9;//该用户已是VIP会员
				}elseif($res_user['vip']>time()||$res_user['vip']<time()){
					if($order_res['amount'] == 9999){
						$vip = 999999999;
					}else{
					    if ($res_user['vip']>time()) {
					        $vip = $res_user['vip'] + $order_res['amount'] * 86400;
					    }else{
					        $vip = time() + $order_res['amount'] * 86400;
					    }
					}
				}else{
					$vip = time() + $order_res['amount'] * 86400;
				}
				$res = Db::table('user')->where('id',$res_user['id'])->update(['vip'=>$vip]);

				$app_res = Db::table('app')->where('id',$res_user['appid'])->find();//查出付款者归属哪个APP
				$daili_res = Db::table('daili')->where('user',$app_res['return'])->find();//查出APP归属哪个代理
				$daili_up = Db::table('daili')->where('user',$app_res['return'])->update(['money'=>$daili_res['money']+$money*(1-paycost)]);//把充值金额写进代理用户名下
				
				$daili_log = Db::table('daili_sr_order')->add(["uid" => $app_res['return'],"order" =>$order,"time" =>time(),"name" =>'用户:'.$res_user['user'].'会员续费',"money" =>$money*(1-paycost),"balance" =>$daili_res['money'] + +$money*(1-paycost)]);//写入代理收入记录
				//$daili_log = Db::table('daili_sr_order')->add(["uid" => $app_res['return'],"order" =>date("YmdHis",time()).time(),"time" =>time(),"name" =>'用户:'.$res_user['user'].'会员续费',"money" =>$money,"balance" =>$daili_res['money'] + $money]);//写入代理收入记录

				if($res){
					$state = 2;//成功
				}else{
					$state = 1;//失败
				}
			}elseif($order_res['type'] == 'fen'){
				$fen = $res_user['fen'] + $order_res['amount'];
				$res = Db::table('user')->where('id',$res_user['id'])->update(['fen'=>$fen]);
				if($res){
					$state = 2;//成功
				}else{
					$state = 1;//失败
				}
			}else{
				$state = 4;//未知商品类型
			}
		}
		$update = ['data'=>$data,'state'=>$state,'p_time'=>time()];
		// $update = ['data'=>$data,'state'=>$state];
    }else{
		$update = ['data'=>$data];
	}
	Db::table('goods_order')->where('id',$order_res['id'])->update($update);
	echo "success";		//请不要修改或删除
	if(defined('USER_LOG') && USER_LOG == 1){
		if($state == 2){
			Db::table('log')->add(['uid'=>$res_user['id'],'type'=>'pay_success','status'=>200,$order_res['type']=>$order_res['amount'],'time'=>time(),'ip'=>getip(),'appid'=>$order_res['appid']]);//记录日志
		}else{
			Db::table('log')->add(['uid'=>$order_res['uid'],'type'=>'pay_success','status'=>201,'time'=>time(),'ip'=>getip(),'appid'=>$order_res['appid']]);//记录日志
		}
	}
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}else{//验证失败
	Db::table('goods_order')->where('id',$order_res['id'])->update(['data'=>'fail']);
    echo "fail";//请不要修改或删除
	if(defined('USER_LOG') && USER_LOG == 1){
		Db::table('log')->add(['uid'=>$order_res['uid'],'type'=>'pay_success','status'=>201,'time'=>time(),'ip'=>getip(),'appid'=>$order_res['appid']]);//记录日志
	}
}
die();
?>