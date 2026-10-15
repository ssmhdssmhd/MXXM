<?php
include "config.php";
include dirname(__FILE__) . '/../include/class.db.php';
/*
 session_start(); 
 if(isset($_SESSION['lock_config'])){ $time=(int)$_SESSION['lock_config']-(int)time(); if($time>0){ exit(json_encode(array('success'=>0,'icon'=>5,'m'=>"请勿频繁提交，".$time."秒后再试！")));}}
 $_SESSION['lock_config']= time()+ $from_timeout;
*/

//检测参数
if (!filter_has_var(INPUT_POST, "type")) { exit(json_encode(array('success' => 0, 'icon' => 0, 'm' => "请勿非法调用！")));}

//传参初始化
$type = filter_input(INPUT_POST, 'type');
$id = filter_input(INPUT_POST, 'id');

//json 初始化
$info = array('success' => 0, 'icon' => 6);

//本接口统一返回 JSON，显式声明响应类型，避免被中间层（代理/网关）注入非 JSON 内容
header('Content-Type: application/json; charset=utf-8');

switch ($type) {

    //防火墙规则 关闭	
    case 'black_match_stop':
        isid();    
        $CONFIG["BLACKLIST"]['match'][$id]['off'] = "0";
        $info['m'] = "已停用";
        $info['icon'] = 5;
        break;
    //防火墙白规则 开启I 
    case 'black_match_start':
        isid();
        $CONFIG["BLACKLIST"]['match'][$id]['off'] = "1";
        $info['m'] = "已开启";
        break;
    //防火墙规则 删除 
    case 'black_match_del':
         isid();
         $id=explode(",",$id);
        if (is_array($id)) {
            foreach ($id as $key) {
                unset($CONFIG["BLACKLIST"]['match'][$key]);              
            }
        } else {
             unset($CONFIG["BLACKLIST"]['match'][$id]);
       
        }
        array_values($CONFIG["BLACKLIST"]['match']);
        $info['id'] = filter_input(INPUT_POST, 'id');
        $info['m'] = "删除成功";
        break;

    //防火墙规则 添加项 	 
    case 'black_match_add' :

        $CONFIG["BLACKLIST"]['match'][] = array(
            'off' => filter_input(INPUT_POST, 'BLACKLIST_MATCTH_OFF'),
            'type' =>filter_input(INPUT_POST, 'BLACKLIST_MATCTH_TYPE'),
            'for' =>filter_input(INPUT_POST, 'BLACKLIST_MATCTH_FOR'),
            'val' => preg_split('/[\r\n]+/s', trim(filter_input(INPUT_POST, 'BLACKLIST_MATCTH_VAL'))),
            'black' => filter_input(INPUT_POST, 'BLACKLIST_MATCTH_BLACK'),
            'name' => filter_input(INPUT_POST, 'BLACKLIST_MATCTH_NAME'),
            'match' =>  filter_input(INPUT_POST, 'BLACKLIST_MATCTH_MATCH'),
            'num' =>  filter_input(INPUT_POST, 'BLACKLIST_MATCTH_NUM')
        );

        $info['m'] = "添加成功";
        break;

    //防火墙规则 修改	 
    case 'black_match_edit' :
          isid(); 
         $CONFIG["BLACKLIST"]['match'][$id] = array(
            'off' => filter_input(INPUT_POST, 'BLACKLIST_MATCTH_OFF'),
            'type' =>filter_input(INPUT_POST, 'BLACKLIST_MATCTH_TYPE'),
            'for' =>filter_input(INPUT_POST, 'BLACKLIST_MATCTH_FOR'),
            'val' => preg_split('/[\r\n]+/s', trim(filter_input(INPUT_POST, 'BLACKLIST_MATCTH_VAL'))),
            'black' => filter_input(INPUT_POST, 'BLACKLIST_MATCTH_BLACK'),
            'name' => filter_input(INPUT_POST, 'BLACKLIST_MATCTH_NAME'),
            'match' =>  filter_input(INPUT_POST, 'BLACKLIST_MATCTH_MATCH'),
            'num' =>  filter_input(INPUT_POST, 'BLACKLIST_MATCTH_NUM')
        );

        $info['m'] = "修改成功";
        break;


    //防火墙动作 添加 	 
    case 'black_black_add' :

        $CONFIG["BLACKLIST"]['black'][] = array(
            'type' => filter_input(INPUT_POST, 'BLACKLIST_BLACK_TYPE'),
            'action' =>  filter_input(INPUT_POST, 'BLACKLIST_BLACK_ACTION'),
            'info' => base64_encode(filter_input(INPUT_POST, 'BLACKLIST_BLACK_INFO')),
            'name' => filter_input(INPUT_POST, 'BLACKLIST_BLACK_NAME'),
        );

        $info['m'] = "添加成功";
        break;

    //防火墙动作 修改 	 
    case 'black_black_edit' :
          isid();
         $CONFIG["BLACKLIST"]['black'][$id] = array(
            'type' => filter_input(INPUT_POST, 'BLACKLIST_BLACK_TYPE'),
            'action' =>  filter_input(INPUT_POST, 'BLACKLIST_BLACK_ACTION'),
            'info' => base64_encode(filter_input(INPUT_POST, 'BLACKLIST_BLACK_INFO')),
            'name' => filter_input(INPUT_POST, 'BLACKLIST_BLACK_NAME'),
        );

        $info['m'] = "修改成功";
        break;

       
    //防火墙动作 删除 
    case 'black_black_del':
        isid();
         $id=explode(",",$id);
        if (is_array($id)) {
            foreach ($id as $key) {
               unset($CONFIG["BLACKLIST"]['black'][$key]);   
            }
        } else {
              unset($CONFIG["BLACKLIST"]['black'][$id]);   
        }
        array_values($CONFIG["BLACKLIST"]['black']);
        $info['id'] = filter_input(INPUT_POST, 'id');
        $info['m'] = "删除成功";
        break;

        

    //广告过滤规则 添加项 	 
    case 'adblack_match_add' :

         $arr=preg_split('/[\r\n]+/s', trim(filter_input(INPUT_POST, 'BLACKLIST_ADBLACK_MATCH_VAL')));
        
         foreach($arr as $key){$val=explode("=>",$key); $array[trim($val[0])]=trim($val[1]);}

        $CONFIG["BLACKLIST"]['adblack']['match'][] = array(
            'off' => filter_input(INPUT_POST, 'BLACKLIST_ADBLACK_MATCH_OFF'),
            'name' => filter_input(INPUT_POST, 'BLACKLIST_ADBLACK_MATCH_NAME'),
            'target' =>  filter_input(INPUT_POST, 'BLACKLIST_ADBLACK_MATCH_TARGET'),
            'num' =>  filter_input(INPUT_POST, 'BLACKLIST_ADBLACK_MATCH_NUM'),
            'ref' =>  filter_input(INPUT_POST, 'BLACKLIST_ADBLACK_MATCH_REF'),
            'val' =>$array
        );
        $info['m'] = "添加成功";
        break;
        
      //广告过滤规则 修改项 	 
    case 'adblack_match_edit' :
         isid();
      
        $CONFIG["BLACKLIST"]['adblack']['match'][$id] = array(
            'off' => filter_input(INPUT_POST, 'BLACKLIST_ADBLACK_MATCH_OFF'),
            'name' => filter_input(INPUT_POST, 'BLACKLIST_ADBLACK_MATCH_NAME'),
            'target' =>filter_input(INPUT_POST, 'BLACKLIST_ADBLACK_MATCH_TARGET'),
            'ref' =>  filter_input(INPUT_POST, 'BLACKLIST_ADBLACK_MATCH_REF'),
            'num' =>  filter_input(INPUT_POST, 'BLACKLIST_ADBLACK_MATCH_NUM'),
            'val' =>   GetPostArr("BLACKLIST_ADBLACK_MATCH_VAL",TRUE)
        );
        $info['m'] = "修改成功";
        break;   
        
     
    //广告过滤规则 关闭	
    case 'adblack_match_stop':
        isid();    
        $CONFIG["BLACKLIST"]['adblack']['match'][$id]['off'] = "0";
        $info['m'] = "已停用";
        $info['icon'] = 5;
        break;
    //广告过滤规则 开启
    case 'adblack_match_start':
        isid();
        $CONFIG["BLACKLIST"]['adblack']['match'][$id]['off'] = "1";
        $info['m'] = "已开启";
        break;
    //广告过滤规则 删除 
    case 'adblack_match_del':
         isid();
         $id=explode(",",$id);
        if (is_array($id)) {
            foreach ($id as $key) {
                unset($CONFIG["BLACKLIST"]['adblack']['match'][$key]);              
            }
        } else {
             unset($CONFIG["BLACKLIST"]['adblack']['match'][$id]);
       
        }
        array_values($CONFIG["BLACKLIST"]['adblack']['match']);
        $info['id'] = filter_input(INPUT_POST, 'id');
        $info['m'] = "删除成功";
        break;   
        
     //广告过滤 基本参数设置
    case 'adblack_system':           
        $CONFIG["BLACKLIST"]['adblack']['name'] = trim(filter_input(INPUT_POST, 'ADBLACK_NAME'));
        $info['m'] = "保存成功";
        break; 
 
        
    //对接 添加
    case 'link_add' :
     
        $CONFIG["LINK_URL"][] = array(
            'off' => filter_input(INPUT_POST, 'LINK_OFF'),
            'type' => filter_input(INPUT_POST, 'LINK_TYPE'),
	    'api' => filter_input(INPUT_POST, 'LINK_API'),
	    'match' =>filter_input(INPUT_POST, 'LINK_MATCH'),
            'num' => filter_input(INPUT_POST, 'LINK_NUM'),
            'name' => trim(filter_input(INPUT_POST, 'LINK_NAME')),
            'path' =>trim(filter_input(INPUT_POST, 'LINK_PATH')),
            'shell' => trim(filter_input(INPUT_POST, 'LINK_SHELL')),
             'html' => trim(filter_input(INPUT_POST, 'LINK_HTML')),  
            'fields' => trim(filter_input(INPUT_POST, 'LINK_FIELDS')),
           'strtr' => trim(filter_input(INPUT_POST, 'LINK_STRTR')),
            'cookie' => filter_input(INPUT_POST, 'LINK_COOKIE'),
            'proxy' => filter_input(INPUT_POST, 'LINK_PROXY'),  
            'val_off' => filter_input(INPUT_POST, 'LINK_VAL_OFF'), 
            'header' => GetPostArr("LINK_HEADER",":"),
            'add' => GetPostArr("LINK_ADD"),
            'val' => GetPostArr("LINK_VAL"),
      
        );
        $info['m'] = "添加成功";
        break;

    //对接 修改    
    case 'link_edit' :
         isid();
		  $match=filter_input(INPUT_POST, 'LINK_MATCH');
          $CONFIG["LINK_URL"][$id] = array(
            'off' => filter_input(INPUT_POST, 'LINK_OFF'),
            'type' => filter_input(INPUT_POST, 'LINK_TYPE'),
	    'api' => filter_input(INPUT_POST, 'LINK_API'),
            'match' =>filter_input(INPUT_POST, 'LINK_MATCH'),
            'num' => filter_input(INPUT_POST, 'LINK_NUM'),
            'name' => trim(filter_input(INPUT_POST, 'LINK_NAME')),
            'path' =>trim(filter_input(INPUT_POST, 'LINK_PATH')),
            'shell' => trim(filter_input(INPUT_POST, 'LINK_SHELL')),
            'html' => trim(filter_input(INPUT_POST, 'LINK_HTML')),  
            'fields' => trim(filter_input(INPUT_POST, 'LINK_FIELDS')),
	  'strtr' => trim(filter_input(INPUT_POST, 'LINK_STRTR')),
            'cookie' => filter_input(INPUT_POST, 'LINK_COOKIE'),
            'proxy' => filter_input(INPUT_POST, 'LINK_PROXY'),  
            'val_off' => filter_input(INPUT_POST, 'LINK_VAL_OFF'),   
            'header' => GetPostArr("LINK_HEADER",":"),
            'add' => GetPostArr("LINK_ADD"),
            'val' => GetPostArr("LINK_VAL"),
              
      
        );
        $info['match'] = $match;
        $info['m'] = "修改成功";
        break;

//对接 删除 
    case 'link_del':
        isid();
        $id=explode(",",$id);
        if (is_array($id)){foreach ($id as $key) {unset($CONFIG["LINK_URL"][$key]); }} else {unset($CONFIG["LINK_URL"][$id]);}
        array_values($CONFIG["LINK_URL"]);
        $info['id'] = filter_input(INPUT_POST, 'id');
        $info['m'] = "删除成功";
        break;
//对接 停止
    case 'link_stop':
        isid();
        $CONFIG["LINK_URL"][$id]['off'] = 0;
        $info['m'] = "已停用";
        $info['icon'] = 5;
        break;

    //对接 启动
    case 'link_start':
         isid();
        $CONFIG["LINK_URL"][$id]['off'] = 1;
        $info['m'] = "已启用";
        $info['icon'] = 6;
        break;

    //修改 管理员密码 
    case 'user_edit':
        $CONFIG["user"] = trim(filter_input(INPUT_POST, 'username'));
        $CONFIG["pass"] = md5(trim(filter_input(INPUT_POST, 'password')));
        $info['m'] = $user . "修改成功";
        break;
    //更新 云规则（从当前仓库 GZ/ 实时拉取，实现免维护自动更新）
    case 'upyundata':
        $meta = @include dirname(__FILE__) . '/../version.php';
        $repo = (is_array($meta) && !empty($meta['repo'])) ? $meta['repo'] : 'ssmhdssmhd/MXXM';
        $branch = (is_array($meta) && !empty($meta['branch'])) ? $meta['branch'] : 'main';
        $api = "https://raw.githubusercontent.com/" . $repo . "/" . $branch . "/GZ";

        //规则写入目标：优先 GZ/，缺失时回退 save/
        $ruleFile = file_exists(dirname(__FILE__) . '/../GZ/yun.match.php') ? dirname(__FILE__) . '/../GZ/yun.match.php' : "../save/yun.match.php";
        $verFile  = file_exists(dirname(__FILE__) . '/../GZ/yun.ver.js') ? dirname(__FILE__) . '/../GZ/yun.ver.js' : "../save/yun.ver.js";

        $data = curl($api . "/yun.match.php?t=" . uniqid());
        if ($data && preg_match("/\<\?php[\S\s]*\?\>/i", $data) && strpos($data, '$YUN_MATCH') !== false) {
            if (file_put_contents($ruleFile, $data)) {
                $data = curl($api . "/yun.ver.js?t=" . uniqid());
                if ($data) { file_put_contents($verFile, $data); }
                $info["success"] = 1;
                $info['m'] = "云规则更新成功";
                exit(json_encode($info));
            }
        }
        $info['success'] = 0;
        $info['icon'] = 5;
        $info['m'] = "更新失败，请检查网络或仓库 GZ/ 规则是否存在！";
        exit(json_encode($info));
        
    case 'reset':    
        
          if(copy('../source/bak/config.php','../save/config.php')){
          copy('../source/bak/yun.config.php','../save/yun.config.php');
          copy('../source/bak/yun.data.php','../save/yun.data.php');
          copy('../source/bak/yun.match.php','../save/yun.match.php');
          copy('../source/bak/top.inc.php','../save/top.inc.php');
            $info["success"] = 1;
            $info['icon'] = 6;
            $info['m'] = "恢复成功！";
          
        }else{
             $info['success'] = 0;
             $info['icon'] = 5;
             $info['m'] = "恢复失败，请检查文件权限！";
        }
         exit(json_encode($info));
          
    case 'check':
        //检测配置文件

    
        $info['m'] = "查询成功!";
        $info["success"] = 1;
        $info['icon'] = 6;
        $info["config"]=file_exists(dirname(__FILE__).'/../save/config.php')?1:0;
        $info["save"]=is_writable(dirname(__FILE__).'/../save')?1:0;
        $info["cache"]=is_writable(dirname(__FILE__).'/../cache')?1:0;
        exit(json_encode($info));
    case 'recache':
        //if(function_exists("opcache_reset")){opcache_reset();}
        //缓存目录不存在时先创建，确保一键清理缓存可用
        if(!is_dir(dirname(__FILE__).'/../cache')){ @mkdir(dirname(__FILE__).'/../cache',0755,true); }
        $cache = new Main_Cache(array("cachetype"=>$CONFIG["chche_config"]["type"],"cacheDir"=>"../cache","cacheprot"=>$CONFIG["chche_config"]["prot"],'cacheTime'=>GlobalBase::is_time($CONFIG["chche_config"]["time"])));
        if($cache->clear_all()){
            $info["success"] = 1;
            $info['icon'] = 6;
            $info['m'] = "缓存已成功清除！";
            
        }else{
            $info["success"] = 0;
            $info['icon'] = 5;
            $info['m'] = "清除失败,请检查文件权限!";
            
        }
        exit(json_encode($info));
        
    //在线更新 检查版本（实时对比当前版本与远程仓库版本）
    case 'update_check':
        $meta = @include dirname(__FILE__) . '/../version.php';
        if (!is_array($meta)) {
            $meta = array('version' => 'v.0.0.1', 'time' => '', 'repo' => 'ssmhdssmhd/MXXM', 'branch' => 'main');
        }
        $repo = !empty($meta['repo']) ? $meta['repo'] : 'ssmhdssmhd/MXXM';
        $branch = !empty($meta['branch']) ? $meta['branch'] : 'main';

        //最新提交信息（同时拿到 commit SHA，用于精确拉 version.php —— 绕开 raw CDN 缓存）
        $commit = '';
        $latestSha = '';
        $json = curl('https://api.github.com/repos/' . $repo . '/commits/' . $branch . '?t=' . time());
        if ($json) {
            $arr = json_decode($json, true);
            if (is_array($arr) && !empty($arr['sha'])) {
                $latestSha = $arr['sha'];
                $ts = !empty($arr['commit']['author']['date']) ? strtotime($arr['commit']['author']['date']) : 0;
                $date = $ts ? date('Y-m-d H:i:s', $ts) : '';
                $msg = !empty($arr['commit']['message']) ? strtok($arr['commit']['message'], "\n") : '';
                $commit = trim($date . ' ' . $msg) . ' (' . substr($arr['sha'], 0, 7) . ')';
            }
        }

        //远程版本：优先用 commit SHA 精确拉（100% 不受 CDN 缓存影响）；fallback 到 branch ref
        $remote = array('version' => '', 'time' => '');
        $urls = array();
        if ($latestSha !== '') {
            $urls[] = 'https://raw.githubusercontent.com/' . $repo . '/' . $latestSha . '/version.php';
        }
        $urls[] = 'https://raw.githubusercontent.com/' . $repo . '/' . $branch . '/version.php?t=' . time();
        foreach ($urls as $u) {
            $txt = curl($u);
            if ($txt) {
                if (preg_match("/'version'\s*=>\s*'([^']+)'/i", $txt, $m)) { $remote['version'] = $m[1]; }
                if (preg_match("/'time'\s*=>\s*'([^']+)'/i", $txt, $m))     { $remote['time']    = $m[1]; }
                if ($remote['version'] !== '') break;
            }
        }

        $info['local']  = $meta['version'];
        $info['repo']   = $repo . ' @ ' . $branch;
        $info['commit'] = $commit !== '' ? $commit : '获取失败';

        if ($remote['version'] === '') {
            $info['success'] = 0;
            $info['icon'] = 5;
            $info['m'] = "无法获取远程版本，请检查服务器网络！";
            $info['remote'] = '获取失败';
            $info['has_update'] = -1;
            exit(json_encode($info));
        }

        $info['success'] = 1;
        $info['icon'] = 6;
        $info['m'] = "检测完成";
        $info['remote'] = $remote['version'];
        $info['has_update'] = (strcasecmp(trim($remote['version']), trim($meta['version'])) === 0) ? 0 : 1;
        exit(json_encode($info));

    //在线更新 执行更新（实时拉取仓库代码并覆盖到本地）
    case 'update_run':
        $meta = @include dirname(__FILE__) . '/../version.php';
        $repo = (is_array($meta) && !empty($meta['repo'])) ? $meta['repo'] : 'ssmhdssmhd/MXXM';
        $branch = (is_array($meta) && !empty($meta['branch'])) ? $meta['branch'] : 'main';
        $root = dirname(dirname(__FILE__));

        if (!class_exists('ZipArchive')) {
            $info['m'] = "服务器未开启 ZipArchive 扩展，无法在线更新！";
            exit(json_encode($info));
        }
        if (!is_writable($root)) {
            $info['m'] = "项目根目录不可写，请检查目录权限后再试！";
            exit(json_encode($info));
        }

        //实时下载仓库最新代码包
        $data = curl('https://codeload.github.com/' . $repo . '/zip/refs/heads/' . $branch);
        if (!$data || strlen($data) < 100) {
            $info['m'] = "下载更新包失败，请检查服务器网络或防火墙设置！";
            exit(json_encode($info));
        }

        $tmpZip = tempnam(sys_get_temp_dir(), 'mxxm_');
        if (!@file_put_contents($tmpZip, $data)) {
            $info['m'] = "更新包写入失败，请检查服务器临时目录权限！";
            exit(json_encode($info));
        }

        $zip = new ZipArchive();
        if ($zip->open($tmpZip) !== true) {
            @unlink($tmpZip);
            $info['m'] = "更新包解压失败（文件可能损坏）！";
            exit(json_encode($info));
        }
        $tmpDir = sys_get_temp_dir() . '/mxxm_upd_' . uniqid();
        @mkdir($tmpDir, 0755, true);
        $zip->extractTo($tmpDir);
        $zip->close();
        @unlink($tmpZip);

        //定位压缩包内层根目录
        $dirs = glob($tmpDir . '/*', GLOB_ONLYDIR);
        $src = !empty($dirs) ? $dirs[0] : $tmpDir;

        //覆盖写入项目根目录，跳过 save/ 目录以保护用户配置与数据
        mxxm_copy_dir($src, $root, array('save'));

        //读取更新后的版本号
        $newVer = '';
        if (file_exists($src . '/version.php')) {
            $nv = @include $src . '/version.php';
            if (is_array($nv) && !empty($nv['version'])) { $newVer = $nv['version']; }
        }

        mxxm_rmdir($tmpDir);

        $info['success'] = 1;
        $info['icon'] = 6;
        $info['version'] = $newVer;
        $info['m'] = "更新成功！" . ($newVer !== '' ? "当前版本：" . $newVer : "") . "，建议到「清理缓存」清除缓存后使用。";
        exit(json_encode($info));


    //官替算法独立更新 检查版本（支持 mx1 / mx2 等模块）

    case 'algo_check':

        $mod = trim((string)($_POST['module'] ?? $_GET['module'] ?? ''));

        if (!in_array($mod, ['mx1', 'mx2'], true)) {{ $info['success'] = 0; $info['icon'] = 5; $info['m'] = "未知的算法模块：{$mod}"; exit(json_encode($info)); }}

        $modNames = ['mx1' => '官替算法 · 算法1', 'mx2' => '官替算法 · 算法2'];

        $label = $modNames[$mod];



        $localFile = dirname(__FILE__) . '/../' . $mod . '/version.php';

        $local = ['version' => 'v.0.0.0', 'time' => '', 'desc' => ''];

        if (file_exists($localFile)) {{ $lv = @include $localFile; if (is_array($lv)) {{ $local = $lv; }} }}



        $meta = @include dirname(__FILE__) . '/../version.php';

        $repo = (is_array($meta) && !empty($meta['repo']))   ? $meta['repo']   : 'ssmhdssmhd/MXXM';

        $branch = (is_array($meta) && !empty($meta['branch'])) ? $meta['branch'] : 'main';



        $json = curl('https://api.github.com/repos/' . $repo . '/commits/' . $branch . '?t=' . time());

        $latestSha = ''; $commit = '';

        if ($json) {{

            $arr = json_decode($json, true);

            if (is_array($arr) && !empty($arr['sha'])) {{

                $latestSha = $arr['sha'];

                $ts = !empty($arr['commit']['author']['date']) ? strtotime($arr['commit']['author']['date']) : 0;

                $date = $ts ? date('Y-m-d H:i:s', $ts) : '';

                $msg = !empty($arr['commit']['message']) ? strtok($arr['commit']['message'], "\n") : '';

                $commit = trim($date . ' ' . $msg) . ' (' . substr($arr['sha'], 0, 7) . ')';

            }}

        }}



        $remote = ['version' => '', 'time' => '', 'desc' => ''];

        $urls = [];

        if ($latestSha !== '') {{ $urls[] = 'https://raw.githubusercontent.com/' . $repo . '/' . $latestSha . '/' . $mod . '/version.php'; }}

        $urls[] = 'https://raw.githubusercontent.com/' . $repo . '/' . $branch . '/' . $mod . '/version.php?t=' . time();

        foreach ($urls as $u) {{

            $txt = curl($u);

            if ($txt) {{

                if (preg_match("/'version'\s*=>\s*'([^']+)'/i", $txt, $m)) {{ $remote['version'] = $m[1]; }}

                if (preg_match("/'time'\s*=>\s*'([^']+)'/i", $txt, $m))     {{ $remote['time']    = $m[1]; }}

                if (preg_match("/'desc'\s*=>\s*'([^']+)'/i", $txt, $m))     {{ $remote['desc']    = $m[1]; }}

                if ($remote['version'] !== '') break;

            }}

        }}



        $info['success'] = 1; $info['icon'] = 6;

        $info['m'] = "检测完成 · {$label}";

        $info['label'] = $label;

        $info['local']  = $local['version'];

        $info['local_desc']  = $local['desc'];

        $info['remote'] = $remote['version'] !== '' ? $remote['version'] : '获取失败';

        $info['remote_desc'] = $remote['desc'];

        $info['commit'] = $commit !== '' ? $commit : '—';

        $info['repo']   = $repo . ' @ ' . $branch;

        $info['has_update'] = ($remote['version'] !== '' && strcasecmp(trim($remote['version']), trim($local['version'])) !== 0) ? 1 : 0;

        exit(json_encode($info));



    case 'algo_run':

        $mod = trim((string)($_POST['module'] ?? $_GET['module'] ?? ''));

        if (!in_array($mod, ['mx1', 'mx2'], true)) {{ $info['success'] = 0; $info['icon'] = 5; $info['m'] = "未知的算法模块：{$mod}"; exit(json_encode($info)); }}

        $modNames = ['mx1' => '官替算法 · 算法1', 'mx2' => '官替算法 · 算法2'];

        $label = $modNames[$mod];



        $meta = @include dirname(__FILE__) . '/../version.php';

        $repo = (is_array($meta) && !empty($meta['repo']))   ? $meta['repo']   : 'ssmhdssmhd/MXXM';

        $branch = (is_array($meta) && !empty($meta['branch'])) ? $meta['branch'] : 'main';

        $root = dirname(dirname(__FILE__));

        $dstDir = $root . '/' . $mod;



        if (!class_exists('ZipArchive')) {{ $info['m'] = "服务器未开启 ZipArchive 扩展！"; exit(json_encode($info)); }}

        if (!is_dir($dstDir))             {{ $info['m'] = "本地不存在 {$dstDir} 目录！"; exit(json_encode($info)); }}

        if (!is_writable($dstDir))        {{ $info['m'] = "目录 {$dstDir} 不可写！"; exit(json_encode($info)); }}



        $data = curl('https://codeload.github.com/' . $repo . '/zip/refs/heads/' . $branch);

        if (!$data || strlen($data) < 100) {{ $info['m'] = "下载更新包失败，请检查服务器网络！"; exit(json_encode($info)); }}



        $tmpZip = tempnam(sys_get_temp_dir(), 'algo_' . $mod . '_');

        @file_put_contents($tmpZip, $data);

        $zip = new ZipArchive();

        if ($zip->open($tmpZip) !== true) {{ @unlink($tmpZip); $info['m'] = "更新包解压失败！"; exit(json_encode($info)); }}

        $tmpDir = sys_get_temp_dir() . '/mxxm_algo_' . $mod . '_' . uniqid();

        @mkdir($tmpDir, 0755, true);

        $zip->extractTo($tmpDir);

        $zip->close(); @unlink($tmpZip);



        $dirs = glob($tmpDir . '/*', GLOB_ONLYDIR);

        $srcRoot = !empty($dirs) ? $dirs[0] : $tmpDir;

        $srcModDir = $srcRoot . '/' . $mod;

        if (!is_dir($srcModDir)) {{ mxxm_rmdir($tmpDir); $info['m'] = "远端未找到 {$mod}/ 目录！"; exit(json_encode($info)); }}



        $backups = [];

        $userCfg = ['mx2' => ['config/sites.json', 'config/settings.json', 'config/mapping.json'], 'mx1' => []];

        foreach (($userCfg[$mod] ?? []) as $rel) {{

            $p = $dstDir . '/' . $rel;

            if (file_exists($p)) {{

                $bak = sys_get_temp_dir() . '/algo_' . $mod . '_bak_' . md5($rel) . '.json';

                @copy($p, $bak);

                $backups[$rel] = $bak;

            }}

        }}



        mxxm_clean_dir($dstDir);

        mxxm_copy_dir($srcModDir, $dstDir, array());



        foreach ($backups as $rel => $bak) {{

            $target = $dstDir . '/' . $rel;

            @mkdir(dirname($target), 0755, true);

            @copy($bak, $target);

            @unlink($bak);

        }}

        mxxm_rmdir($tmpDir);



        $newVer = '';

        $nvFile = $dstDir . '/version.php';

        if (file_exists($nvFile)) {{ $nv = @include $nvFile; if (is_array($nv) && !empty($nv['version'])) {{ $newVer = $nv['version']; }} }}



        $info['success'] = 1; $info['icon'] = 6;

        $info['module'] = $mod; $info['label'] = $label; $info['version'] = $newVer;

        $info['m'] = "{$label} 更新成功！" . ($newVer ? "当前版本：{$newVer}" : "") . (empty($backups) ? '' : "，用户配置已保留");

        exit(json_encode($info));



    //官替算法 算法1 (mx1) 参数设置
    case 'mx1_system':
        //算法目录（仅允许相对路径，禁止跳转上级或绝对路径）
        $sfdir = str_replace('\\', '/', trim((string)filter_input(INPUT_POST, 'MX1_DIR')));
        $sfdir = trim($sfdir, '/');
        if ($sfdir === '' || strpos($sfdir, '..') !== false || strpos($sfdir, ':') !== false) { $sfdir = 'mx1'; }

        $sf = array(
            'ver'     => '0.1',
            'off'     => (filter_input(INPUT_POST, 'MX1_OFF') === '1') ? '0' : '1',
            'dir'     => $sfdir,
            'cms'     => trim((string)filter_input(INPUT_POST, 'MX1_CMS')),
            'form'    => trim((string)filter_input(INPUT_POST, 'MX1_FORM')),
            'dytype'  => trim((string)filter_input(INPUT_POST, 'MX1_DYTYPE')),
            'zytype'  => trim((string)filter_input(INPUT_POST, 'MX1_ZYTYPE')),
            'api'     => trim((string)filter_input(INPUT_POST, 'MX1_API')),
            'qggapi'  => trim((string)filter_input(INPUT_POST, 'MX1_QGGAPI')),
            'table'   => trim((string)filter_input(INPUT_POST, 'MX1_TABLE')),
            'db_host' => trim((string)filter_input(INPUT_POST, 'MX1_DB_HOST')),
            'db_user' => trim((string)filter_input(INPUT_POST, 'MX1_DB_USER')),
            'db_pass' => trim((string)filter_input(INPUT_POST, 'MX1_DB_PASS')),
            'db_name' => trim((string)filter_input(INPUT_POST, 'MX1_DB_NAME')),
            'db_port' => trim((string)filter_input(INPUT_POST, 'MX1_DB_PORT', FILTER_SANITIZE_NUMBER_INT)) ?: '3306',
        );
        if ($sf['table'] === '') { $sf['table'] = 'mac_vod'; }

        $sfile = dirname(__FILE__) . '/../save/mx1.config.php';
        $scontent = "<?php\n/**\n * 官替算法 算法1 (mx1) 配置（由后台「官替算法 → 算法1」页面生成，请勿手动修改格式）\n * 算法版本：0.1\n */\nreturn " . var_export($sf, true) . ";\n";
        if (@file_put_contents($sfile, $scontent) === false) {
            exit(json_encode(array('success' => 0, 'icon' => 5, 'm' => '保存失败，请检查 save/ 目录写权限！')));
        }

        //算法目录同步：目录变更时把算法文件复制过去，免手动操作文件夹
        if ($sfdir !== 'mx1') {
            $srcDir = dirname(__FILE__) . '/../mx1';
            $dstDir = dirname(__FILE__) . '/../' . $sfdir;
            if (!is_dir($dstDir)) { @mkdir($dstDir, 0755, true); }
            if (is_dir($dstDir)) {
                foreach (array('index.php', 'ziyuan.php', 'mysql.php', 'md5.php') as $f) {
                    if (file_exists($srcDir . '/' . $f)) { @copy($srcDir . '/' . $f, $dstDir . '/' . $f); }
                }
            }
        }

        $info['m'] = "官替算法 算法1 设置已保存";
        break;

    //官替算法 算法2 (mx2) 参数设置（基于 MXGJ 核心算法，JSON 配置）
    case 'mx2_system':
        $mx2Root = dirname(__FILE__) . '/../mx2';
        $cfgDir  = $mx2Root . '/config';

        // 1. 基本设置
        $settings = array(
            'off'            => (filter_input(INPUT_POST, 'MX2_OFF') === '1') ? '0' : '1',
            'timeout'        => max(1, (int)filter_input(INPUT_POST, 'MX2_TIMEOUT')),
            'cache_ttl'      => max(0, (int)filter_input(INPUT_POST, 'MX2_CACHE_TTL')),
            'replace_domain' => trim((string)filter_input(INPUT_POST, 'MX2_REPLACE_DOMAIN')),
            'site_control'   => array(
                'search_interval'      => max(0, (int)filter_input(INPUT_POST, 'MX2_SEARCH_INTERVAL')),
                'heartbeat_enable'     => filter_input(INPUT_POST, 'MX2_HEARTBEAT') === '1',
                'heartbeat_interval'   => 300,
                'heartbeat_timeout'    => 5,
                'heartbeat_max_fail'   => 3,
                'cooldown_seconds'     => 600,
                'rotation_enable'      => false,
                'rotation_interval'    => 300,
                'max_sites_per_request'=> max(0, (int)filter_input(INPUT_POST, 'MX2_MAX_SITES')),
            ),
            'fallback' => array(
                'enable'           => filter_input(INPUT_POST, 'MX2_FALLBACK') === '1',
                'step2_retry_main' => true,
            ),
        );

        if (@file_put_contents($cfgDir . '/settings.json', json_encode($settings, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES)) === false) {
            exit(json_encode(array('success' => 0, 'icon' => 5, 'm' => '保存失败：无法写入 mx2/config/settings.json，请检查目录权限！')));
        }

        // 2. 资源站列表（JSON 数组）
        $sitesRaw = trim((string)filter_input(INPUT_POST, 'MX2_SITES'));
        $sites = json_decode($sitesRaw, true);
        if (!is_array($sites)) {
            exit(json_encode(array('success' => 0, 'icon' => 5, 'm' => '资源站列表 JSON 格式错误，请检查！')));
        }
        if (@file_put_contents($cfgDir . '/sites.json', json_encode(array_values($sites), JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES)) === false) {
            exit(json_encode(array('success' => 0, 'icon' => 5, 'm' => '保存失败：无法写入 mx2/config/sites.json！')));
        }

        // 3. cid 映射表（每行 cid=剧名）
        $cidRaw = trim((string)filter_input(INPUT_POST, 'MX2_CID_MAP'));
        $cidMap = array();
        foreach (preg_split('/\r\n|\r|\n/', $cidRaw) as $line) {
            $line = trim($line);
            if ($line === '' || strpos($line, '=') === false) { continue; }
            list($k, $v) = explode('=', $line, 2);
            $k = trim($k); $v = trim($v);
            if ($k !== '') { $cidMap[$k] = $v; }
        }
        // 保留原 mapping 结构，仅替换 cid 段
        $mapping = json_decode(@file_get_contents($cfgDir . '/mapping.json'), true);
        if (!is_array($mapping)) { $mapping = array('title' => array(), 'cid' => array(), 'episode' => array()); }
        $mapping['cid'] = $cidMap;
        if (@file_put_contents($cfgDir . '/mapping.json', json_encode($mapping, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES)) === false) {
            exit(json_encode(array('success' => 0, 'icon' => 5, 'm' => '保存失败：无法写入 mx2/config/mapping.json！')));
        }

        // 清理搜索缓存，让新配置立即生效
        $cacheDir = $mx2Root . '/data/cache';
        if (is_dir($cacheDir)) {
            foreach (glob($cacheDir . '/*.cache') ?: array() as $f) { @unlink($f); }
        }

        $info['m'] = "官替算法 算法2 设置已保存";
        break;


    //官替算法 算法1 数据库连接测试
    case 'mx1_db_test':
        header('Content-Type: application/json; charset=utf-8');
        // 全局关 mysqli 异常（PHP 8.1+ 默认抛 mysqli_sql_exception，必须在任何 mysqli 操作前设置）
        if (function_exists('mysqli_report')) { @mysqli_report(MYSQLI_REPORT_OFF); }

        $host = trim((string)($_POST['db_host'] ?? 'localhost'));
        $user = trim((string)($_POST['db_user'] ?? ''));
        $pass = (string)($_POST['db_pass'] ?? '');
        $name = trim((string)($_POST['db_name'] ?? ''));
        // 1) 先看 host 里有没有 :port 格式（兼容老用户填法）
        $port = 3306;
        if (preg_match('/^([^:]+):(\d+)$/', $host, $m)) {
            $host = $m[1];
            $port = (int)$m[2];
        }
        // 2) 再看有没有独立的 db_port 字段（优先）
        $portField = trim((string)($_POST['db_port'] ?? ''));
        if ($portField !== '' && is_numeric($portField)) {
            $port = max(1, min(65535, (int)$portField));
        }
        $start = microtime(true);
        if (!function_exists('mysqli_init') && !extension_loaded('mysqli')) {
            echo json_encode(['success' => 0, 'icon' => 5, 'm' => '服务器未开启 mysqli 扩展！请联系宝塔/php.ini 安装'], JSON_UNESCAPED_UNICODE);
            exit;
        }

        // 整个连接过程 try/catch 兜底，PHP 各版本行为差异很大
        $conn = null; $err = ''; $verStr = ''; $dbOk = true;
        try {
            // 先试 socket（db_host=localhost 走 socket 更快更稳）
            if ($host === 'localhost' && function_exists('mysqli_init')) {
                $conn = mysqli_init();
                if ($conn) {
                    @mysqli_options($conn, MYSQLI_OPT_CONNECT_TIMEOUT, 5);
                    $ok = @mysqli_real_connect($conn, $host, $user, $pass, '', null);
                    if (!$ok) {
                        $err = mysqli_connect_error() ?: 'socket 连接失败';
                        $conn = null;
                        // socket 不行再试 TCP 127.0.0.1
                        $host = '127.0.0.1';
                        $conn = mysqli_init();
                        @mysqli_options($conn, MYSQLI_OPT_CONNECT_TIMEOUT, 5);
                        $ok = @mysqli_real_connect($conn, $host, $user, $pass, '', $port);
                        if (!$ok) { $err = mysqli_connect_error() ?: 'TCP 连接也失败'; $conn = null; }
                    }
                }
            } else {
                // 指定 IP / 自定义端口 / 非 localhost：走标准 TCP
                if (function_exists('mysqli_init')) {
                    $conn = mysqli_init();
                    if ($conn) {
                        @mysqli_options($conn, MYSQLI_OPT_CONNECT_TIMEOUT, 5);
                        $ok = @mysqli_real_connect($conn, $host, $user, $pass, '', $port);
                        if (!$ok) { $err = mysqli_connect_error() ?: '连接失败'; $conn = null; }
                    } else {
                        $err = 'mysqli_init() 返回 null';
                    }
                } else {
                    $conn = @mysqli_connect($host, $user, $pass, '', $port);
                    if (!$conn) { $err = mysqli_connect_error() ?: '连接失败'; }
                }
            }

            if ($conn) {
                $verRes = @mysqli_query($conn, "SELECT VERSION()");
                $verStr = $verRes ? trim(mysqli_fetch_row($verRes)[0]) : '版本未知';
                if ($name !== '') {
                    $safe = mysqli_real_escape_string($conn, $name);
                    $dbChk = @mysqli_query($conn, "SHOW DATABASES LIKE '" . $safe . "'");
                    $dbOk = $dbChk && mysqli_num_rows($dbChk) > 0;
                }
                @mysqli_close($conn);
            }
        } catch (Throwable $e) {
            $err = get_class($e) . ': ' . $e->getMessage();
            $conn = null;
        } catch (Exception $e) {
            $err = 'Exception: ' . $e->getMessage();
            $conn = null;
        }

        $ms = (int)((microtime(true) - $start) * 1000);
        if (!$conn) {
            echo json_encode(['success' => 0, 'icon' => 5,
                'm' => '❌ 连接失败：' . $err . '（host=' . $host . ':' . $port . '，耗时 ' . $ms . ' ms）',
                'ms' => $ms,
            ], JSON_UNESCAPED_UNICODE);
            exit;
        }
        if (!$dbOk) {
            echo json_encode(['success' => 0, 'icon' => 5,
                'm' => '⚠️ 连上 MySQL 了（' . $verStr . '），但数据库「' . $name . '」不存在或无权限访问（耗时 ' . $ms . ' ms）',
                'ms' => $ms, 'version' => $verStr,
            ], JSON_UNESCAPED_UNICODE);
            exit;
        }
        echo json_encode(['success' => 1, 'icon' => 6,
            'm' => '✅ 数据库连接成功！MySQL ' . $verStr . '，host=' . $host . ':' . $port . '，耗时 ' . $ms . ' ms',
            'ms' => $ms, 'version' => $verStr,
        ], JSON_UNESCAPED_UNICODE);
        exit;

    //官替算法 统一解析调度 设置保存
    case 'resolve_settings':
        header('Content-Type: application/json; charset=utf-8');
        $cfg = [
            'mode'     => trim((string)($_POST['resolve_mode'] ?? 'auto')),
            'mx1_url'  => trim((string)($_POST['resolve_mx1_url']  ?? '')),
            'mx2_url'  => trim((string)($_POST['resolve_mx2_url']  ?? '')),
            'timeout'  => max(1, (int)($_POST['resolve_timeout'] ?? 10)),
            'enabled'  => (string)($_POST['resolve_enabled'] ?? '1') === '1' ? '1' : '0',
        ];
        if (!in_array($cfg['mode'], ['mx1', 'mx2', 'auto'], true)) { $cfg['mode'] = 'auto'; }
        $sfile = dirname(__FILE__) . '/../save/resolve.config.php';
        $scontent = "<?php\n/**\n * 官替算法 统一解析调度 配置\n * 后台 → 系统设置 → 解析设置 页面生成\n */\nreturn " . var_export($cfg, true) . ";\n";
        if (@file_put_contents($sfile, $scontent) === false) {
            echo json_encode(['success' => 0, 'icon' => 5, 'm' => '保存失败：无法写入 save/resolve.config.php，请检查 save 目录权限'], JSON_UNESCAPED_UNICODE);
            exit;
        }
        echo json_encode(['success' => 1, 'icon' => 6, 'm' => '✅ 解析调度设置已保存', 'cfg' => $cfg], JSON_UNESCAPED_UNICODE);
        exit;

    //资源站设置 实时更新站点列表（数据源：blog.ksdiy.cn/dh，实时拉取 resources.json）
    case 'ziyuan_update':
        $cfg = zy_load();
        $json = zy_fetch('https://blog.ksdiy.cn/dh/resources.json?t=' . time());
        $arr = json_decode($json, true);
        if (!is_array($arr) || empty($arr)) {
            $info['m'] = "获取资源站列表失败，请检查服务器网络或数据源是否可访问！";
            exit(json_encode($info));
        }
        $idx = array();
        foreach ($cfg['items'] as $k => $it) { $idx[$it['name']] = $k; }
        $add = 0;
        foreach ($arr as $site) {
            $name = isset($site['title']) ? trim($site['title']) : '';
            if ($name === '') { continue; }
            $link = isset($site['link']) ? trim($site['link']) : '';
            $home = '';
            if (!empty($site['iconImage'])) { $home = zy_domain_root($site['iconImage']); }
            if (isset($idx[$name])) {
                $k = $idx[$name];
                $cfg['items'][$k]['link'] = $link;
                if ($home !== '' && empty($cfg['items'][$k]['site'])) { $cfg['items'][$k]['site'] = $home; }
            } else {
                $cfg['items'][] = array('name' => $name, 'link' => $link, 'site' => $home, 'api' => '', 'code' => '', 'player' => '', 'off' => '0', 'p' => '0');
                $add++;
            }
        }
        $cfg['time'] = date('YmdHis');
        $cfg['source'] = 'https://blog.ksdiy.cn/dh/resources.json';
        if (!zy_save($cfg)) { $info['m'] = "保存失败，请检查 save/ 目录写权限！"; exit(json_encode($info)); }
        $info['success'] = 1; $info['icon'] = 6;
        $info['m'] = "资源站列表已实时更新，共 " . count($cfg['items']) . " 个站点（本次新增 $add 个）";
        exit(json_encode($info));

    //资源站设置 解析单个站点详情页（自动填入采集接口/播放器编码/播放器URL）
    case 'ziyuan_parse':
        $name = trim((string)filter_input(INPUT_POST, 'name'));
        $link = trim((string)filter_input(INPUT_POST, 'link'));
        if ($link === '') { $info['m'] = "缺少详情链接！"; exit(json_encode($info)); }
        $html = zy_fetch($link);
        if (!$html) { $info['m'] = "详情页抓取失败，请稍后重试！"; exit(json_encode($info)); }
        $p = zy_parse_detail($html);
        $cfg = zy_load();
        $hit = false;
        foreach ($cfg['items'] as $k => $it) {
            if ($it['name'] === $name) {
                if ($p['api'] !== '')    { $cfg['items'][$k]['api'] = $p['api']; }
                if ($p['code'] !== '')   { $cfg['items'][$k]['code'] = $p['code']; }
                if ($p['player'] !== '') { $cfg['items'][$k]['player'] = $p['player']; }
                $cfg['items'][$k]['p'] = '1';
                $hit = true; break;
            }
        }
        if (!$hit) { $info['m'] = "未找到对应资源站！"; exit(json_encode($info)); }
        if (!zy_save($cfg)) { $info['m'] = "保存失败，请检查 save/ 目录写权限！"; exit(json_encode($info)); }
        $info['success'] = 1; $info['icon'] = 6;
        $info['api'] = $p['api']; $info['code'] = $p['code']; $info['player'] = $p['player'];
        $info['m'] = ($p['api'] !== '') ? "解析成功" : "未在该详情页找到采集接口";
        exit(json_encode($info));

    //资源站设置 批量解析详情（分批执行，避免单次请求超时）
    case 'ziyuan_parse_all':
        @set_time_limit(120);
        $limit = (int)filter_input(INPUT_POST, 'limit');
        if ($limit <= 0 || $limit > 20) { $limit = 5; }
        $cfg = zy_load();
        $done = 0;
        foreach ($cfg['items'] as $k => $it) {
            if ($done >= $limit) { break; }
            if ($it['p'] === '1' || $it['link'] === '') { continue; }
            $html = zy_fetch($it['link']);
            $cfg['items'][$k]['p'] = '1';
            if ($html) {
                $p = zy_parse_detail($html);
                if ($p['api'] !== '')    { $cfg['items'][$k]['api'] = $p['api']; }
                if ($p['code'] !== '')   { $cfg['items'][$k]['code'] = $p['code']; }
                if ($p['player'] !== '') { $cfg['items'][$k]['player'] = $p['player']; }
            }
            $done++;
        }
        zy_save($cfg);
        $remain = 0;
        foreach ($cfg['items'] as $it) { if ($it['p'] !== '1' && $it['link'] !== '') { $remain++; } }
        $info['success'] = 1; $info['icon'] = 6;
        $info['remain'] = $remain;
        $info['m'] = "本次解析 $done 个，剩余 $remain 个待解析";
        exit(json_encode($info));

    //资源站设置 保存编辑后的列表
    case 'ziyuan_system':
        $names  = isset($_POST['zy_name'])   ? (array)$_POST['zy_name']   : array();
        $links  = isset($_POST['zy_link'])   ? (array)$_POST['zy_link']   : array();
        $sites  = isset($_POST['zy_site'])   ? (array)$_POST['zy_site']   : array();
        $apis   = isset($_POST['zy_api'])    ? (array)$_POST['zy_api']    : array();
        $codes  = isset($_POST['zy_code'])   ? (array)$_POST['zy_code']   : array();
        $pls    = isset($_POST['zy_player']) ? (array)$_POST['zy_player'] : array();
        $offs   = isset($_POST['zy_off'])    ? (array)$_POST['zy_off']    : array();
        $ps     = isset($_POST['zy_p'])      ? (array)$_POST['zy_p']      : array();
        $items  = array();
        foreach ($names as $i => $n) {
            $n = trim((string)$n);
            if ($n === '') { continue; }
            $items[] = array(
                'name'   => $n,
                'link'   => isset($links[$i])  ? trim((string)$links[$i])  : '',
                'site'   => isset($sites[$i])  ? trim((string)$sites[$i])  : '',
                'api'    => isset($apis[$i])   ? trim((string)$apis[$i])   : '',
                'code'   => isset($codes[$i])  ? trim((string)$codes[$i])  : '',
                'player' => isset($pls[$i])    ? trim((string)$pls[$i])    : '',
                'off'    => (isset($offs[$i]) && (string)$offs[$i] === '1') ? '1' : '0',
                'p'      => isset($ps[$i])     ? (string)$ps[$i]           : '0',
            );
        }
        $cfg = zy_load();
        $cfg['items'] = $items;
        $cfg['time']  = date('YmdHis');
        if (!zy_save($cfg)) { $info['m'] = "保存失败，请检查 save/ 目录写权限！"; exit(json_encode($info)); }
        $info['success'] = 1; $info['icon'] = 6; $info['m'] = "资源站设置已保存";
        exit(json_encode($info));

    //资源站设置 同步到云播设置的资源列表
    case 'ziyuan_sync':
        $over = (filter_input(INPUT_POST, 'overwrite') === '1');
        $cfg  = zy_load();
        $yunFile = dirname(__FILE__) . '/../save/yun.config.php';
        if (!file_exists($yunFile)) { $info['m'] = "未找到 save/yun.config.php"; exit(json_encode($info)); }
        require_once($yunFile);   // 载入全局 $YUN_CONFIG
        $list = $over ? array() : (isset($YUN_CONFIG['API']) && is_array($YUN_CONFIG['API']) ? array_values($YUN_CONFIG['API']) : array());
        $exist = array();
        foreach ($list as $line) {
            $val = explode('=>', $line, 2);
            if (isset($val[1])) { $exist[trim($val[1])] = 1; }
        }
        $added = 0;
        foreach ($cfg['items'] as $it) {
            if ($it['off'] !== '1' || $it['api'] === '') { continue; }
            if (isset($exist[$it['api']])) { continue; }
            $list[] = $it['name'] . '=>' . $it['api'];
            $exist[$it['api']] = 1;
            $added++;
        }
        $YUN_CONFIG['API'] = array_values($list);
        if (!Main_db::save($yunFile)) { $info['m'] = "同步失败，请检查 save/ 目录写权限！"; exit(json_encode($info)); }
        $info['success'] = 1; $info['icon'] = 6;
        $info['m'] = ($over ? "已覆盖" : "已追加") . "到云播资源列表，本次新增 $added 条，当前共 " . count($list) . " 条";
        exit(json_encode($info));

    default:
        exit(json_encode(array('success' => 0, 'icon' => 0, 'm' => "参数错误！")));
}


