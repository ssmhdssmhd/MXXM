<?php
/*
Name:接口设置API
Version:1.0
*/
	if(!isset($islogin))header("Location: /");//非法访问
	
    /*添加分类*/
    if($act == 'add'){
    	$name = $_POST['name'] ? $_POST['name'] : '';
        if ($name == '') json(201, '请填写分类名称');
        $live_res = Db::table('live_channeltype')->where(['name'=>$name])->find();
		if($live_res)json(201,'分类已存在');
        $add_res = Db::table('live_channeltype')->add(['name' => $name,'state' => 1]);
        if ($add_res) {
            // if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'add_Interface','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
            json(200, '添加成功');
        }else{
            // if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'add_Interface','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
            json(201, '添加失败');
        }
    }
    
    /*删除分类*/
    if($act == 'del'){
	    $id = isset($_POST['id']) ? $_POST['id'] : '';
    	if($id){
    		$ids = '';
    		foreach ($id as $value) {
    			$ids .= intval($value).",";
    		}
    		$ids = rtrim($ids, ",");
    		$res = Db::table('live_channeltype')->where('id','in','('.$ids.')')->del();
    		if($res){
    		  //  if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'del_Interface','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
    			json(200,'删除成功');
    		}else{
    		  //  if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'del_Interface','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
    		    json(201,'删除失败');
    		}
    	}else{
    		json(201,'没有需要删除的数据');
    	}
    }
    
    /*编辑分类*/
    if($act == 'edit'){
		$id = isset($_POST['id']) ? intval($_POST['id']) : 0;
		unset($_POST['id']);
		$live_res = Db::table('live_channeltype')->where(['name'=>$_POST['name']])->find();
		if($live_res)json(201,'分类已存在');
		$res = Db::table('live_channeltype')->where('id',$id)->update($_POST);
		if($res){
		  //  if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'edit_Interface','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
    		json(200,'编辑成功');
    	}else{
    	   // if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'edit_Interface','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
    	    json(201,'编辑失败1');
    	}
	}
    
    /*添加源*/
    if ($act == 'addlive') {
        // 标识名称
        $name = $_POST['name'] ? $_POST['name'] : '';
        // 接口
        $one_way_connect = isset($_POST['one_way_connect']) ? intval($_POST['one_way_connect']) : 0;
        // 验证基础信息
        if ($name == '') json(201, '显示名称为空');
        if (empty($one_way_connect)) json(201, '请先选择/添加分类');
        $res = Db::table('live')->where(['name' => $name])->find(); 
        if (!empty($res)) json(201, '频道已存在');
        $add_res = Db::table('live')->add(['name'=>$name, 'url'=> $one_way_connect]);
        // 保存结果
        if ($add_res) {
            // if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'add_analysis','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
            json(200, '添加成功');
        }else{
            // if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'add_analysis','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
            json(201, '添加失败');
        }
        
    }
    
    /*删除源*/
    if ($act == 'dellive') {
        $id = isset($_POST['id']) ? $_POST['id'] : '';
        if ($id) {
            $ids = '';
            foreach ($id as $value) {
                $ids.= intval($value) . ",";
            }
            $ids = rtrim($ids, ",");
            $res = Db::table('live')->where('id', 'in', '(' . $ids . ')')->del();
            if ($res) {
                // if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'del_analysis','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
                json(200, '删除成功');
            }else{
                // if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'del_analysis','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
                json(201, '删除失败');
            }
            
        } else {
            json(201, '没有需要删除的数据');
        }
    }
    
    /*编辑源*/
    if($act == 'liveedit'){
		$id = isset($_POST['id']) ? intval($_POST['id']) : 0;
		unset($_POST['id']);
		if (empty($_POST['data'])) {
		    $_POST['empty'] = 0;
		}else{
		    $_POST['empty'] = 1;
		}
		if (strpos($_POST['data'], ',') == false) {
            json(201, '数据格式错误!');  
        }
		$res = Db::table('live')->where('id',$id)->update($_POST);
		if($res){
		  //  if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'edit_analysis','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
    		json(200,'编辑成功');
    	}else{
    	   // if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'edit_analysis','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
    	    json(201,'编辑失败');
    	}
	}
	
	/*批量导入*/
	if($act == 'batchImport'){
        $data = $_POST['data'];
        $appid = isset($_POST['appid']) ? intval($_POST['appid']) : 0;
        $type = isset($_POST['type']) ? intval($_POST['type']) : 0;
        if (!$data) json(201,'请填输入数据!');
        if (empty($type)) json(201,'分类错误,请先设置分类!');
        $lines = explode("\n", $data);
        $names = [];  
        foreach ($lines as $line) {
            if (strpos($line, ',') == false) {
                json(201, '提交的数据中有格式错误链接!');  
            }
            list($name, $data) = explode(",", $line);  
            if (in_array($name, $names)) {    
                json(201, '提交数据重复频道: ' . $name . '导入中止');    
                return;  
            }
            $names[] = $name;   
            $user_res = Db::table('live')->where(['appid' => $appid, 'name' => $name])->find();    
            if ($user_res) {    
                json(201, '频道' . $name . '已存在导入被中止');    
                return;  
            }    
        } 
        foreach ($lines as $line) {  
            list($name, $data) = explode(",", $line);
            $add_res = Db::table('live')->add(['name' => $name,'data' => $name.','.$data,'appid' => $appid,'url' => $type,'empty'=>1]);  
            if (!$add_res) {    
                json(201, '导入失败');    
                return;   
            }    
        }
        json(200, '直播源导入成功');
	}
	
	/*批量修改分类*/
	if($act == 'modifyclass'){
    	$id = isset($_POST['id']) ? $_POST['id'] : '';
    	$types = isset($_POST['types']) ? intval($_POST['types']) : 0;
    	if($id){
    		$ids = '';
    		foreach ($id as $value) {
    			$ids .= intval($value).",";
    		}
    		$ids = rtrim($ids, ",");
		    $res = Db::table('live')->where('id','in','('.$ids.')')->update(['url'=>trim($types)]);//false
    		//die($res);
    		if($res){
    			json(200,'修改成功');
    		}json(201,'修改失败');
    	}else{
    		json(201,'没有需要修改的数据');
    	}
    }
    
    /*单独修改分类*/
	if($act == 'classtype'){
    	$id = isset($_POST['id']) ? intval($_POST['id']) : 0;
    	$names = $_POST['names'] ? $_POST['names'] : '';
    	if($id <= 0)json(201,'需要修改的应用有误');
    	$k_res = Db::table('live')->where('id',$id)->find();
    	if(!$k_res)json(201,'该名称不存在');
    	$res = Db::table('live')->where('id',$id)->update(['url'=>trim($names)]);
    	//die($res); 
    	if($res){
    		json(200,'编辑成功');
    	}json(201,'编辑失败');
    }

	json(201,'没有这个接口:'.$act);
?>