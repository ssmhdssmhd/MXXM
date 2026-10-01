<?php
/*
Name:应用扩展配置API
Version:1.0
*/
	if(!isset($islogin))header("Location: /");//非法访问
	
	if($act == 'add'){//添加配置
		$name = isset($_POST['name']) && !empty($_POST['name']) ? purge($_POST['name']) : '';//请输入账号
		$variable = isset($_POST['variable']) && !empty($_POST['variable']) ? purge($_POST['variable']) : json(201,'变量名称为空');//请输入账号
		$data = isset($_POST['data']) && !empty($_POST['data']) ? purge($_POST['data']) : json(201,'扩展配置为空');
		$appid = isset($_POST['appid']) && !empty($_POST['appid']) ? intval($_POST['appid']) : 0;
		
		if(preg_match ("/^[\w]{1,32}$/",$variable)==0)json(201,'变量名称不合格');
		
		if($appid > 0){
			$app_res = Db::table('app')->where('id',$appid)->find();
			if(!$app_res)json(201,'应用不存在');
		}
		
		$exten_res = Db::table('app_exten')->where(['variable'=>$variable])->find();
		if($exten_res)json(201,'变量名已存在');
		
		$add_res = Db::table('app_exten')->add(['name'=>$name,'variable'=>$variable,'data'=>$data,'appid'=>$appid]);
		//die($add_res); 
		if($add_res){
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'exten_add','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(200,'添加成功');
		}else{
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'exten_add','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(201,'添加失败');
		}
	}
	
	if($act == 'edit'){//编辑配置
		$id = isset($_POST['id']) ? intval($_POST['id']) : 0;
		$update['name'] = isset($_POST['name']) && !empty($_POST['name']) ? purge($_POST['name']) : '';//请输入账号
		$update['variable'] = isset($_POST['variable']) && !empty($_POST['variable']) ? purge($_POST['variable']) : json(201,'变量名称为空');//请输入账号
		$update['data'] = isset($_POST['data']) && !empty($_POST['data']) ? purge($_POST['data']) : json(201,'扩展配置为空');
		$update['appid'] = isset($_POST['appid']) && !empty($_POST['appid']) ? intval($_POST['appid']) : 0;
		
		if(preg_match ("/^[\w]{1,32}$/",$update['variable'])==0)json(201,'变量名称不合格');

		if($appid > 0){
			$app_res = Db::table('app')->where('id',$update['appid'])->find();
			if(!$app_res)json(201,'应用不存在');
		}
		
		$exten_res = Db::table('app_exten')->where(['variable'=>$update['variable']])->find();
		if($exten_res){
			if($exten_res['id'] != $id)json(201,'变量名已存在');
		}
		
		$res = Db::table('app_exten')->where('id',$id)->update($update);
		//die($res); 
		if($res){
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'exten_edit','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(200,'编辑成功');
		}else{
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'exten_edit','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(201,'编辑失败');
		}
	}
	
	if($act == 'del'){//删除配置
		$id = isset($_POST['id']) ? $_POST['id'] : '';
		if($id){
			$ids = '';
			foreach ($id as $value) {
				$ids .= intval($value).",";
			}
			$ids = rtrim($ids, ",");
			$res = Db::table('app_exten')->where('id','in','('.$ids.')')->del();//false
			//die($res);
			if($res){
				if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'exten_del','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
				json(200,'删除成功');
			}else{
				if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'exten_del','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
				json(201,'删除失败');
			}
		}else{
			json(201,'没有需要删除的数据');
		}
	}
	
	json(201,'没有这个接口:'.$act);
?>