if (Main_db::save()) {

    $info['success'] = 1;
} else {

    $info['success'] = 0;
    $info['icon'] = 5;
    $info['m'] = "操作失败！";
}

exit(json_encode($info));

function GetPostArr($word,$BASE64=false,$delimiter="=>"){
        $val=trim(filter_input(INPUT_POST, $word)); 
        if($BASE64){$val= base64_decode($val);}
        if($val==""){return null;}   
        $arr=preg_split('/[\r\n]+/s', $val);
        foreach($arr as $key){
          $val=explode($delimiter,$key);
          $key=trim($val[0]);
          if($key!==""){$array[$key]= trim($val[1]);}
        }
        return $array;
}

function isid(){   
    if(!filter_has_var(INPUT_POST, "id")){ exit(json_encode(array('success' => 0, 'icon' => 0, 'm' => "id错误，没有找到id！"))); }   
}

function curl($url, $ref = '') {
    $params["ua"] = "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36";
    $params['ref'] = $ref;
    return GlobalBase::curl($url, $params);
}

//在线更新：递归复制目录（$skip 仅在顶层生效，用于跳过 save/ 等用户数据目录）
function mxxm_copy_dir($src, $dst, $skip = array()) {
    if (!is_dir($dst)) { @mkdir($dst, 0755, true); }
    $dh = @opendir($src);
    if (!$dh) { return false; }
    while (($file = readdir($dh)) !== false) {
        if ($file === '.' || $file === '..') { continue; }
        if (in_array($file, $skip, true)) { continue; }
        $s = $src . '/' . $file;
        $d = $dst . '/' . $file;
        if (is_dir($s)) {
            mxxm_copy_dir($s, $d, array());
        } else {
            @copy($s, $d);
        }
    }
    closedir($dh);
    return true;
}

