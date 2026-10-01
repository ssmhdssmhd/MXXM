<?php
/*
Name:卡密API
Version:1.0
*/
	if(!isset($islogin))header("Location: /");//非法访问
	
	if($act == 'add_type'){//添加卡密分类
		$type = isset($_POST['type']) && !empty($_POST['type']) ? purge($_POST['type']) : 'vip';
		$amount = isset($_POST['amount']) && !empty($_POST['amount']) ? purge($_POST['amount']) : json(201,'请设置卡密面值');
		$name = isset($_POST['name']) && !empty($_POST['name']) ? purge($_POST['name']) : json(201,'分类名称不能空');
		
		$add_res = Db::table('kami_type')->add(['name'=>$name,'type'=>$type,'amount'=>$amount]);
		
		if($add_res){
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'add_kami_type','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(200,'添加成功');
		}else{
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'add_kami_type','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(201,'添加失败');
		}
	}
	
	if($act == 'edit_type'){//编辑卡密分类
		$id = isset($_POST['id']) && !empty($_POST['id']) ? intval($_POST['id']) : json(201,'编辑分类有误');
		$update['type'] = isset($_POST['type']) && !empty($_POST['type']) ? purge($_POST['type']) : 'vip';
		$update['amount'] = isset($_POST['amount']) && !empty($_POST['amount']) ? purge($_POST['amount']) : json(201,'请设置卡密面值');
		$update['name'] = isset($_POST['name']) && !empty($_POST['name']) ? purge($_POST['name']) : json(201,'分类名称不能空');
		
		$res = Db::table('kami_type')->where('id',$id)->update($update);
		//die($res); 
		if($res){
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'edit_kami_type','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(200,'编辑成功');
		}else{
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'edit_kami_type','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(201,'编辑失败');
		}
	}
	
	if($act == 'del_type'){//删除卡密类型
	    $id = isset($_POST['id']) ? $_POST['id'] : '';
		if($id){
			$ids = '';
			foreach ($id as $value) {
				$ids .= intval($value).",";
			}
			$ids = rtrim($ids, ",");
			$res = Db::table('kami_type')->where('id','in','('.$ids.')')->del();//false
			//die($res);
			if($res){
				if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'del_kami_type','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
				json(200,'删除成功');
			}else{
				if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'del_kami_type','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
				json(201,'删除失败');
			}
		}else{
			json(201,'没有需要删除的数据');
		}
	}
	
	if($act == 'add'){
		$appid = isset($_POST['appid']) && !empty($_POST['appid']) ? intval($_POST['appid']) : json(201,'绑定应用为空');
		$note = isset($_POST['note']) && !empty($_POST['note']) ? purge($_POST['note']) : '';
		$tid = isset($_POST['tid']) && !empty($_POST['tid']) ? intval($_POST['tid']) : json(201,'卡密类型有误');
		$num = isset($_POST['num']) && !empty($_POST['num']) ? intval($_POST['num']) : 1;
		$out = isset($_POST['out']) && !empty($_POST['out']) ? intval($_POST['out']) : 0;
		$k_length = isset($_POST['k_length']) && !empty($_POST['k_length']) ? intval($_POST['k_length']) : 10;
		
		$type_res = Db::table('kami_type')->where('id',$tid)->find();
		if(!$type_res)json(201,'卡密类型不存在');
		
		$app_res = Db::table('app')->where('id',$appid)->find();
		if(!$app_res)json(201,'应用不存在');
		
		$str = '';
		for($i=1;$i<=$num;$i++){
			$key=getcode($k_length);
			if($out == 1){
				$add_res = Db::table('kami')->add(['kami'=>$key,'tid'=>$tid,'type'=>$type_res['type'],'amount'=>$type_res['amount'],'note'=>$note,'appid'=>$appid,'new'=>'y']);
			}else{
				$add_res = Db::table('kami')->add(['kami'=>$key,'tid'=>$tid,'type'=>$type_res['type'],'amount'=>$type_res['amount'],'note'=>$note,'appid'=>$appid]);
			}
			
			if(!$add_res){
				$key=getcode($k_length);
				$add_res = Db::table('kami')->add(['kami'=>$key,'tid'=>$tid,'type'=>$type_res['type'],'amount'=>$type_res['amount'],'note'=>$note,'appid'=>$appid]);
			}
			$str .= $key . "\r\n";
		}
		if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'kami_add','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
		if($out == 1){
			$str = "==============【".$type_res['name']."】卡密开始================\r\n\r\n".$str."\r\n==============卡密结束================";
			$msg = ['type'=>$type_res['type'],'amount'=>$type_res['amount'],'num'=>$num,'kami'=>$str];
			json(202,$msg);
		}else{
			json(200,'添加成功');
		}
	}

	if($act == 'note'){
		$id = isset($_POST['kid']) ? intval($_POST['kid']) : 0;
		$note = isset($_POST['note']) ? purge($_POST['note']) : '';
		if($id <= 0)json(201,'需要修改的卡密有误');
		$k_res = Db::table('kami')->where('id',$id)->find();
		if(!$k_res)json(201,'卡密不存在');
		
		$res = Db::table('kami')->where('id',$id)->update(['note'=>$note]);
		//die($res); 
		if($res){
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'kami_note','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(200,'编辑成功');
		}else{
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'kami_note','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(201,'编辑失败');
		}
	}

	if($act == 'state'){
		$id = isset($_POST['id']) ? intval($_POST['id']) : 0;
		$state = isset($_POST['state']) ? purge($_POST['state']) : 'y';
		if($id <= 0)json(201,'需要修改的卡密有误');
		$k_res = Db::table('kami')->where('id',$id)->find();
		if(!$k_res)json(201,'卡密不存在');
		
		$res = Db::table('kami')->where('id',$id)->update(['state'=>$state]);//,false
		//die($res); 
		if($res){
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'kami_state','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(200,'编辑成功');
		}else{
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'kami_state','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(201,'编辑失败');
		}
	}
	
	if($act == 'del'){//删除卡密
		$id = isset($_POST['id']) ? $_POST['id'] : '';
		if($id){
			$ids = '';
			foreach ($id as $value) {
				$ids .= intval($value).",";
			}
			$ids = rtrim($ids, ",");
			$res = Db::table('kami')->where('id','in','('.$ids.')')->del();//false
			//die($res);
			if($res){
				if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'kami_del','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
				json(200,'删除成功');
			}else{
				if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'kami_del','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
				json(201,'删除失败');
			}
		}else{
			json(201,'没有需要删除的数据');
		}
	}
	
	if($act == 'export'){//导出卡密
		$id = isset($_POST['id']) ? $_POST['id'] : '';
		if($id){
			$ids = '';
			foreach ($id as $value) {
				$ids .= intval($value).",";
			}
			$ids = rtrim($ids, ",");
			$kami_res = Db::table('kami')->where('id','in','('.$ids.')')->select();//false
			//json(201,$kami_res);
			$ret = [];
			if(!is_array($kami_res))json(201,'卡密导出失败');
			foreach ($kami_res as $k => $v){$rows = $kami_res[$k];
				$ret[] = [
					$rows['kami'],
					$rows['type'],
					$rows['amount'],
					$rows['note'],
					$rows['appid'],
					$rows['user'],
					$rows['end_time'],
					$rows['state']
				];
			}
			
			Db::table('kami')->where('id','in','('.$ids.')')->update(['new'=>'y'],false);//false
			
			//die($res);
			if(is_array($kami_res)){
				if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'kami_export','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
				$fileName = 'KM_'.count($kami_res).'_'.date("YmdHis",time());
				$th = ['卡密','类型','面值','备注','APPID','使用者','使用时间','状态'];
				$msg = ['fileName'=>$fileName,'th'=>$th,'tds'=>$ret];
				json(200,$msg);
			}else{
				if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'kami_export','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
				json(201,'导出失败失败');
			}
		}else{
			json(201,'没有需要删除的数据');
		}
	}
	
	json(201,'没有这个接口:'.$act);
?>