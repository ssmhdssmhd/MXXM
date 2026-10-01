<?php
/*
Name:应用管理API
Version:1.0
*/
if (!isset($islogin)) header("Location: /"); //非法访问

if ($act == 'add') { //添加APP
	$name = isset($_POST['name']) && !empty($_POST['name']) ? purge($_POST['name']) : json(201, '应用名字不能为空');
	$bb = isset($_POST['bb']) ? purge($_POST['bb']) : '';
	$android_state = isset($_POST['android_state']) && !empty($_POST['android_state']) ? purge($_POST['android_state']) : 'y';
	$ios_state = isset($_POST['ios_state']) && !empty($_POST['ios_state']) ? purge($_POST['ios_state']) : 'y';
	$appid = isset($_POST['appid']) ? intval($_POST['appid']) : 0;

	$app_res = Db::table('app')->where('name', $name)->find();
	if ($app_res) json(201, '应用名称重复');
	if ($appid > 0) {
		$app_res = Db::table('app')->where('id', $appid)->find();
		if (!$app_res) json(201, '继承应用不存在');
		$app_res['name'] = $name;
		$app_res['appkey'] = md5(time());
		if (empty($bb)) {
			$app_res['android_state'] = $bb;
			$app_res['ios_state'] = $bb;
		}
		$app_res['android_state'] = $android_state;
		$app_res['ios_state'] = $ios_state;
		$app_res['appkey'] = md5(time());
		unset($app_res['id']);
		$add = $app_res;
	} else {
		if (empty($bb)) {
			$bb = '1.0';
		}
		$add = ['name' => $name, 'android_state' => $android_state, 'android_bb' => $bb, 'ios_state' => $ios_state, 'ios_bb' => $bb, 'appkey' => md5(time())];
	}
	$res = Db::table('app')->add($add);
	//die($res); 
	if ($res) {
		/*添加主控配置*/
		$res_app = Db::table('app')->order('id DESC  limit 1')->find();
		$res_main = Db::table('main')->where('uid', $res_app['id'])->find();
		if (empty($res_main)) {
			//$add_main = Db::table('main')->add(['uid'=>$res_app['id'],'User_url'=>'','Api_url'=>'']);
			$add_main = Db::table('main')->add(['uid' => $res_app['id'], 'id' => $res_app['id']]);
		} else {
			//$add_main = Db::table('main')->where('uid',$res_app['id'])->update(['User_url'=>'','Api_url'=>'']);
			$add_main = Db::table('main')->where('uid', $res_app['id'])->update(['id' => $res_app['id']]);
		}

		if (defined('ADM_LOG') && ADM_LOG == 1) {
			Db::table('log')->add(['group' => 'adm', 'type' => 'app_add', 'status' => 200, 'time' => time(), 'ip' => getip(), 'data' => json_encode($_POST)]);
		} //记录日志
		json(200, '添加成功');
	} else {
		if (defined('ADM_LOG') && ADM_LOG == 1) {
			Db::table('log')->add(['group' => 'adm', 'type' => 'app_add', 'status' => 201, 'time' => time(), 'ip' => getip(), 'data' => json_encode($_POST)]);
		} //记录日志
		json(201, '添加失败');
	}
}
// var_dump($act);die;
if ($act == 'edit') { //编辑应用
	// 1. 输入验证
	$id = isset($_POST['id']) ? intval($_POST['id']) : 0;
	if ($id <= 0) {
		json(400, '应用ID无效');
	}
	unset($_POST['id']);

	// 验证应用名称是否重复
	if (isset($_POST['name']) && !empty($_POST['name'])) {
		$app_res = Db::table('app')->where('name', purge($_POST['name']))->find();
		if ($app_res && $app_res['id'] != $id) {
			json(201, '应用名称重复');
		}
	}

	// 验证必要的更新数据是否存在
	if (!isset($_POST['appData']) || empty($_POST['appData'])) {
		json(400, '应用数据不能为空');
	}
	if (!isset($_POST['mainData']) || empty($_POST['mainData'])) {
		json(400, '主配置数据不能为空');
	}

	// 2. 开始事务处理
	$db = Db::getInstance();
	$logData = [
		'group' => 'adm',
		'type' => 'app_edit',
		'time' => time(),
		'ip' => getip(),
		'data' => json_encode($_POST)
	];

	try {
		// 开始事务
		$db->startTransaction();
		
		// 执行更新操作
		$appUpdateResult = $db->table('app')->where('id', $id)->update($_POST['appData']);
		$mainUpdateResult = $db->table('main')->where('uid', $id)->update($_POST['mainData']);

		// 检查更新结果 - 只要有一个表更新成功就认为操作成功
		if ($appUpdateResult || $mainUpdateResult) {
			// 提交事务
			$db->commit();

			// 记录成功日志
			if (defined('ADM_LOG') && ADM_LOG == 1) {
				$logData['status'] = 200;
				$successTables = [];
				if ($appUpdateResult) $successTables[] = 'app表';
				if ($mainUpdateResult) $successTables[] = 'main表';
				$logData['data'] = '成功更新: ' . implode('和', $successTables) . ' 数据: ' . json_encode($_POST);
				$db->table('log')->add($logData);
			}
			json(200, '编辑成功');
		} else {
			//throw new Exception('app表和main表均更新失败');
			json(201, '编辑失败');
		}
	} catch (Exception $e) {
		// 发生异常，回滚事务
		$db->rollback();

		// 记录失败日志
		if (defined('ADM_LOG') && ADM_LOG == 1) {
			$logData['status'] = 201;
			$logData['data'] = '错误: ' . $e->getMessage() . ' 数据: ' . json_encode($_POST);
			$db->table('log')->add($logData);
		}
		json(201, '编辑失败: ' . $e->getMessage());
	}
}


if ($act == 'del') { //删除应用
	$id = isset($_POST['id']) ? $_POST['id'] : '';
	if ($id) {
		$ids = '';
		foreach ($id as $value) {
			$ids .= intval($value) . ",";
		}
		$ids = rtrim($ids, ",");



		$res = Db::table('app')->where('id', 'in', '(' . $ids . ')')->del(); //false

		$main_res = Db::table('main')->where('id', 'in', '(' . $ids . ')')->del();

		// 			die($res);
		if ($res) {
			if (defined('ADM_LOG') && ADM_LOG == 1) {
				Db::table('log')->add(['group' => 'adm', 'type' => 'app_del', 'status' => 200, 'time' => time(), 'ip' => getip(), 'data' => json_encode($_POST)]);
			} //记录日志
			json(200, '删除成功');
		} else {
			if (defined('ADM_LOG') && ADM_LOG == 1) {
				Db::table('log')->add(['group' => 'adm', 'type' => 'app_del', 'status' => 201, 'time' => time(), 'ip' => getip(), 'data' => json_encode($_POST)]);
			} //记录日志
			json(201, '删除失败');
		}
	} else {
		json(201, '没有需要删除的数据');
	}
}

json(201, '没有这个接口:' . $act);
