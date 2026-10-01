<?php
/*
Name:网页支付/修改密码
Version:1.0
*/
//php防注入和XSS攻击通用过滤.
$_GET     && SafeFilter($_GET);
$_POST    && SafeFilter($_POST);
$_COOKIE  && SafeFilter($_COOKIE);
function SafeFilter (&$arr) {
    $ra=Array('/([\x00-\x08,\x0b-\x0c,\x0e-\x19])/','/script/','/javascript/','/vbscript/','/expression/','/applet/','/meta/','/xml/','/blink/','/link/','/style/','/embed/','/object/','/frame/','/layer/','/title/','/bgsound/','/base/','/onload/','/onunload/','/onchange/','/onsubmit/','/onreset/','/onselect/','/onblur/','/onfocus/','/onabort/','/onkeydown/','/onkeypress/','/onkeyup/','/onclick/','/ondblclick/','/onmousedown/','/onmousemove/','/onmouseout/','/onmouseover/','/onmouseup/','/onunload/');
    if (is_array($arr)) {
       foreach ($arr as $key => $value) {
           if(!is_array($value)){
                if (!get_magic_quotes_gpc()) {
                    $value=addslashes($value);
                }
                $value=preg_replace($ra,'',$value);
                $arr[$key]     = htmlentities(strip_tags($value));
            } else {
                SafeFilter($arr[$key]);
            }
        }
    }
}
require 'include/global.php';
$app = isset($_GET["app"]) ? purge($_GET["app"]) : "";
$act = isset($_GET["act"]) ? purge($_GET["act"]) : "";
/*用户登录*/
if ($act == "web_user_logon") {
	$account= isset($_POST["account"]) ? purge($_POST["account"]) : "";
	$password= isset($_POST["password"]) ? purge($_POST["password"]) : "";
	if (!$_POST['account']) json(201,'请输入账号');
	if (!$_POST['password'])json(201,'请输入密码');
	$user_res = Db::table('user')->where(['user'=>$account,'pwd'=>md5($password),'appid'=>$_GET['app']])->find();
	if(!$user_res) {
		json(201,'账户不存在或密码错误');
	} else {
	    if ($user_res['ban'] =="999999999"||$user_res['ban'] >=time()) {
	        if ($user_res['ban'] =="999999999") {
	            $time="账户已被永久封禁";
	        } else {
	            $time = '该账户于'.date("Y/m/d H:i",$user_res['ban'])."解封";
	        }
		    json(201,$time);
	    }
	    
		if ($user_res['vip'] =="999999999") {
	        $vip = ($user_res['vip'] !="999999999") ? "已过期" : "会员至:永不到期" ;
		    $vip1 = ($user_res['vip'] !="999999999") ? 0 : 1 ;
		    $pic = ($user_res['vip'] !="999999999") ? "novip.png" : "vip.png";
		    $data = ['ug'=>$vip1,'pic'=>"./data/pic/".$pic,'phone'=>$user_res['email'],'name'=>$user_res['name'],'vip'=>$vip,"fen"=>$user_res['fen']];
		    json(200,$data);
	    } else {
	        $vip = ($user_res['vip'] < time()) ? "已过期" : "会员至:".date("Y/m/d H:i",$user_res['vip']) ;
		    $vip1 = ($user_res['vip'] < time()) ? 0 : 1 ;
		    $pic = ($user_res['vip'] < time()) ? "novip.png" : "vip.png";
		    $data = ['ug'=>$vip1,'pic'=>"./data/pic/".$pic,'phone'=>$user_res['email'],'name'=>$user_res['name'],'vip'=>$vip,"fen"=>$user_res['fen']];
		    json(200,$data);
	    }
	}
}
/*绑定邮箱号*/
if ($act == "web_user_bind") {
	$account= isset($_POST["account"]) ? purge($_POST["account"]) : "";
	$phone= isset($_POST["phone"]) ? purge($_POST["phone"]) : "";
	$code= isset($_POST["code"]) ? purge($_POST["code"]) : "";
	if (!$_POST['code']) json(201,'验证码为空');
	if (!$_POST['phone'])json(201,'邮箱号不能为空');
	if (!check_email($phone))json(201,'邮箱号码格式不正确');
	$captcha_res = Db::table('captcha')->order(['appid'=>$_GET['app'],'email'=>$phone])->order('id desc')->limit('0','1')->find();
	if ($code != $captcha_res['code'])json(201,'验证码不正确');
	if ($captcha_res['new'] =='n')json(201,'验证码已过期');
	$add_res = Db::table('user')->where(["user"=>$account,"appid"=>$_GET['app']])->update(["email"=>$phone]);
	Db::table('captcha')->where(["appid"=>$_GET['app'],'email'=>$phone])->update(['new'=>'n']);
	if($add_res){
		json(200,'绑定成功');
	}json(201,'绑定失败');
}
/*发送验证码*/
if ($act == "web_sms") {
	$account= isset($_POST["account"]) ? purge($_POST["account"]) : "";
	$phone= isset($_POST["phone"]) ? purge($_POST["phone"]) : "";
	$type= isset($_POST["type"]) ? purge($_POST["type"]) : "";
	if (!$_POST['account']) json(201,'请输入账号');
	if (!$_POST['phone'])json(201,'邮箱号不能为空');
	/*绑定邮箱*/
	if ($type == "bind") {
	    if (!check_email($phone))json(201,'邮箱号码格式不正确');
	    $user_res = Db::table('user')->where(['user'=>$account,'appid'=>$_GET['app']])->find();
    	if(!$user_res) {
    		json(201,'账户不存在');
    	}else {
    		if ($user_res['email'])json(201,'账户已绑定');
    	}
	    $app_res = Db::table('app')->where(['id'=>$_GET['app']])->find();

    	$app = $_GET['app'];
        $appkey = $app_res['appkey'];
        $email = $phone;
        $type = "bind";
    	$t = time();
        $rc4 = "email=".$email."&type=".$type."&t=".$t;
        $html = $rc4;
        $key = $app_res['mi_rc4_key'];
        $enstr  = mi_rc4($html, $key,0);
        $url = 'http://'.$_SERVER["HTTP_HOST"].'/api.php?app='.$app.'&act=afcrc';
    	$post_data  =  array ("data"=>$enstr,"sign" =>md5("email=".$email."&type=".$type."&t=".$t."&".$appkey));
    	$curl = curl_init();//初始化 curl
        curl_setopt($curl, CURLOPT_URL, $url);//要访问网页 URL 地址
        curl_setopt($curl, CURLOPT_POST, true); // 发送一个常规的Post请求
        curl_setopt($curl, CURLOPT_POSTFIELDS, $post_data);
        curl_setopt($curl, CURLOPT_TIMEOUT,3);//数据传输的最大允许时间
        curl_setopt($curl, CURLOPT_CONNECTTIMEOUT,1); //服务器1秒内没有响应断开连接
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 0);//0=不检查 1=检查 SSL 证书来源
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);//0=输出 1=不输出	到屏幕上
        $data1 = curl_exec($curl); 
        curl_close($curl);
        $J = json_decode($data1);
        if ($J->code==115) json(201,'该邮箱已绑定其他账户');
        if ($J->code==114) json(201,'账户被禁用');
        if ($J->code==123) json(201,'验证码发送过于频繁');
        if ($J->code==201) json(201,'验证码功能不可用');
        if ($J->code==121) json(201,'验证码功能尚未开启');
	    json(200,'验证码发送成功');
	}
    /*验证码*/
	if ($type=="seek") {
		$user_res = Db::table('user')->where(['user'=>$account,'appid'=>$_GET['app']])->find();
		if(!$user_res) {
		    json(201,'账户不存在');
	    }else {
    		if (!check_email($phone))json(201,'邮箱号码格式不正确');
    		if (!$user_res['email'])json(201,'该邮箱号未绑定');
    		if ($phone != $user_res['email'])json(201,'帐号与绑定邮箱号不符');
    		$app_res = Db::table('app')->where(['id'=>$_GET['app']])->find();
    		$app = $_GET['app'];
            $appkey = $app_res['appkey'];
            $email = $phone;
            $type = "seek";
    	    $t = time();
            $rc4 = "email=".$email."&type=".$type."&t=".$t;
            $html = $rc4;
            $key = $app_res['mi_rc4_key'];
            $enstr  = mi_rc4($html, $key,0);
            $url = 'http://'.$_SERVER["HTTP_HOST"].'/api.php?app='.$app.'&act=afcrc';
	        $post_data  =  array ("data"=>$enstr,"sign" =>md5("email=".$email."&type=".$type."&t=".$t."&".$appkey));
    	    $curl = curl_init();//初始化 curl
            curl_setopt($curl, CURLOPT_URL, $url);//要访问网页 URL 地址
            curl_setopt($curl, CURLOPT_POST, true); // 发送一个常规的Post请求
            curl_setopt($curl, CURLOPT_POSTFIELDS, $post_data);
            curl_setopt($curl, CURLOPT_TIMEOUT,3);//数据传输的最大允许时间
            curl_setopt($curl, CURLOPT_CONNECTTIMEOUT,1); //服务器1秒内没有响应断开连接
            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 0);//0=不检查 1=检查 SSL 证书来源
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);//0=输出 1=不输出	到屏幕上
            $data1 = curl_exec($curl); 
            curl_close($curl);
            $J = json_decode($data1);
            if ($J->code==122)json(201,'账户不存在');
            if ($J->code==121)json(201,'验证码功能尚未开启');
            if ($J->code==114)json(201,'账户被禁用');
            if ($J->code==123)json(201,'验证码发送过于频繁');
            if ($J->code==201)json(201,'验证码功能不可用');
		    json(200,'验证码发送成功');
	    }
    }
}
/*找回密码*/
if ($act == "web_seek_pass") {
	$account = isset($_POST["account"]) ? purge($_POST["account"]) : "";
	$phone = isset($_POST["phone"]) ? purge($_POST["phone"]) : "";
	$newpassword = isset($_POST["newpassword"]) ? purge($_POST["newpassword"]) : "";
	$code = isset($_POST["code"]) ? purge($_POST["code"]) : "";
	if (!check_email($phone)) json(201,'邮箱号码格式不正确');
	if (!$_POST['account']) json(201,'请输入账号');
	if (!$_POST['phone']) json(201,'邮箱号不能为空');
	if (!$_POST['code']) json(201,'验证码为空');
	if (!$_POST['newpassword'])json(201,'请输入新密码');
	if(preg_match ("/^[a-zA-Z\d.*_-]{6,18}$/",$newpassword)==0)json(201,'密码长度需要满足6-18位数,不支持中文以及.-*_以外特殊字符');
	$user_res = Db::table('user')->where(['user'=>$account,'appid'=>$_GET['app']])->find();
	if(!$user_res) {
		json(201,'账户不存在');
	} else {
		if ($phone != $user_res['email'])json(201,'绑定邮箱号不正确');
		$captcha_res = Db::table('captcha')->order(['appid'=>$_GET['app'],'email'=>$phone])->order('id desc')->limit('0','1')->find();
		if ($code!=$captcha_res['code'])json(201,'验证码不正确');
		if ($phone!=$captcha_res['email'])json(201,'绑定邮箱与发送验证码不一致');
		if ($captcha_res['new'] =='n')json(201,'验证码已过期');
		$add_res = Db::table('user')->where(["user"=>$account,"appid"=>$_GET['app']])->update(['pwd'=>md5($newpassword)]);
	}
	Db::table('captcha')->where(["appid"=>$_GET['app'],'email'=>$phone])->update(['new'=>'n']);
	/*清除风险*/
	$add_analysis_log = Db::table('analysis_log')->where(["user"=>$account,"appid"=>$_GET['app']])->update(['Risk_number'=>0]);
	$resanalysis_set = Db::table('analysis_set','as A')->field('A.*')->find();
    $redis = new Redis();
    $redis->connect($resanalysis_set['Log_Redis_Address'], $resanalysis_set['Log_Redis_Port']);
    $redis->select($resanalysis_set['Log_RedisDB']);
    $redis->hMSet('analysis_log:' . $res_user['user'] . ':' . $appid, ['Risk_number' => 0]);
	if($add_res) {
		json(200,'密码找回成功');
	}json(201,'密码找回失败');
}
/*空连接/无应用拦截*/
$app_res = Db::table('app')->where(['id'=>$_GET['app']])->find();
if (!$app||!$app_res) {
    header('HTTP/1.1 404 Forbidden');
    exit;
}
$app_res = Db::table('app')->where(['id'=>$app])->find();
$name = $app_res['name'];
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title><?php echo $name; ?> - 会员充值</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <link href="assets/css/eruyi.min.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/pay.style.css?v1.0" rel="stylesheet" />
    </head>
    <body>
        <div class="mt-2 mb-2">
            <div class="container" id="news">
                <div class="row mb-2">
					<div class="col-xl-12">
						<div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body profile-user-box">
                                        <div class="row">
                                            <div class="col-sm-8">
                                                <div class="media" onclick="testlogon()">
                                                    <span class="float-left m-2 mr-4"><img id="upic" src="./data/pic/0.png" style="height: 100px;" alt="" class="rounded-circle img-thumbnail"></span>
                                                    <div class="media-body mt-3">
                                                        <h4 class="mt-1 mb-1" id="uname"><?php echo ($name=="")?"点此登录帐号":$name; ?></h4>
                                                        <p class="font-13 mt-2" id="unum"><?php echo ($user=="")?"点此登录帐号":"账号：$user"; ?></p>
                                                        <ul class="mb-0 list-inline">
															<p class="mb-0 font-13">
															<span class="badge badge-warning-lighten" id="ufen">积分：0</span>
															<span class="badge badge-light" id="uvip">未登录</span>
                                                            </p>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
						</div>
						<div class="row" <?php if ($app_res['mode']=='n'){echo hidden;};?>>
                            <div class="col-md-12">
								<div class="card">
									<div class="card-body">
										<div id="inpitassembly" class="inpit">
											<div class="li" checkbox>
												<?php
													$goods_res = Db::table('goods')->where('appid',$app)->select();
													foreach ($goods_res as $k => $v){$rows = $goods_res[$k];
												?>
												<div <?php echo ($rows['state']=="n") ? "hidden" : "";?> name="goods" value="<?php echo $rows['id'] ?>" onclick="news(<?php echo $rows['id'] ?>,'¥&nbsp;<?php echo $rows['money'] ?>','<?php echo $rows['name'] ?>')" style="float:left;">
													<h4><?php echo $rows['name'] ?></h4>
													<p id="money_<?php echo $k ?>">¥&nbsp;<?php echo $rows['money'] ?></p>
													<p id="gid_<?php echo $k ?>" hidden><?php echo $rows['id'] ?></p>
												</div>
												<?php } ?>
											</div>
										</div> 
									</div>
								</div>
                            </div>
                        </div>
						<div class="row"<?php if ($app_res['mode']=='n'){echo hidden;};?>>
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="clearfix">
                                                    <h6 class="text-muted">温馨提示:</h6>
                                                    <small>
                                                     请在有效时间内支付,否则该订单将作废,付款后自动充值,无需授权码,若失败请联系客服！
                                                    </small>
                                                </div>
                                            </div>
                                          <div class="col-sm-6">
                                                <div class="float-right mt-3 mt-sm-0">
                                                    <h3 id="money_h3">¥&nbsp;0.00&nbsp;RMB</h3> 
                                                </div>
                                                <div class="clearfix"></div>
                                            </div> 
                                       </div>
                                        <div class="d-print-none mt-4">
											<div class="text-right">
												<?php if($app_res['pay_ali_state']=='y'):?><button type="button" id="ali_submit" class="btn btn-info">支付宝支付</button><?php endif; ?>
												<?php if($app_res['pay_wx_state']=='y'):?><button type="button" id="wx_submit" class="btn btn-success">微信支付</button><?php endif; ?>
												<?php if($app_res['pay_qq_state']=='y'):?><button type="button" id="qq_submit" class="btn btn-dark">QQ支付</button><?php endif; ?>
                                            </div>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                        </div>
					</div>
				</div>
            </div>
        </div>
		<div id="logon" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true" >
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="modal_title">用户登录</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					</div>
					<div class="modal-body">
						<form class="pl-3 pr-3">
							
							<div class="form-group">
								<label>账户</label>
								<input class="form-control" type="text" id="logon_user" placeholder="请输入APP账户">
							</div>
							<div class="form-group">
								<label>密码</label>
								<input class="form-control" type="password" id="logon_psw" placeholder="请输入APP密码">
							</div>
							<div class="form-group text-center mt-2">
								<button class="btn-block btn btn-primary" type="submit" id="logon_submit" >登录</button>
								<p class="text-muted mt-3"><a href="javascript:void(0);" onclick="seek_psw()" class="text-muted ml-1"><b>找回/修改密码</b></a></p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
    	<div id="warning-bind" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    		<div class="modal-dialog modal-sm">
    			<div class="modal-content">
    				<div class="modal-body p-4">
    					<div class="text-center">
    						<i class="dripicons-warning h1 text-warning"></i>
    						<h4 class="mt-2">警告</h4>
    						<p class="mt-3">检测到您的账号暂未绑定邮箱号，可能存在安全隐患，是否立即绑定？</p>
    						<button type="button" class="btn btn-block btn-warning" data-dismiss="modal" data-toggle="modal" data-target="#bind">立即绑定</button>
    						<button type="button" class="btn btn-block btn-light"  data-dismiss="modal" aria-hidden="true">取消</button>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
		<div id="bind" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true" >
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="modal_title">邮箱号绑定</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					</div>
					<div class="modal-body">
						<form class="pl-3 pr-3">
							
							<div class="form-group" style="display:none">
								<label>账号</label>
								<input class="form-control" type="text" id="bind_user" placeholder="请输入账号" disabled="disabled" style="display:none">
							</div>
							
							<div class="form-group">
								<label>邮箱号</label>
								<input class="form-control" type="text" id="bind_phone" placeholder="请输入邮箱号">
							</div>
							<div class="form-group">
                                <label>验证码</label>
								<div class="input-group">
									<input class="form-control" type="number" id="bind_code" required placeholder="请输入验证码">
									<div class="input-group-append">
										<button class="btn btn-dark" type="button" id="submit_bind_code">获取验证码</button>
									</div>
								</div>
                            </div>
							
							<div class="form-group text-center mt-2">
								<button class="btn-block btn btn-primary" type="submit" id="bind_submit" >确定绑定</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div id="seek" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true" >
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="modal_title">找回密码</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					</div>
					<div class="modal-body">
						<form class="pl-3 pr-3">
							<div class="form-group">
								<label>账号</label>
								<input class="form-control" type="text" id="seek_user" placeholder="请输入账号">
							</div>
							<div class="form-group">
								<label>邮箱号</label>
								<input class="form-control" type="text" id="seek_phone" placeholder="请输入邮箱号">
							</div>
							<div class="form-group">
                                <label>验证码</label>
								<div class="input-group">
									<input class="form-control" type="number" id="seek_code" required placeholder="请输入验证码">
									<div class="input-group-append">
										<button class="btn btn-dark" type="button" id="submit_seek_code">获取验证码</button>
									</div>
								</div>
                            </div>
							<div class="form-group">
								<label>新的密码</label>
								<input class="form-control" type="password" id="seek_psw" placeholder="请输入新的密码">
							</div>
							<div class="form-group text-center mt-2">
								<button class="btn-block btn btn-primary" type="submit" id="seek_submit" >确定找回</button>
							</div>
						</form>
						
					</div>
					
				</div>
			</div>
		</div>
		<script src="assets/js/jquery.min.js"></script>
		<script type="text/javascript" src="assets/js/app.min.js"></script>
		<script type="text/javascript" src="assets/js/inpitassembly-2.0.js"></script>
		<script>
			var logon_state = false;
			var g_id = document.getElementById('gid_0').innerHTML;
			var g_money = document.getElementById('money_0').innerHTML;
			var g_account;
			var order;
			window.onload = function(){
			    testlogon();
            }
			document.getElementById('money_h3').innerHTML=g_money+"&nbsp;RMB";
			$(document).ready(function(){
				$("#inpitassembly").inpitassembly({
					selected:"ack",
					ischeck_:true,
					ischeck_class:false,
				});
			})
			function news(id,money,name){
				g_id = id;
				document.getElementById('money_h3').innerHTML=money+"&nbsp;RMB";
			}
			$('#ali_submit').click(function() {
				var order = randomNumber();
				var mobile_flag = isMobile();
				if(mobile_flag){
					window.location.href='<?php echo WEB_URL."/api.php?app={$app}&act=pays&ua=1&order=";?>'+order+'<?php echo "&user='+g_account+'&way=ali&gid=";?>'+g_id;
				}else{
					window.location.href='<?php echo WEB_URL."/api.php?app={$app}&act=pays&order=";?>'+order+'<?php echo "&user='+g_account+'&way=ali&gid=";?>'+g_id;
				}
				return false;
			});
			$('#wx_submit').click(function() {
				var order = randomNumber();
				var mobile_flag = isMobile();
				if(mobile_flag){
					window.location.href='<?php echo WEB_URL."/api.php?app={$app}&act=pays&ua=1&order=";?>'+order+'<?php echo "&user='+g_account+'&way=wx&gid=";?>'+g_id;
				}else{
					window.location.href='<?php echo WEB_URL."/api.php?app={$app}&act=pays&order=";?>'+order+'<?php echo "&user='+g_account+'&way=wx&gid=";?>'+g_id;
				}
				return false;
			});
			$('#qq_submit').click(function() {
				var order = randomNumber();
				var mobile_flag = isMobile();
				if(mobile_flag){
					window.location.href='<?php echo WEB_URL."/api.php?app={$app}&act=pays&ua=1&order=";?>'+order+'<?php echo "&user='+g_account+'&way=qq&gid=";?>'+g_id;
				}else{
					window.location.href='<?php echo WEB_URL."/api.php?app={$app}&act=pays&order=";?>'+order+'<?php echo "&user='+g_account+'&way=qq&gid=";?>'+g_id;
				}
				return false;
			});
			function testlogon() {
				let t = window.jQuery;
				if(!logon_state){
					$("#logon").modal("show");
					t.NotificationApp.send("警告","请先登录","top-center","rgba(0,0,0,0.2)","warning");
					return false;
				}else{
					return true;
				}
				
			}
			$('#logon_submit').click(function() {
				let t = window.jQuery;
				var user = $("#logon_user").val();
				var psw = $("#logon_psw").val();
				document.getElementById('logon_submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在登录";
				document.getElementById('logon_submit').disabled=true;
				
				$.ajax({
					cache: false,
					type: "POST",
					url : '/pay.php?app=<?php echo $_GET['app']; ?>&act=web_user_logon',
					data : {account:user,password:psw},
					dataType : 'json',
					success : function(data) {
						console.log(data);
						document.getElementById('logon_submit').disabled=false;
						document.getElementById('logon_submit').innerHTML="登录";
						if(data.code == 200){
							t.NotificationApp.send("成功",'登录成功',"top-center","rgba(0,0,0,0.2)","success");
							$("#upic").attr('src',data.msg.pic);
							document.getElementById('unum').innerHTML='账号：'+user;
							document.getElementById('ufen').innerHTML='积分：'+data.msg.fen;
							document.getElementById('uvip').innerHTML=data.msg.vip;
							if(data.msg.ug == 1){
								$("#uvip").attr("class","badge badge-danger-lighten");
							}else if(data.msg.ug == 2){
								$("#uvip").attr("class","badge badge-danger-lighten");
							}
							g_account = user;
							logon_state = true;
							$("#logon").modal("hide");
							if(data.msg.phone == null||data.msg.phone == ""){
							    $("#bind_user").val(user);
							    $("#warning-bind").modal("show");
							}
						}else{
							t.NotificationApp.send("失败",data.msg,"top-center","rgba(0,0,0,0.2)","error");
						}
					}
				});
				return false;
			});
			$('#bind_submit').click(function() {
				let t = window.jQuery;
				var phone =$("#bind_phone").val();
            	var user =$("#bind_user").val();
            	var code =$("#bind_code").val();
				document.getElementById('bind_submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在绑定";
				document.getElementById('bind_submit').disabled=true;
				$.ajax({
					cache: false,
					type: "POST",
					url : '/pay.php?app=<?php echo "{$app}";?>&act=web_user_bind',
					data : {account:user,phone:phone,code:code},
					dataType : 'json',
					success : function(data) {
						console.log(data);
						document.getElementById('bind_submit').disabled=false;
						document.getElementById('bind_submit').innerHTML="确定绑定";
						if(data.code == 200){
							t.NotificationApp.send("成功",'绑定成功',"top-center","rgba(0,0,0,0.2)","success");
							$("#bind").modal("hide");
						}else{
							t.NotificationApp.send("失败",data.msg,"top-center","rgba(0,0,0,0.2)","error");
						}
					}
				});
				return false;
			});
			$('#submit_bind_code').click(function() {
            	let t = window.jQuery;
            	var type = 'bind';
            	var phone =$("#bind_phone").val();
            	var user =$("#bind_user").val();
            	document.getElementById('submit_bind_code').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在发送";
            	document.getElementById('submit_bind_code').disabled=true;
            	$.ajax({
            		cache: false,
            		type: "POST",
            		url : '/pay.php?app=<?php echo "{$app}";?>&act=web_sms',
            		data : {phone:phone,account:user,type:type},
            		dataType : 'json',
            		success : function(data) {
            			if(data.code == 200){
            				code_id = 'submit_bind_code';
            				t.NotificationApp.send("成功",data.msg,"top-center","rgba(0,0,0,0.2)","success")
            				settime(this);
            			}else{
            				t.NotificationApp.send("失败",data.msg,"top-center","rgba(0,0,0,0.2)","error")
            				document.getElementById('submit_bind_code').innerHTML="重新获取";
            				document.getElementById('submit_bind_code').disabled=false;
            			}
            			
            		}
            	});
            	return false;
            });
            function seek_psw(){
				$("#seek").modal("show");
			}
			$('#submit_seek_code').click(function() {
            	let t = window.jQuery;
            	var type = 'seek';
            	var phone =$("#seek_phone").val();
            	var user =$("#seek_user").val();
            	document.getElementById('submit_seek_code').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在发送";
            	document.getElementById('submit_seek_code').disabled=true;
            	$.ajax({
            		cache: false,
            		type: "POST",
            		url : '/pay.php?app=<?php echo "{$app}";?>&act=web_sms',
            		data : {phone:phone,account:user,type:type},
            		dataType : 'json',
            		success : function(data) {
            			if(data.code == 200){
            				code_id = 'submit_seek_code';
            				t.NotificationApp.send("成功",data.msg,"top-center","rgba(0,0,0,0.2)","success")
            				settime(this);
            			}else{
            				t.NotificationApp.send("失败",data.msg,"top-center","rgba(0,0,0,0.2)","error")
            				document.getElementById('submit_seek_code').innerHTML="重新获取";
            				document.getElementById('submit_seek_code').disabled=false;
            			}
            			
            		}
            	});
            	return false;
            });
            $('#seek_submit').click(function() {
				let t = window.jQuery;
				var phone =$("#seek_phone").val();
            	var user =$("#seek_user").val();
            	var code =$("#seek_code").val();
            	var newpassword =$("#seek_psw").val();
				document.getElementById('seek_submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在找回";
				document.getElementById('seek_submit').disabled=true;
				
				$.ajax({
					cache: false,
					type: "POST",
					url : '/pay.php?app=<?php echo "{$app}";?>&act=web_seek_pass',
					data : {account:user,phone:phone,code:code,newpassword:newpassword},
					dataType : 'json',
					success : function(data) {
						console.log(data);
						document.getElementById('seek_submit').disabled=false;
						document.getElementById('seek_submit').innerHTML="确定找回";
						if(data.code == 200){
							t.NotificationApp.send("成功",data.msg,"top-center","rgba(0,0,0,0.2)","success");
							$("#seek").modal("hide");
							window.setTimeout("window.location='"+window.location.href+"'",1000);
						}else{
							t.NotificationApp.send("失败",data.msg,"top-center","rgba(0,0,0,0.2)","error");
						}
					}
				});
				return false;
			});
			function setTimeDateFmt(s) {
			  return s < 10 ? '0' + s : s;
			}
			function randomNumber() {
			  const now = new Date()
			  let month = now.getMonth() + 1
			  let day = now.getDate()
			  let hour = now.getHours()
			  let minutes = now.getMinutes()
			  let seconds = now.getSeconds()
			  month = setTimeDateFmt(month)
			  day = setTimeDateFmt(day)
			  hour = setTimeDateFmt(hour)
			  minutes = setTimeDateFmt(minutes)
			  seconds = setTimeDateFmt(seconds)
			  let orderCode = now.getFullYear().toString() + month.toString() + day + hour + minutes + seconds + (Math.round(Math.random() * 100000)).toString();
			  return orderCode;
			}
			function isMobile() {
				var userAgentInfo = navigator.userAgent;
				var mobileAgents = [ "Android", "iPhone", "SymbianOS", "Windows Phone", "iPad","iPod"];
				var mobile_flag = false;
				for (var v = 0; v < mobileAgents.length; v++) {
					if (userAgentInfo.indexOf(mobileAgents[v]) > 0) {
						mobile_flag = true;
						break;
					}
				}
				return mobile_flag;
			}
			var countdown=180;
			var code_id;
            function settime(val) {
            	if (countdown == 0) {
            		document.getElementById(code_id).innerHTML="获取验证码";
            		document.getElementById(code_id).disabled=false;
            		countdown = 180;//验证码时间
            	} else {
            		document.getElementById(code_id).innerHTML="重新获取(" + countdown + ")";
            		document.getElementById(code_id).disabled=true;
            		countdown--;
            		setTimeout(function() {
            			settime(val)
            		},1000)
            	}
            }
            function isWeiXin(){
                var ua = window.navigator.userAgent.toLowerCase();
                if(ua.match(/MicroMessenger/i) == 'micromessenger'){
                    return true;
                }else{
                    return false;
                }
            }
		</script>
		<div class="mt-5">
			<footer class="footer footer-alt" style="border-top:1px solid rgba(152,166,173,.15);">
				2018 - <?php echo date('Y',time());?> © <a href="/" class="text-title" style="text-decoration:none" target="_blank"> - ShenmaVod. All Rights Reserved</a>
			</footer>
		</div>
    </body>
</html>