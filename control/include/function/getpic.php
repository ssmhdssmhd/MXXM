<?php
/*
Name:取用户头像方法
Version:1.0
*/

function get_pic($pic_url,$dirname = FALSE) {//取头像链接
	if(substr($pic_url,0,4)=='http'){
		return $pic_url;
	}else{
		if(substr($pic_url,0,5) == '/pic/'){$pic_url = str_replace(substr($pic_url,0,5),'',$pic_url);}
		if($dirname){
			return dirname(WEB_URL).'/'.USER_PIC_MULU.$pic_url;
		}else{
			return WEB_URL.'/'.USER_PIC_MULU.$pic_url;
		}
	}
}

?>