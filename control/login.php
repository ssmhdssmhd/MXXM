<?php
/*
扫扫码登录
*/
error_reporting(0); //禁用错误报告
require 'include/global.php';
$app = isset($_GET["app"]) ? purge($_GET["app"]) : "";
$action = isset($_GET["action"]) ? purge($_GET["action"]) : "";
$log_in = $_GET["log_in"];
$t = $_GET["t"];
$key = $_GET["key"];

$msg = $_GET["msg"];
$type = $_GET["type"];

if ($msg!=""||$type!="") {
    if ($type == "success") {
        $msgs = "gray";
        $title = $msg;
        $kk = "''";
        $k = "'";
    }
    if ($type == "error") {
        $msgs = "block";
        $title = $msg;
        $kk = "''";
        $k = "'";
    }
echo '<!DOCTYPE html>
<html lang="en">
  <head>
      <link rel="stylesheet" href="//res.wx.qq.com/t/wx_fed/weui-source/res/2.5.0/weui.min.css" />
    <meta charset="UTF-8" />
    <meta id="viewport" name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, viewport-fit=cover" />
    <title></title>
    </head>
  <body ontouchstart="">
    <div id="app"></div>
    <script>
       var cgiData = {"retcode":0,"type":"'.$msgs.'","title":"'.$title.'"};
    </script>
    <script src="https://res.wx.qq.com/t/wx_fed/cdn_libs/res/vue/2.6.11/vue.min.js"></script>
    <script type="text/javascript" src="//res.wx.qq.com/t/wx_fed/wx110/wx110/res/js/chunk-common.b362976d1d11.js"></script>
    <script type="text/javascript" src="//res.wx.qq.com/t/wx_fed/wx110/wx110/res/js/chunk-vendors.b274b98e3c91.js"></script>
    <script type="text/javascript" src="//res.wx.qq.com/t/wx_fed/wx110/wx110/res/js/banurl.e8b0ad3cb248.js"></script>
    </body>
</html>';
exit;
}
if ($action == "login") {
    $user= isset($_POST["user"]) ? purge($_POST["user"]) : "";
	$pwd= isset($_POST["pwd"]) ? purge($_POST["pwd"]) : "";
	$log_in = $_GET["log_in"];
	$t = $_GET["t"];
	$app = isset($_GET["app"]) ? purge($_GET["app"]) : "";
	if($user == '' || $pwd == ''){
	    echo '{"errCode":"1","msg":"账号密码不能为空","detail":[]}';
		exit;
	}
	$rew = Db::table('user')->where(['user'=>$user,'appid'=>$app])->find();
	$rews = Db::table('empower_logon')->where(['log_in'=>$log_in,'t'=>$t,'appid'=>$app])->find();
	if(!$rew){
		echo '{"errCode":"2","msg":"账户不存在","detail":[]}';
		exit;
	}
	if($rew['ban'] > time()||$rew['ban']==999999999){
		echo '{"errCode":"3","msg":"该账户已被停用","detail":[]}';
		exit;
	}
	if(time()>($rews['t']+180)){
		echo '{"errCode":"6","msg":"二维码已过期","detail":[]}';
		exit;
	}
	
	if($user == $rew['user'] && md5($pwd) == $rew['pwd']){
	    $addcode = Db::table('empower_logon')->where(["appid"=>$app,'log_in'=>$log_in,'t'=>$t])->update(['user'=>$user,'pwd'=>$pwd]);//设置扫码信息
		echo '{"errCode":"5","msg":"登陆成功","detail":[]}';
		exit;
	}else{
		echo '{"errCode":"4","msg":"密码错误","detail":[]}';
		exit;
	}
}

if($app == ''||$t==''||$key=='' ){
    header("Location:/login.php?msg=连接错误,请重新扫码&type=error"); 
	exit;
}
if(md5(($t+5).$log_in)!=$key ){
    header("Location:/login.php?msg=校验失败,请重新扫码&type=error"); 
	exit;
}
if($t < (time()-180)){
    header("Location:/login.php?msg=二维码已过期,请重新扫码&type=error"); 
	exit;
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>用户登录</title>
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport"/>
        <meta content="yes" name="apple-mobile-web-app-capable"/>
        <meta content="black" name="apple-mobile-web-app-status-bar-style"/>
        <meta content="telephone=no" name="format-detection"/>
        <link href="assets/css/styles.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="assets/js/jquery.min.js"></script>

    </head>
    <body>

        <section class="aui-flexView">
            <header class="aui-navBar aui-navBar-fixed b-line">
                <a href="javascript:window.opener=null;window.open('','_self');window.close();" class="aui-navBar-item">
                    <i class="icon icon-return"></i>
                </a>
                <div class="aui-center">
                    <span class="aui-center-title">登录</span>
                </div>
            </header>
            <section class="aui-scrollView">
                <div class="aui-code-box">
                    <div class="form">
                        <div class="item">
                            <p class="aui-code-line aui-code-line-clear">
                                <input type="text" class="aui-code-line-input password" name="nicknames" value="" placeholder="APP帐号"/></p>
                            <p class="aui-code-line aui-code-line-clear">
                                <i class="aui-show  operate-eye-open"></i>
                                    <input type="password" class="aui-code-line-input password" name="passwords" placeholder="APP密码" value=""></p>
                            <div class="aui-center">
                                <span class="aui-center-title error_msg" >请登录账户</span>
                            </div>
                        </div>
                        
                        <div class="aui-code-btn">
                            <button class="btn login_btn">登录</button>
                        </div>  
                    </div>
                </div>
            </section>
        </section>
        <script>
    (function () {
        $(document).keydown(function(event){
            if(event.keyCode==13){
                $(".login_btn").click(); //开始绑定你的点击事件  点击时间 在下面单独写
            }
        });
       
       
        //登录请求
        $(".login_btn").click(function () {
            var nickname = $("input[name='nicknames']").val();
            var password = $("input[name='passwords']").val();
            if (nickname == '' || password == ''){
                $(".error_msg").show();
                $(".error_msg").html("用户名或密码不能为空");
                return false;
                //$(".error_msg").html("用户名或密码有误，请重新输入");
            }
            $.ajax({
                url: "?app=<?php echo "{$app}";?>&action=login&log_in=<?php echo "{$log_in}";?>&t=<?php echo "{$t}";?>",
                type: 'post',
                dataType: 'json',
                data: {user:nickname,pwd:password},
                success: function (res) {
                    if (res.errCode == "5"){
                        $(".error_msg").html("");
                        window.location.href = "/login.php?msg=登录成功&type=success"
                    }else if (res.errCode == "6"){
                        $(".error_msg").html("");
                        window.location.href = "/login.php?msg=过期请重新扫码&type=error"
                    }else{
                        $(".error_msg").show();
                        $(".error_msg").html(res.msg);
                        return false;
                    }
                }
            });
        })
    })()
</script>

    </body>
</html>