//在线更新：递归删除临时目录
function mxxm_rmdir($dir) {
    if (!is_dir($dir)) { return false; }
    $dh = @opendir($dir);
    if (!$dh) { return false; }
    while (($file = readdir($dh)) !== false) {
        if ($file === '.' || $file === '..') { continue; }
        $path = $dir . '/' . $file;
        if (is_dir($path)) { mxxm_rmdir($path); } else { @unlink($path); }
    }
    closedir($dh);
    return @rmdir($dir);
}

//算法独立更新：清空模块目录保留结构
function mxxm_clean_dir($dir) {
    if (!is_dir($dir)) { return; }
    $dh = @opendir($dir);
    if (!$dh) { return; }
    while (($file = readdir($dh)) !== false) {
        if ($file === '.' || $file === '..') { continue; }
        $path = $dir . '/' . $file;
        if (is_dir($path)) { mxxm_rmdir($path); } else { @unlink($path); }
    }
    closedir($dh);
}

/* ==================== 资源站设置（数据源：blog.ksdiy.cn/dh） ==================== */

// 带超时的抓取（限定时长，避免批量解析拖垮请求）
function zy_fetch($url) {
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 6);
    curl_setopt($ch, CURLOPT_TIMEOUT, 12);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
    curl_setopt($ch, CURLOPT_ENCODING, '');
    curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
    $data = curl_exec($ch);
    curl_close($ch);
    return $data;
}

