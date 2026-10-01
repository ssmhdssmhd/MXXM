<?php
/*
 Name:更新Api入口
 Version:1.0
*/
require 'include/global.php';
$app = $_GET['id'];
$type = $_GET['type'];

$applists = Db::table("app")->where(["id" => $app])->find();

if ($type == 1) {
    $updateurl = $applists['android_url'];
    $pwd = $applists['downloadpwd1'];
}
if ($app == "" || $type == "") {
    header('HTTP/1.1 404 Forbidden');
}
/*蓝奏云*/
if ($applists['downloadtype1'] == 1) {
    if (empty($pwd)) {
        require_once ("Cloud/Cloud2.php");
        exit;
    } else {
        require_once ("Cloud/Cloud1.php");
        exit;
    }
    exit;
}
/*其他云*/
if ($applists['download1'] == 2) {
    require_once ("Cloud/Cloud3.php");
    exit;
}
