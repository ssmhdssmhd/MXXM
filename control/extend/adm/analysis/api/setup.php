<?php
/*
Name:全局设置API
Version:1.0
*/
	if(!isset($islogin))header("Location: /");//非法访问
	
	/*解析设置*/
	if($act == 'set'){//
		$id = isset($_POST['id']) ? intval($_POST['id']) : 0;
		if ($_POST['Trytime'] <= 0) json(201,'试看时间不得小于1');
		unset($_POST['id']);
		$ids = '';
		$ids = rtrim($ids, ",");
		$res = Db::table('analysis_set')->where('id',$id)->update($_POST);
		if($res){
		    if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'modify_global','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
    		json(200,'编辑成功');
    	}else{
    	    if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'modify_global','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
    	    json(201,'编辑失败');
    	}
	}
    
	json(201,'没有这个接口:'.$act);
?>