// 读取资源站配置（并补全字段，兼容旧数据）
function zy_load() {
    $cfg = array();
    $file = dirname(__FILE__) . '/../save/ziyuan.config.php';
    if (file_exists($file)) {
        include $file;
        if (isset($ZIYUAN_CONFIG) && is_array($ZIYUAN_CONFIG)) { $cfg = $ZIYUAN_CONFIG; }
    }
    if (!is_array($cfg)) { $cfg = array(); }
    $cfg += array('ver' => '0.1', 'time' => '', 'source' => 'https://blog.ksdiy.cn/dh/resources.json', 'items' => array());
    if (!is_array($cfg['items'])) { $cfg['items'] = array(); }
    foreach ($cfg['items'] as $k => $it) {
        if (!is_array($it)) { unset($cfg['items'][$k]); continue; }
        $cfg['items'][$k] += array('name' => '', 'link' => '', 'site' => '', 'api' => '', 'code' => '', 'player' => '', 'off' => '0', 'p' => '0');
    }
    return $cfg;
}

// 保存资源站配置
function zy_save($cfg) {
    $file = dirname(__FILE__) . '/../save/ziyuan.config.php';
    $content = "<?php\n/* 资源站设置（由后台「资源站设置」页面生成，请勿手动改动格式） */\n"
        . '$ZIYUAN_CONFIG = ' . var_export($cfg, true) . ";\n";
    return @file_put_contents($file, $content);
}

