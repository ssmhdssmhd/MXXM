<?php
/*
Name:接口设置API
Version:1.0
*/
if (!isset($islogin)) header("Location: /"); //非法访问

/*添加分类*/
if ($act == 'add') {
    ($url = $_POST['url'] ? $_POST['url'] : '') or json(201, '请填写视频链接');
    ($sec = $_POST['sec'] ? $_POST['sec'] : '') or json(201, '请填写显示秒数');
    ($content = $_POST['content'] ? $_POST['content'] : '') or json(201, '请填写内容');
    ($appid = isset($_GET['appid']) ? $_GET['appid'] : 10000) or json(201, '请输入appid的值');

    
    $data = json_encode([$sec, 'right', '#ffd4ff', '', $content, '', '', '24px'], JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);
    // var_dump($data);die;
    $tableData = ['url' => $url, 'sec' => $sec, 'content' => $content, 'data' => $data, 'addtime' => time()];
    
    $m = Db::table('dm');
    $add_res = $m->add($tableData);
    // var_dump($m);die;
    if ($add_res) {
        json(200, '添加成功');
    } else {
        json(201, '添加失败');
    }
}

/*关闭接口*/
if ($act == 'del') {
    $url = isset($_POST['url']) ? $_POST['url'] : '';
    // var_dump($url);die;
    if ($url) {
        $urls = '';
        foreach ($url as $value) {
            $urls .= '"' . trim($value) . "\",";
        }
        $urls = rtrim($urls, ",");
        $m = Db::table('dm')->where('url', 'in', '(' . $urls . ')'); //->update(['status_off' => 1]);
        $res = $m->update(['status_off' => 1]);
        if ($res) {
            json(200, '关闭成功');
        } else {
            json(201, '关闭失败或此弹幕已关闭');
        }
    } else {
        json(201, '没有需要关闭的数据');
    }
}

/*开启接口*/
if ($act == 'edit') {
    $url = isset($_POST['url']) ? $_POST['url'] : '';
    // var_dump($url);die;
    if ($url) {
        $urls = '';
        foreach ($url as $value) {
            $urls .= '"' . trim($value) . "\",";
        }
        $urls = rtrim($urls, ",");
        $res = Db::table('dm')->where('url', 'in', '(' . $urls . ')')->update(['status_off' => 0]);
        if ($res) {
            json(200, '开启成功');
        } else {
            json(201, '开启失败或此弹幕已开启');
        }
    }
}

json(201, '没有这个接口:' . $act);
