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
    //更新 云规则 
    case 'upyundata':
        $api = "https://server.baidu.cn/parse";
        $data = curl($api."/save/yun.match.js?time=".uniqid());
        if (preg_match("/\<\?php[\S\s]*\?\>/i", $data)) {
            if (file_put_contents("../save/yun.match.php", $data)) {
                $data = curl($api."/save/yun.ver.js?".uniqid());
                if($data){file_put_contents("../save/yun.ver.js", $data);}
                $info["success"] = 1;
                $info['m'] = "更新成功";
                exit(json_encode($info));
            }
        }
        $info['success'] = 0;
        $info['icon'] = 5;
        $info['m'] = "更新失败，请检查网络！";
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

        //远程版本（实时从仓库 raw 获取）
        $remote = array('version' => '', 'time' => '');
        $raw = 'https://raw.githubusercontent.com/' . $repo . '/' . $branch . '/version.php?t=' . time();
        $txt = curl($raw);
        if ($txt) {
            if (preg_match("/'version'\s*=>\s*'([^']+)'/i", $txt, $m)) { $remote['version'] = $m[1]; }
            if (preg_match("/'time'\s*=>\s*'([^']+)'/i", $txt, $m)) { $remote['time'] = $m[1]; }
        }

        //最新提交信息
        $commit = '';
        $json = curl('https://api.github.com/repos/' . $repo . '/commits/' . $branch . '?t=' . time());
        if ($json) {
            $arr = json_decode($json, true);
            if (is_array($arr) && !empty($arr['sha'])) {
                $ts = !empty($arr['commit']['author']['date']) ? strtotime($arr['commit']['author']['date']) : 0;
                $date = $ts ? date('Y-m-d H:i:s', $ts) : '';
                $msg = !empty($arr['commit']['message']) ? strtok($arr['commit']['message'], "\n") : '';
                $commit = trim($date . ' ' . $msg) . ' (' . substr($arr['sha'], 0, 7) . ')';
            }
        }

        $info['local'] = $meta['version'];
        $info['repo'] = $repo . ' @ ' . $branch;
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
