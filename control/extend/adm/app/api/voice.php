<?php
/*
Name:通知API
Version:1.0
*/
	if(!isset($islogin))header("Location: /");//非法访问

    if($act == 'add'){//添加视频跑马公告
    	$adm = isset($_POST['adm']) && !empty($_POST['adm']) ? purge($_POST['adm']) : '管理员';
    	$content = $_POST['content'] ? $_POST['content'] : '';
    	$appid = isset($_POST['appid']) ? intval($_POST['appid']) : 0;
    	
    	if($content == '')json(201,'通知内容为空');
    	if($appid == 0)json(201,'绑定应用为空');
    	
    	$app_notices = Db::table('app_voice_notice')->where('appid',$appid)->find();
    	if ($app_notices['appid']!="") json(201,'公告已存在');
    	
    	$app_res = Db::table('app')->where('id',$appid)->find();
    	if(!$app_res)json(201,'应用不存在');
    	
    	$add_res = Db::table('app_voice_notice')->add(['adm'=>$adm,'content'=>$content,'appid'=>$appid,'time'=>time()]);
    	//die($add_res); 
    	if($add_res){
    		json(200,'添加成功');
    	}json(201,'添加失败');
    }
    
    if($act == 'del'){//删除视频通知
    	$id = isset($_POST['id']) && !empty($_POST['id']) ? intval($_POST['id']) : json(201,'请选择需要删除的数据');
    	$res = Db::table('app_voice_notice')->where('id',$id)->del();//false
    	if($res){
    		json(200,'删除成功');
    	}json(201,'删除失败');
    }
    
	json(201,'没有这个接口:'.$act);
?>