<?php
/*
 Name:获取公告通知
 Version:1.0
*/
    if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
	$notice_res = Db::table('app_notice')->where('appid',$appid)->find();//获取通知列表
	if ($notice_res['content'] != null) {
	    $filename = 'extend/api/notice/'.$notice_res['noticename'].'.png';
        if(file_exists($filename)){
            $url = $_SERVER['REQUEST_SCHEME']."://".$_SERVER["HTTP_HOST"]."/extend/api/notice/".$notice_res['noticename'].".png";
            $videoinfo["url"] = $url;
        }else{
            $str = str_replace(array("/r/n", "/r", "/n", "_"), "\n", $notice_res['content']);
            $backgroundPath = 'bg.png'; //背景图
            $font = "msyhbd.ttf"; //字体文件
            $size = 18; //字体大小
            $x = 80; //X轴坐标
            $y = 150; //Y轴坐标
            $img = imagecreatefrompng($backgroundPath);
            //设置字体颜色
            $fontcolor = imagecolorallocate($img, 255,255,255);
            //将ttf文字写到图片中
            imagettftext($img, $size, 0, $x, $y, $fontcolor, $font, $str);
            $filename   = dirname(__FILE__).'/notice/'.$notice_res['noticename'].'.png';
            imagesavealpha($img, true);
            imagepng($img,$filename);
            $url = $_SERVER['REQUEST_SCHEME']."://".$_SERVER["HTTP_HOST"]."/extend/api/notice/".$notice_res['noticename'].".png";
            $videoinfo["url"] = $url;
        }
        out(200,$videoinfo,$app_res);
	}out(201,'通知列表加载失败',$app_res); 
	
?>