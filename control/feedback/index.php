<?php
/*
Name:反馈系统
Version:1.0
*/
require_once("../include/global.php");
$line = $_POST["line"];//线路
$account = $_POST["account"];//帐号
$episode  = $_POST["vodname"];//剧集
$url  = $_POST["url"];//播放地址
$time = time();//当前时间
$ip = $_SERVER["REMOTE_ADDR"];//IP
/*基础验证*/
if (empty($line)||empty($account)||empty($episode)||empty($url)) {
   header('HTTP/1.1 404 Forbidden');
   exit;
}
/*查询反馈信息*/
$feedback_res = Db::table('feedback')->where(['url'=>$url,'series'=>urldecode($episode),'user'=>$account])->find();
if (empty($feedback_res)) {
   $feedback_add = Db::table('feedback')->add(['time'=>$time,'series'=>urldecode($episode),'url'=>$url,'ip'=>$ip,'user'=>$account,'domain'=>$line]);
}else{
    if (!empty($feedback_res['url'])) {
        $feedback_update = Db::table('feedback')->where(['user'=>$account,'url'=>$feedback_res['url'],'series'=>urldecode($episode)])->update(['count'=>$feedback_res['count']+1,'ip'=>$ip,'time'=>$time]);
    }else{
        $feedback_add = Db::table('feedback')->add(['time'=>$time,'series'=>urldecode($episode),'url'=>$url,'ip'=>$ip,'user'=>$account,'domain'=>$line]);
    }
}
header('HTTP/1.1 404 Forbidden');
exit;
?>