<?php
/*
Name:用户日志API
Version:1.0
*/
	if(!isset($islogin))header("Location: /");//非法访问
	
	/*添加随机广告*/
	if($act == 'add_adurl'){
        $name = $_POST['name'] ? $_POST['name'] : '';
        $id = Db::table('ad')->order('id desc')->find();
    	$add = ['url'=>$name,'id'=>$id['id']+1];
    	$add_res = Db::table('ad')->add($add);
    	if($add_res){
    		json(200,'添加成功');
    	}json(201,'添加失败');
    }
	
	/*删除随机广告*/
	if($act == 'del_adurl'){
    	$id = isset($_POST['id']) ? $_POST['id'] : '';
    	if($id){
    		$ids = '';
    		foreach ($id as $value) {
    			$ids .= intval($value).",";
    		}
    		$ids = rtrim($ids, ",");
    		$res = Db::table('ad')->where('id','in','('.$ids.')')->del();//false
    		if($res){
    			json(200,'删除成功');
    		}json(201,'删除失败');
    	}else{
    		json(201,'没有需要删除的数据');
    	}
    }
    
	json(201,'没有这个接口:'.$act);
?>