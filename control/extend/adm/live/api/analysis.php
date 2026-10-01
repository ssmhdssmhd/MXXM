<?php
/*
Name:接口设置API
Version:1.0
*/
	if(!isset($islogin))header("Location: /");//非法访问
	
	/*添加解析*/
    if ($act == 'addanalysis') {
        $name = $_POST['name'] ? $_POST['name'] : '';
        $add_keyword = $_POST['add_keyword'] ? $_POST['add_keyword'] : '';
        $one_way_connect = isset($_POST['one_way_connect']) ? intval($_POST['one_way_connect']) : 0;
        $Core = isset($_POST['Core']) ? intval($_POST['Core']) : 99;
        // 验证基础信息
        if ($name == '') json(201, '显示名称为空');
        if ($add_keyword == '') json(201, '关键字为空');
        // 查询关键字是否存在
        $add_res = Db::table('live_analysis')->where(['keyword'=>$add_keyword])->find();
        if ($add_res) json(201, '关键字已存在');
        $add_res = Db::table('live_analysis')->add(['name'=>$name, 'url'=> $one_way_connect, 'keyword' => $add_keyword ,'Core'=>$Core]);
        if ($add_res) {
            if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'add_analysis','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
            json(200, '添加成功');
        }else{
            if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'add_analysis','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
            json(201, '添加失败');
        }
        
    }
    
    /*删除解析*/
    if ($act == 'delanalysis') {
        $id = isset($_POST['id']) ? $_POST['id'] : '';
        if ($id) {
            $ids = '';
            foreach ($id as $value) {
                $ids.= intval($value) . ",";
            }
            $ids = rtrim($ids, ",");
            $res = Db::table('live_analysis')->where('id', 'in', '(' . $ids . ')')->del();
            if ($res) {
                if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'del_analysis','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
                json(200, '删除成功');
            }else{
                if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'del_analysis','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
                json(201, '删除失败');
            }
            
        } else {
            json(201, '没有需要删除的数据');
        }
    }
    
    /*解析编辑*/
    if($act == 'analysisedit'){
		$id = isset($_POST['id']) ? intval($_POST['id']) : 0;
		unset($_POST['id']);
		$res = Db::table('live_analysis')->where('id',$id)->update($_POST);
		if($res){
		    if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'edit_analysis','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
    		json(200,'编辑成功');
    	}else{
    	    if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'edit_analysis','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
    	    json(201,'编辑失败');
    	}
	}

    /*解析状态*/
    if($act == 'state'){
		$id = isset($_POST['id']) ? intval($_POST['id']) : 0;
        unset($_POST['id']);
        $res = Db::table('live_analysis')->where('id',$id)->update($_POST);
		//die($res); 
		if($res){
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'edit_analysis','status'=>200,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(200,'操作成功');
		}else{
			if(defined('ADM_LOG') && ADM_LOG == 1){Db::table('log')->add(['group'=>'adm','type'=>'edit_analysis','status'=>201,'time'=>time(),'ip'=>getip(),'data'=>json_encode($_POST)]);}//记录日志
			json(201,'操作失败');
		}
	}
    
	json(201,'没有这个接口:'.$act);
?>