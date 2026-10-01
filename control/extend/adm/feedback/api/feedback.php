<?php
/*
Name:反馈设置API
Version:1.0
*/
	if(!isset($islogin))header("Location: /");//非法访问
    
    /*删除反馈*/
    if($act == 'del'){//删除反馈
    	$id = isset($_POST['id']) ? $_POST['id'] : '';
    	if($id){
    		$ids = '';
    		foreach ($id as $value) {
    			$ids .= intval($value).",";
    		}
    		$ids = rtrim($ids, ",");
    		$res = Db::table('feedback')->where('id','in','('.$ids.')')->del();//false
    		//die($res);
    		if($res){
    		    if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'del_feedback','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
    			json(200,'删除成功');
    		}else{
    		    if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'del_feedback','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
    		    json(201,'删除失败');
    		}
    	}else{
    		json(201,'没有需要删除的数据');
    	}
    }
  
	json(201,'没有这个接口:'.$act);
?>