// 取 URL 的站点根（协议://域名）
function zy_domain_root($url) {
    $p = @parse_url($url);
    if (empty($p['scheme']) || empty($p['host'])) { return ''; }
    return $p['scheme'] . '://' . $p['host'];
}

// 解析详情页，提取 m3u8 采集接口 / 播放器编码 / 播放器URL
function zy_parse_detail($html) {
    $out = array('api' => '', 'code' => '', 'player' => '');
    if (empty($html)) { return $out; }
    if (preg_match_all('~https?://[^\s"\'<>()，,]+~i', $html, $m)) {
        $urls = array_values(array_unique($m[0]));
        $apis = array(); $players = array();
        foreach ($urls as $u) {
            if (stripos($u, 'api.php/provide/vod') !== false) { $apis[] = $u; }
            if (preg_match('~/play/\?url=~i', $u)) { $players[] = $u; }
        }
        // 优先取 m3u8 采集接口
        $pick = '';
        foreach ($apis as $u) { if (stripos($u, 'm3u8') !== false) { $pick = $u; break; } }
        if ($pick === '' && !empty($apis)) { $pick = $apis[0]; }
        if ($pick !== '') {
            $pick = rtrim($pick, '/');
            $out['api'] = $pick;
            if (preg_match('~/from/([a-zA-Z0-9_\-]+)~', $pick, $mm)) { $out['code'] = $mm[1]; }
            if ($out['code'] === '') { $out['code'] = 'm3u8'; }
        }
        if (!empty($players)) { $out['player'] = $players[0]; }
    }
    return $out;
}
