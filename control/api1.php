<?php
/*禁用错误报告*/
error_reporting(0);
require_once("include/config.php");
$file = $_GET["file"];
$key = $_GET["key"];
if ($key != md5(Cache_key)) {
    header('HTTP/1.1 404 Forbidden');
    exit;
}
/*清除缓存s*/
if ($file == "del") {
  $path = "./Cache/";  
  function deldir($path){ 
    if(is_dir($path)){
      $p = scandir($path);
      foreach($p as $val){
        if($val !="." && $val !=".."){
          if(is_dir($path.$val)){
            deldir($path.$val.'/');
            @rmdir($path.$val.'/');
          }else{
            unlink($path.$val);
          }
        }
      }
    }
  }
  deldir($path);
  echo "Success";
  exit;
}
/*配置云cos地址*/
if ($file == "juheqq692000321") {
    
    if ($file == "juheqq692000321") {
        /*验证http(s)*/
        if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == 'on') {
            $http = "https";
        } else {
            $http = "http";
        }
        /*验证云Cos是否存在*/
        if (empty(Cosaddress)) {
            echo "请先填写云Cos地址后使用 方法: 系统设置->云COS地址";
            exit;
        }
        /*验证主控地址*/
        $mianurl = Mainaddress;
        if (empty(Mainaddress)) {
            $mianurl = $http . "://" . $_SERVER['HTTP_HOST'] . "/zk.php";

        }
        // $mianurl = 'http://82.157.27.245:/';
        /*验证服务器认证*/
        $user = Serveruser;
        $pwd = Serverpwd;
        if (empty(Serveruser)) {
            $user = "shenma";
        }
        if (empty(Serverpwd)) {
            $pwd = "shenma";
        }
        /*配置云cos地址*/
        $cos_main_url = Cosaddress;
        $main_url = $mianurl;
       
        echo "APP内配置信息如下:</p>";
       
        echo "密钥:" . base64_encode(str_rot13(base64_encode($main_url))) . "</p>";
        echo "云json格式如下:</p>";
        $json['url'] = base64_encode(str_rot13(base64_encode($main_url)));
        $json['type'] = str_rot13(base64_encode(str_rot13("Basic " . base64_encode($user . ":" . $pwd))));
        $jsonContent = json_encode($json);
        echo $jsonContent."</p>";
        /*下载云配置文件*/
        $filename = "app.json";
        // file_put_contents($filename, $jsonContent);
        $downloadLink = $http . "://" . $_SERVER['HTTP_HOST'] . "/" . $filename;
        echo '<a href="data:application/json;base64,' . base64_encode($jsonContent) . '" download>下载云配置文件</a>';
    }
}
?>