<?php
namespace app\api\controller;
use think\Controller;
use think\Cache;

class Provide extends Base
{
    var $_param;

    public function __construct()
    {
        parent::__construct();
        $this->_param = input('','','trim,urldecode');
    }

    public function index()
    {

    }

    public function vod()
    {
        $path_info = isset($_SERVER['PATH_INFO']) ? trim($_SERVER['PATH_INFO'], '/') : '';
        $detail_id = 0;
        if ($path_info !== '') {
            foreach (explode('/', $path_info) as $segment) {
                if (ctype_digit($segment)) { $detail_id = intval($segment); }
            }
        }
        if ($detail_id > 0) {
            $this->appVodDetail($detail_id);
            return;
        }
        $ac = isset($this->_param['ac']) ? $this->_param['ac'] : '';
        if ($ac === 'flitter') {
            header('Content-Type:application/json;charset=utf-8');
            $json = json_encode(['flitter'=>[]], JSON_UNESCAPED_UNICODE|JSON_UNESCAPED_SLASHES);
            header('Content-Length: '.strlen($json));
            header('Connection: close');
            echo $json;
            exit;
        }
        if ($ac === 'list' && (isset($this->_param['class']) || isset($this->_param['zm']))) {
            $this->appVodList();
            return;
        }
        if($GLOBALS['config']['api']['vod']['status'] != 1){
            echo 'closed';
            exit;
        }

        if($GLOBALS['config']['api']['vod']['charge'] == 1) {
            $h = $_SERVER['REMOTE_ADDR'];
            if (!$h) {
                echo lang('api/auth_err');
                exit;
            }
            else {
                $auth = $GLOBALS['config']['api']['vod']['auth'];
                $this->checkDomainAuth($auth);
            }
        }

        $cache_time = intval($GLOBALS['config']['api']['vod']['cachetime']);
        $cach_name = $GLOBALS['config']['app']['cache_flag']. '_'.'api_vod_'.md5(http_build_query($this->_param));
        $html = Cache::get($cach_name);
        if(empty($html) || $cache_time==0) {
            $where = [];
            if (!empty($this->_param['ids'])) {
                $where['vod_id'] = ['in', $this->_param['ids']];
            }
            if (!empty($GLOBALS['config']['api']['vod']['typefilter'])) {
                $where['type_id'] = ['in', $GLOBALS['config']['api']['vod']['typefilter']];
            }

            if (!empty($this->_param['t'])) {
                if (empty($GLOBALS['config']['api']['vod']['typefilter']) || strpos($GLOBALS['config']['api']['vod']['typefilter'], $this->_param['t']) !== false) {
                    $where['type_id'] = $this->_param['t'];
                }
            }
            // 支持isend参数，是否完结
            if (isset($this->_param['isend'])) {
                $where['vod_isend'] = $this->_param['isend'] == 1 ? 1 : 0;
            }
            if (!empty($this->_param['h'])) {
                $todaydate = date('Y-m-d', strtotime('+1 days'));
                $tommdate = date('Y-m-d H:i:s', strtotime('-' . $this->_param['h'] . ' hours'));

                $todayunix = strtotime($todaydate);
                $tommunix = strtotime($tommdate);

                $where['vod_time'] = [['gt', $tommunix], ['lt', $todayunix]];
            }
            if (!empty($this->_param['wd'])) {
                $where['vod_name'] = ['like', '%' . $this->_param['wd'] . '%'];
            }
            // 增加年份筛选 https://github.com/magicblack/maccms10/issues/815
            if (!empty($this->_param['year'])) {
                $param_year = trim($this->_param['year']);
                if (strlen($param_year) == 4) {
                    $year = intval($param_year);
                } elseif (strlen($param_year) == 9) {
                    $start = (int)substr($param_year, 0, 4);
                    $end = (int)substr($param_year, 5, 4);
                    if ($start > $end) {
                        $tmp_num = $end;
                        $end = $start;
                        $start = $tmp_num;
                    }
                    $tmp_arr = [];
                    $start = max($start, 1900);
                    $end = min($end, date('Y') + 3);
                    for ($i = $start; $i <= $end; $i++) {
                        $tmp_arr[] = $i;
                    }
                    $year = join(',', $tmp_arr);
                }
                $where['vod_year'] = ['in', explode(',', $year)];
            }
            if (empty($GLOBALS['config']['api']['vod']['from']) && !empty($this->_param['from']) && strlen($this->_param['from']) >= 2) {
                $GLOBALS['config']['api']['vod']['from'] = $this->_param['from'];
            }
            // 采集播放组支持多个播放器
            // https://github.com/magicblack/maccms10/issues/888
            if (!empty($GLOBALS['config']['api']['vod']['from'])) {
                $vod_play_from_list = explode(',', trim($GLOBALS['config']['api']['vod']['from']));
                $vod_play_from_list = array_unique($vod_play_from_list);
                $vod_play_from_list = array_filter($vod_play_from_list);
                if (!empty($vod_play_from_list)) {
                    $where['vod_play_from'] = ['or'];
                    foreach ($vod_play_from_list as $vod_play_from) {
                        array_unshift($where['vod_play_from'], ['like', '%' . trim($vod_play_from) . '%']);
                    }
                }
            }
            if (!empty($GLOBALS['config']['api']['vod']['datafilter'])) {
                $where['_string'] .= ' ' . $GLOBALS['config']['api']['vod']['datafilter'];
            }
            if (empty($this->_param['pg'])) {
                $this->_param['pg'] = 1;
            }
            $pagesize = $GLOBALS['config']['api']['vod']['pagesize'];
            if (!empty($this->_param['pagesize']) && $this->_param['pagesize'] > 0) {
                $pagesize = min((int)$this->_param['pagesize'], 100);
            }

            $sort_direction = !empty($this->_param['sort_direction']) && $this->_param['sort_direction'] == 'asc' ? 'asc' : 'desc';
            $order = 'vod_time ' . $sort_direction;
            $field = 'vod_id,vod_name,type_id,"" as type_name,vod_en,vod_time,vod_remarks,vod_play_from,vod_time';

            if ($this->_param['ac'] == 'videolist' || $this->_param['ac'] == 'detail') {
                $field = '*';
            }
            $res = model('vod')->listData($where, $order, $this->_param['pg'], $pagesize, 0, $field, 0);


            if ($this->_param['at'] == 'xml') {
                $html = $this->vod_xml($res);
            } else {
                $html = json_encode($this->vod_json($res),JSON_UNESCAPED_UNICODE);
            }
            $html = mac_filter_tags($html);
            if($cache_time>0) {
                Cache::set($cach_name, $html, $cache_time);
            }
        }
        // https://github.com/magicblack/maccms10/issues/818 影片的播放量+1
        if (
            isset($this->_param['ac']) && $this->_param['ac'] == 'detail' && 
            !empty($this->_param['ids']) && (int)$this->_param['ids'] == $this->_param['ids'] && 
            !empty($GLOBALS['config']['api']['vod']['detail_inc_hits'])
        ) {
            model('Vod')->fieldData(['vod_id' => (int)$this->_param['ids']], ['vod_hits' => ['inc', 1]]);
        }
        echo $html;
        exit;
    }

    public function vod_url_deal($urls,$froms,$from,$flag)
    {
        $res_xml = '';
        $res_json = [];
        $arr1 = explode("$$$",$urls); $arr1count = count($arr1);
        $arr2 = explode("$$$",$froms); $arr2count = count($arr2);
        for ($i=0;$i<$arr2count;$i++){
            if ($arr1count >= $i){
                if($from!=''){
                    if($arr2[$i]==$from || str_contains($from, $arr2[$i])){
                        $res_xml .=  '<dd flag="'. $arr2[$i] .'"><![CDATA[' . $arr1[$i]. ']]></dd>';
                        $res_json[$arr2[$i]] = $arr1[$i];
                    }
                }
                else{
                    $res_xml .=  '<dd flag="'. $arr2[$i] .'"><![CDATA[' . $arr1[$i]. ']]></dd>';
                    $res_json[$arr2[$i]] = $arr1[$i];
                }
            }
        }
        $res = str_replace(array(chr(10),chr(13)),array('','#'),$res_xml);
        return $flag=='xml' ? $res_xml : $res_json;
    }

    public function vod_json($res)
    {
        $type_list = model('Type')->getCache('type_list');
        foreach($res['list'] as $k=>&$v){
            $type_info = $type_list[$v['type_id']];
            $v['type_name'] = $type_info['type_name'];
            $v['vod_time'] = date('Y-m-d H:i:s',$v['vod_time']);

            if(substr($v["vod_pic"],0,4)=="mac:"){
                $v["vod_pic"] = str_replace('mac:',$this->getImgUrlProtocol('vod'), $v["vod_pic"]);
            }
            elseif(!empty($v["vod_pic"]) && substr($v["vod_pic"],0,4)!="http" && substr($v["vod_pic"],0,2)!="//"){
                $v["vod_pic"] = $GLOBALS['config']['api']['vod']['imgurl'] . $v["vod_pic"];
            }

            if ($this->_param['ac']=='videolist' || $this->_param['ac']=='detail') {
                // 如果指定返回播放组，则只返回对应播放组的播放数据
                // https://github.com/magicblack/maccms10/issues/957
                if (!empty($GLOBALS['config']['api']['vod']['from'])) {
                    // 准备数据，逐个处理
                    $arr_from = explode('$$$', $v['vod_play_from']);
                    $arr_url = explode('$$$', $v['vod_play_url']);
                    $arr_server = explode('$$$', $v['vod_play_server']);
                    $arr_note = explode('$$$', $v['vod_play_note']);
                    $vod_play_from_list = explode(',', trim($GLOBALS['config']['api']['vod']['from']));
                    $vod_play_from_list = array_unique($vod_play_from_list);
                    $vod_play_from_list = array_filter($vod_play_from_list);
                    $vod_play_url_list = [];
                    $vod_play_server_list = [];
                    $vod_play_note_list = [];
                    foreach ($vod_play_from_list as $vod_play_from_index => $vod_play_from) {
                        $key = array_search($vod_play_from, $arr_from);
                        if ($key === false) {
                            unset($vod_play_from_list[$vod_play_from_index]);
                            continue;
                        }
                        $vod_play_url_list[] = $arr_url[$key];
                        $vod_play_server_list[] = $arr_server[$key];
                        $vod_play_note_list[] = $arr_note[$key];
                    }
                    $res['list'][$k]['vod_play_from'] = join(',', $vod_play_from_list);
                    $res['list'][$k]['vod_play_url'] = join('$$$', $vod_play_url_list);
                    $res['list'][$k]['vod_play_server'] = join('$$$', $vod_play_server_list);
                    $res['list'][$k]['vod_play_note'] = join('$$$', $vod_play_note_list);
                }
            } else {
                if (!empty($GLOBALS['config']['api']['vod']['from'])) {
                    // 准备数据，逐个处理
                    $arr_from = explode('$$$', $v['vod_play_from']);
                    $vod_play_from_list = explode(',', trim($GLOBALS['config']['api']['vod']['from']));
                    $vod_play_from_list = array_unique($vod_play_from_list);
                    $vod_play_from_list = array_filter($vod_play_from_list);
                    foreach ($vod_play_from_list as $vod_play_from_index => $vod_play_from) {
                        $key = array_search($vod_play_from, $arr_from);
                        if ($key === false) {
                            unset($vod_play_from_list[$vod_play_from_index]);
                            continue;
                        }
                    }
                    $res['list'][$k]['vod_play_from'] = join(',', $vod_play_from_list);
                } else {
                    $res['list'][$k]['vod_play_from'] = str_replace('$$$', ',', $v['vod_play_from']);
                }
            }
        }


        if($this->_param['ac']!='videolist' && $this->_param['ac']!='detail') {
            $class = [];
            $typefilter  = explode(',',$GLOBALS['config']['api']['vod']['typefilter']);

            foreach ($type_list as $k=>&$v) {

                if (!empty($GLOBALS['config']['api']['vod']['typefilter'])){
                    if(in_array($v['type_id'],$typefilter)) {
                        $class[] = ['type_id' => $v['type_id'], 'type_pid' => $v['type_pid'], 'type_name' => $v['type_name']];
                    }
                }
                else {
                    $class[] = ['type_id' => $v['type_id'], 'type_pid' => $v['type_pid'], 'type_name' => $v['type_name']];
                }
            }
            $res['class'] = $class;
        }
        return $res;
    }

    public function vod_xml($res)
    {
        $xml = '<?xml version="1.0" encoding="utf-8"?>';
        $xml .= '<rss version="5.1">';
        $type_list = model('Type')->getCache('type_list');

        //视频列表开始
        $xml .= '<list page="'.$res['page'].'" pagecount="'.$res['pagecount'].'" pagesize="'.$res['limit'].'" recordcount="'.$res['total'].'">';
        foreach($res['list'] as $k=>&$v){
            $type_info = $type_list[$v['type_id']];
            $xml .= '<video>';
            $xml .= '<last>'.date('Y-m-d H:i:s',$v['vod_time']).'</last>';
            $xml .= '<id>'.$v['vod_id'].'</id>';
            $xml .= '<tid>'.$v['type_id'].'</tid>';
            $xml .= '<name><![CDATA['.$v['vod_name'].']]></name>';
            $xml .= '<type>'.$type_info['type_name'].'</type>';
            if(substr($v["vod_pic"],0,4)=="mac:"){
                $v["vod_pic"] = str_replace('mac:',$this->getImgUrlProtocol('vod'), $v["vod_pic"]);
            }
            elseif(!empty($v["vod_pic"]) && substr($v["vod_pic"],0,4)!="http"  && substr($v["vod_pic"],0,2)!="//"){
                $v["vod_pic"] = $GLOBALS['config']['api']['vod']['imgurl'] . $v["vod_pic"];
            }

            if($this->_param['ac']=='videolist' || $this->_param['ac']=='detail'){
                $tempurl = $this->vod_url_deal($v["vod_play_url"],$v["vod_play_from"],$GLOBALS['config']['api']['vod']['from'],'xml');

                $xml .= '<pic>'.$v["vod_pic"].'</pic>';
                $xml .= '<lang>'.$v['vod_lang'].'</lang>';
                $xml .= '<area>'.$v['vod_area'].'</area>';
                $xml .= '<year>'.$v['vod_year'].'</year>';
                $xml .= '<state>'.$v['vod_serial'].'</state>';
                $xml .= '<note><![CDATA['.$v['vod_remarks'].']]></note>';
                $xml .= '<actor><![CDATA['.$v['vod_actor'].']]></actor>';
                $xml .= '<director><![CDATA['.$v['vod_director'].']]></director>';
                $xml .= '<dl>'.$tempurl.'</dl>';
                $xml .= '<des><![CDATA['.$v['vod_content'].']]></des>';
            }
            else {
                if ($GLOBALS['config']['api']['vod']['from'] != ''){
                    $xml .= '<dt>' . $GLOBALS['config']['api']['vod']['from'] . '</dt>';
                }
                else{
                    $xml .= '<dt>' . str_replace('$$$', ',', $v['vod_play_from']) . '</dt>';
                }
                $xml .= '<note><![CDATA[' . $v['vod_remarks'] . ']]></note>';
            }
            $xml .= '</video>';
        }
        $xml .= '</list>';

        //视频列表结束

        if($this->_param['ac'] != 'videolist' && $this->_param['ac']!='detail') {
            //分类列表开始
            $xml .= "<class>";
            $typefilter  = explode(',',$GLOBALS['config']['api']['vod']['typefilter']);
            foreach ($type_list as $k=>&$v) {
                if($v['type_mid']==1) {
                    if (!empty($GLOBALS['config']['api']['vod']['typefilter'])){
                        if(in_array($v['type_id'],$typefilter)) {
                            $xml .= "<ty id=\"" . $v["type_id"] . "\">" . $v["type_name"] . "</ty>";
                        }
                    }
                    else {
                        $xml .= "<ty id=\"" . $v["type_id"] . "\">" . $v["type_name"] . "</ty>";
                    }
                }
            }
            unset($rs);
            $xml .= "</class>";
            //分类列表结束

        }
        $xml .= "</rss>";
        return $xml;
    }

    public function art()
    {
        if($GLOBALS['config']['api']['art']['status'] != 1){
            echo 'closed';die;
        }

        if($GLOBALS['config']['api']['art']['charge'] == 1) {
            $h = $_SERVER['REMOTE_ADDR'];
            if (!$h) {
                echo lang('api/auth_err');
                exit;
            }
            else {
                $auth = $GLOBALS['config']['api']['art']['auth'];
                $this->checkDomainAuth($auth);
            }
        }

        $cache_time = intval($GLOBALS['config']['api']['art']['cachetime']);
        $cach_name = $GLOBALS['config']['app']['cache_flag']. '_'.'api_art_'.md5(http_build_query($this->_param));
        $html = Cache::get($cach_name);
        if(empty($html) || $cache_time==0) {
            $where = [];
            if (!empty($this->_param['ids'])) {
                $where['art_id'] = ['in', $this->_param['ids']];
            }
            if (!empty($this->_param['t'])) {
                if (empty($GLOBALS['config']['api']['art']['typefilter']) || strpos($GLOBALS['config']['api']['art']['typefilter'], $this->_param['t']) !== false) {
                    $where['type_id'] = $this->_param['t'];
                }
            }

            if (!empty(intval($this->_param['h']))) {
                $todaydate = date('Y-m-d', strtotime('+1 days'));
                $tommdate = date('Y-m-d', strtotime('-' . $this->_param['h'] . ' hours'));

                $todayunix = strtotime($todaydate);
                $tommunix = strtotime($tommdate);

                $where['art_time'] = [['gt', $tommunix], ['lt', $todayunix]];
            }
            if (!empty($this->_param['wd'])) {
                $where['art_name'] = ['like', '%' . $this->_param['wd'] . '%'];
            }
            if (!empty($GLOBALS['config']['api']['art']['datafilter'])) {
                $where['_string'] = $GLOBALS['config']['api']['art']['datafilter'];
            }
            if (empty(intval($this->_param['pg']))) {
                $this->_param['pg'] = 1;
            }

            $order = 'art_time desc';
            $field = 'art_id,art_name,type_id,"" as type_name,art_en,art_time,art_author,art_from,art_remarks,art_pic,art_time';

            if ($this->_param['ac'] == 'detail') {
                $field = '*';
            }

            $res = model('art')->listData($where, $order, $this->_param['pg'], $GLOBALS['config']['api']['art']['pagesize'], 0, $field, 0);

            if ($res['code'] > 1) {
                echo $res['msg'];
                exit;
            }

            $type_list = model('Type')->getCache('type_list');
            foreach ($res['list'] as $k => &$v) {
                $type_info = $type_list[$v['type_id']];
                $v['type_name'] = $type_info['type_name'];
                $v['art_time'] = date('Y-m-d H:i:s', $v['art_time']);

                if (substr($v["art_pic"], 0, 4) == "mac:") {
                    $v["art_pic"] = str_replace('mac:', $this->getImgUrlProtocol('art'), $v["art_pic"]);
                } elseif (!empty($v["art_pic"]) && substr($v["art_pic"], 0, 4) != "http" && substr($v["art_pic"], 0, 2) != "//") {
                    $v["art_pic"] = $GLOBALS['config']['api']['art']['imgurl'] . $v["art_pic"];
                }

                if ($this->_param['ac'] == 'detail') {

                } else {

                }
            }

            if ($this->_param['ac'] != 'detail') {
                $class = [];
                $typefilter = explode(',', $GLOBALS['config']['api']['art']['typefilter']);

                foreach ($type_list as $k => &$v) {
                    if ($v['type_mid'] == 2) {

                        if (!empty($GLOBALS['config']['api']['art']['typefilter'])) {
                            if (in_array($v['type_id'], $typefilter)) {
                                $class[] = ['type_id' => $v['type_id'], 'type_pid' => $v['type_pid'], 'type_name' => $v['type_name']];
                            }
                        } else {
                            $class[] = ['type_id' => $v['type_id'], 'type_pid' => $v['type_pid'], 'type_name' => $v['type_name']];
                        }
                    }
                }
                $res['class'] = $class;
            }
            $html = json_encode($res,JSON_UNESCAPED_UNICODE);
            $html = mac_filter_tags($html);
            if($cache_time>0) {
                Cache::set($cach_name, $html, $cache_time);
            }
        }
        echo $html;
        exit;
    }

    public function actor()
    {
        if($GLOBALS['config']['api']['actor']['status'] != 1){
            echo 'closed';die;
        }

        if($GLOBALS['config']['api']['actor']['charge'] == 1) {
            $h = $_SERVER['REMOTE_ADDR'];
            if (!$h) {
                echo lang('api/auth_err');
                exit;
            }
            else {
                $auth = $GLOBALS['config']['api']['actor']['auth'];
                $this->checkDomainAuth($auth);
            }
        }

        $cache_time = intval($GLOBALS['config']['api']['actor']['cachetime']);
        $cach_name = $GLOBALS['config']['app']['cache_flag']. '_'.'api_actor_'.md5(http_build_query($this->_param));
        $html = Cache::get($cach_name);
        if(empty($html) || $cache_time==0) {
            $where = [];
            if (!empty($this->_param['ids'])) {
                $where['actor_id'] = ['in', $this->_param['ids']];
            }
            if (!empty($this->_param['t'])) {
                if (empty($GLOBALS['config']['api']['actor']['typefilter']) || strpos($GLOBALS['config']['api']['actor']['typefilter'], $this->_param['t']) !== false) {
                    $where['type_id'] = $this->_param['t'];
                }
            }
            if (!empty(intval($this->_param['h']))) {
                $todaydate = date('Y-m-d', strtotime('+1 days'));
                $tommdate = date('Y-m-d', strtotime('-' . $this->_param['h'] . ' hours'));

                $todayunix = strtotime($todaydate);
                $tommunix = strtotime($tommdate);

                $where['actor_time'] = [['gt', $tommunix], ['lt', $todayunix]];
            }
            if (!empty($this->_param['wd'])) {
                $where['actor_name'] = ['like', '%' . $this->_param['wd'] . '%'];
            }
            if (!empty($GLOBALS['config']['api']['actor']['datafilter'])) {
                $where['_string'] = $GLOBALS['config']['api']['actor']['datafilter'];
            }
            if (empty(intval($this->_param['pg']))) {
                $this->_param['pg'] = 1;
            }

            $order = 'actor_time desc';
            $field = 'actor_id,actor_name,type_id,"" as type_name,actor_en,actor_area,actor_time,actor_alias,actor_sex,actor_pic';

            if ($this->_param['ac'] == 'detail') {
                $field = '*';
            }

            $res = model('actor')->listData($where, $order, $this->_param['pg'], $GLOBALS['config']['api']['actor']['pagesize'], 0, $field, 0);

            if ($res['code'] > 1) {
                echo $res['msg'];
                exit;
            }

            $type_list = model('Type')->getCache('type_list');
            foreach ($res['list'] as $k => &$v) {
                $type_info = $type_list[$v['type_id']];
                $v['type_name'] = $type_info['type_name'];
                $v['actor_time'] = date('Y-m-d H:i:s', $v['actor_time']);

                if (substr($v["actor_pic"], 0, 4) == "mac:") {
                    $v["actor_pic"] = str_replace('mac:', $this->getImgUrlProtocol('actor'), $v["actor_pic"]);
                } elseif (!empty($v["actor_pic"]) && substr($v["actor_pic"], 0, 4) != "http" && substr($v["actor_pic"], 0, 2) != "//") {
                    $v["actor_pic"] = $GLOBALS['config']['api']['actor']['imgurl'] . $v["actor_pic"];
                }

                if ($this->_param['ac'] == 'detail') {

                } else {

                }
            }

            if ($this->_param['ac'] != 'detail') {
                $class = [];
                $typefilter = explode(',', $GLOBALS['config']['api']['actor']['typefilter']);

                foreach ($type_list as $k => &$v) {
                    if ($v['type_mid'] == 8) {

                        if (!empty($GLOBALS['config']['api']['actor']['typefilter'])) {
                            if (in_array($v['type_id'], $typefilter)) {
                                $class[] = ['type_id' => $v['type_id'], 'type_pid' => $v['type_pid'], 'type_name' => $v['type_name']];
                            }
                        } else {
                            $class[] = ['type_id' => $v['type_id'], 'type_pid' => $v['type_pid'], 'type_name' => $v['type_name']];
                        }
                    }
                }
                $res['class'] = $class;
            }

            $html = json_encode($res,JSON_UNESCAPED_UNICODE);
            $html = mac_filter_tags($html);
            if($cache_time>0) {
                Cache::set($cach_name, $html, $cache_time);
            }
        }
        echo $html;
        exit;
    }

    public function role()
    {
        if($GLOBALS['config']['api']['role']['status'] != 1){
            echo 'closed';die;
        }

        if($GLOBALS['config']['api']['role']['charge'] == 1) {
            $h = $_SERVER['REMOTE_ADDR'];
            if (!$h) {
                echo lang('api/auth_err');
                exit;
            }
            else {
                $auth = $GLOBALS['config']['api']['role']['auth'];
                $this->checkDomainAuth($auth);
            }
        }

        $cache_time = intval($GLOBALS['config']['api']['role']['cachetime']);
        $cach_name = $GLOBALS['config']['app']['cache_flag']. '_'.'api_role_'.md5(http_build_query($this->_param));
        $html = Cache::get($cach_name);
        if(empty($html) || $cache_time==0) {
            $where = [];
            if (!empty($this->_param['ids'])) {
                $where['role_id'] = ['in', $this->_param['ids']];
            }
            if (!empty($this->_param['t'])) {
                if (empty($GLOBALS['config']['api']['role']['typefilter']) || strpos($GLOBALS['config']['api']['role']['typefilter'], $this->_param['t']) !== false) {
                    $where['type_id'] = $this->_param['t'];
                }
            }
            if (!empty(intval($this->_param['h']))) {
                $todaydate = date('Y-m-d', strtotime('+1 days'));
                $tommdate = date('Y-m-d', strtotime('-' . $this->_param['h'] . ' hours'));

                $todayunix = strtotime($todaydate);
                $tommunix = strtotime($tommdate);

                $where['role_time'] = [['gt', $tommunix], ['lt', $todayunix]];
            }
            if (!empty($this->_param['wd'])) {
                $where['role_name'] = ['like', '%' . $this->_param['wd'] . '%'];
            }
            if (!empty($GLOBALS['config']['api']['role']['datafilter'])) {
                $where['_string'] = $GLOBALS['config']['api']['role']['datafilter'];
            }
            if (empty(intval($this->_param['pg']))) {
                $this->_param['pg'] = 1;
            }

            $order = 'role_time desc';
            $field = 'role_id,role_name,role_rid,role_en,role_actor,role_time,role_pic';

            if ($this->_param['ac'] == 'detail') {
                $field = '*';
            }

            $res = model('role')->listData($where, $order, $this->_param['pg'], $GLOBALS['config']['api']['role']['pagesize'], 0, $field, 1);

            if ($res['code'] > 1) {
                echo $res['msg'];
                exit;
            }

            foreach ($res['list'] as $k => &$v) {
                $v['role_time'] = date('Y-m-d H:i:s', $v['role_time']);
                $v['douban_id'] = $v['data']['vod_douban_id'];
                $v['vod_name'] = $v['data']['vod_name'];
                $v['vod_director'] = $v['data']['vod_director'];
                unset($v['data']);
                if (substr($v["role_pic"], 0, 4) == "mac:") {
                    $v["role_pic"] = str_replace('mac:', $this->getImgUrlProtocol('role'), $v["role_pic"]);
                } elseif (!empty($v["role_pic"]) && substr($v["role_pic"], 0, 4) != "http" && substr($v["role_pic"], 0, 2) != "//") {
                    $v["role_pic"] = $GLOBALS['config']['api']['role']['imgurl'] . $v["role_pic"];
                }

                if ($this->_param['ac'] == 'detail') {

                } else {

                }
            }

            if ($this->_param['ac'] != 'detail') {
                $class = [];
                $typefilter = explode(',', $GLOBALS['config']['api']['role']['typefilter']);

                $res['class'] = $class;
            }

            $html = json_encode($res,JSON_UNESCAPED_UNICODE);
            $html = mac_filter_tags($html);
            if($cache_time>0) {
                Cache::set($cach_name, $html, $cache_time);
            }
        }
        echo $html;
        exit;
    }

    public function manga()
    {
        if($GLOBALS['config']['api']['manga']['status'] != 1){
            echo 'closed';
            exit;
        }

        if($GLOBALS['config']['api']['manga']['charge'] == 1) {
            $h = $_SERVER['REMOTE_ADDR'];
            if (!$h) {
                echo lang('api/auth_err');
                exit;
            }
            else {
                $auth = $GLOBALS['config']['api']['manga']['auth'];
                $this->checkDomainAuth($auth);
            }
        }

        $cache_time = intval($GLOBALS['config']['api']['manga']['cachetime']);
        $cach_name = $GLOBALS['config']['app']['cache_flag']. '_'.'api_manga_'.md5(http_build_query($this->_param));
        $html = Cache::get($cach_name);
        if(empty($html) || $cache_time==0) {
            $where = [];
            if (!empty($this->_param['ids'])) {
                $where['manga_id'] = ['in', $this->_param['ids']];
            }
            if (!empty($GLOBALS['config']['api']['manga']['typefilter'])) {
                $where['type_id'] = ['in', $GLOBALS['config']['api']['manga']['typefilter']];
            }

            if (!empty($this->_param['t'])) {
                if (empty($GLOBALS['config']['api']['manga']['typefilter']) || strpos($GLOBALS['config']['api']['manga']['typefilter'], $this->_param['t']) !== false) {
                    $where['type_id'] = $this->_param['t'];
                }
            }
            if (!empty($this->_param['h'])) {
                $todaydate = date('Y-m-d', strtotime('+1 days'));
                $tommdate = date('Y-m-d H:i:s', strtotime('-' . $this->_param['h'] . ' hours'));

                $todayunix = strtotime($todaydate);
                $tommunix = strtotime($tommdate);

                $where['manga_time'] = [['gt', $tommunix], ['lt', $todayunix]];
            }
            if (!empty($this->_param['wd'])) {
                $where['manga_name'] = ['like', '%' . $this->_param['wd'] . '%'];
            }
            if (!empty($GLOBALS['config']['api']['manga']['datafilter'])) {
                $where['_string'] .= ' ' . $GLOBALS['config']['api']['manga']['datafilter'];
            }
            if (empty($this->_param['pg'])) {
                $this->_param['pg'] = 1;
            }
            $pagesize = $GLOBALS['config']['api']['manga']['pagesize'];
            if (!empty($this->_param['pagesize']) && $this->_param['pagesize'] > 0) {
                $pagesize = min((int)$this->_param['pagesize'], 100);
            }

            $order = 'manga_time desc';
            $field = 'manga_id,manga_name,type_id,"" as type_name,manga_en,manga_time,manga_remarks,manga_chapter_from,manga_time';

            if ($this->_param['ac'] == 'detail') {
                $field = '*';
            }
            $res = model('manga')->listData($where, $order, $this->_param['pg'], $pagesize, 0, $field, 0);


            if ($this->_param['at'] == 'xml') {
                $html = $this->manga_xml($res);
            } else {
                $html = json_encode($this->manga_json($res),JSON_UNESCAPED_UNICODE);
            }
            $html = mac_filter_tags($html);
            if($cache_time>0) {
                Cache::set($cach_name, $html, $cache_time);
            }
        }
        echo $html;
        exit;
    }

    public function manga_json($res)
    {
        $type_list = model('Type')->getCache('type_list');
        foreach($res['list'] as $k=>&$v){
            $type_info = $type_list[$v['type_id']];
            $v['type_name'] = $type_info['type_name'];
            $v['manga_time'] = date('Y-m-d H:i:s',$v['manga_time']);

            if(substr($v["manga_pic"],0,4)=="mac:"){
                $v["manga_pic"] = str_replace('mac:',$this->getImgUrlProtocol('manga'), $v["manga_pic"]);
            }
            elseif(!empty($v["manga_pic"]) && substr($v["manga_pic"],0,4)!="http" && substr($v["manga_pic"],0,2)!="//"){
                $v["manga_pic"] = $GLOBALS['config']['api']['manga']['imgurl'] . $v["manga_pic"];
            }
        }

        if($this->_param['ac']!='detail') {
            $class = [];
            $typefilter  = explode(',',$GLOBALS['config']['api']['manga']['typefilter']);

            foreach ($type_list as $k=>&$v) {

                if (!empty($GLOBALS['config']['api']['manga']['typefilter'])){
                    if(in_array($v['type_id'],$typefilter)) {
                        $class[] = ['type_id' => $v['type_id'], 'type_pid' => $v['type_pid'], 'type_name' => $v['type_name']];
                    }
                }
                else {
                    $class[] = ['type_id' => $v['type_id'], 'type_pid' => $v['type_pid'], 'type_name' => $v['type_name']];
                }
            }
            $res['class'] = $class;
        }
        return $res;
    }

    public function manga_xml($res)
    {
        $xml = '<?xml version="1.0" encoding="utf-8"?>';
        $xml .= '<rss version="5.1">';
        $type_list = model('Type')->getCache('type_list');

        $xml .= '<list page="'.$res['page'].'" pagecount="'.$res['pagecount'].'" pagesize="'.$res['limit'].'" recordcount="'.$res['total'].'">';
        foreach($res['list'] as $k=>&$v){
            $type_info = $type_list[$v['type_id']];
            $xml .= '<video>';
            $xml .= '<last>'.date('Y-m-d H:i:s',$v['manga_time']).'</last>';
            $xml .= '<id>'.$v['manga_id'].'</id>';
            $xml .= '<tid>'.$v['type_id'].'</tid>';
            $xml .= '<name><![CDATA['.$v['manga_name'].']]></name>';
            $xml .= '<type>'.$type_info['type_name'].'</type>';
            if(substr($v["manga_pic"],0,4)=="mac:"){
                $v["manga_pic"] = str_replace('mac:',$this->getImgUrlProtocol('manga'), $v["manga_pic"]);
            }
            elseif(!empty($v["manga_pic"]) && substr($v["manga_pic"],0,4)!="http"  && substr($v["manga_pic"],0,2)!="//"){
                $v["manga_pic"] = $GLOBALS['config']['api']['manga']['imgurl'] . $v["manga_pic"];
            }

            if($this->_param['ac']=='detail'){
                $xml .= '<pic>'.$v["manga_pic"].'</pic>';
                $xml .= '<lang>'.$v['manga_lang'].'</lang>';
                $xml .= '<area>'.$v['manga_area'].'</area>';
                $xml .= '<year>'.$v['manga_year'].'</year>';
                $xml .= '<state>'.$v['manga_serial'].'</state>';
                $xml .= '<note><![CDATA['.$v['manga_remarks'].']]></note>';
                $xml .= '<actor><![CDATA['.$v['manga_actor'].']]></actor>';
                $xml .= '<director><![CDATA['.$v['manga_director'].']]></director>';
                $xml .= '<des><![CDATA['.$v['manga_content'].']]></des>';
            }
            else {
                $xml .= '<dt>' . str_replace('$$$', ',', $v['manga_chapter_from']) . '</dt>';
                $xml .= '<note><![CDATA[' . $v['manga_remarks'] . ']]></note>';
            }
            $xml .= '</video>';
        }
        $xml .= '</list>';

        if($this->_param['ac']!='detail') {
            $xml .= "<class>";
            $typefilter  = explode(',',$GLOBALS['config']['api']['manga']['typefilter']);
            foreach ($type_list as $k=>&$v) {
                if($v['type_mid']==12) {
                    if (!empty($GLOBALS['config']['api']['manga']['typefilter'])){
                        if(in_array($v['type_id'],$typefilter)) {
                            $xml .= "<ty id=\"" . $v["type_id"] . "\">" . $v["type_name"] . "</ty>";
                        }
                    }
                    else {
                        $xml .= "<ty id=\"" . $v["type_id"] . "\">" . $v["type_name"] . "</ty>";
                    }
                }
            }
            unset($rs);
            $xml .= "</class>";
        }
        $xml .= "</rss>";
        return $xml;
    }

    public function website()
    {
        if($GLOBALS['config']['api']['website']['status'] != 1){
            echo 'closed';die;
        }

        if($GLOBALS['config']['api']['website']['charge'] == 1) {
            $h = $_SERVER['REMOTE_ADDR'];
            if (!$h) {
                echo lang('api/auth_err');
                exit;
            }
            else {
                $auth = $GLOBALS['config']['api']['website']['auth'];
                $this->checkDomainAuth($auth);
            }
        }

        $cache_time = intval($GLOBALS['config']['api']['website']['cachetime']);
        $cach_name = $GLOBALS['config']['app']['cache_flag']. '_'.'api_website_'.md5(http_build_query($this->_param));
        $html = Cache::get($cach_name);
        if(empty($html) || $cache_time==0) {
            $where = [];
            if (!empty($this->_param['ids'])) {
                $where['website_id'] = ['in', $this->_param['ids']];
            }
            if (!empty($this->_param['t'])) {
                if (empty($GLOBALS['config']['api']['website']['typefilter']) || strpos($GLOBALS['config']['api']['website']['typefilter'], $this->_param['t']) !== false) {
                    $where['type_id'] = $this->_param['t'];
                }
            }
            if (!empty(intval($this->_param['h']))) {
                $todaydate = date('Y-m-d', strtotime('+1 days'));
                $tommdate = date('Y-m-d', strtotime('-' . $this->_param['h'] . ' hours'));

                $todayunix = strtotime($todaydate);
                $tommunix = strtotime($tommdate);

                $where['website_time'] = [['gt', $tommunix], ['lt', $todayunix]];
            }
            if (!empty($this->_param['wd'])) {
                $where['website_name'] = ['like', '%' . $this->_param['wd'] . '%'];
            }
            if (!empty($GLOBALS['config']['api']['website']['datafilter'])) {
                $where['_string'] = $GLOBALS['config']['api']['website']['datafilter'];
            }
            if (empty(intval($this->_param['pg']))) {
                $this->_param['pg'] = 1;
            }

            $order = 'website_time desc';
            $field = 'website_id,website_name,type_id,"" as type_name,website_en,website_time,website_area,website_lang,website_pic';

            if ($this->_param['ac'] == 'detail') {
                $field = '*';
            }

            $res = model('website')->listData($where, $order, $this->_param['pg'], $GLOBALS['config']['api']['website']['pagesize'], 0, $field, 0);

            if ($res['code'] > 1) {
                echo $res['msg'];
                exit;
            }

            $type_list = model('Type')->getCache('type_list');
            foreach ($res['list'] as $k => &$v) {
                $type_info = $type_list[$v['type_id']];
                $v['type_name'] = $type_info['type_name'];
                $v['website_time'] = date('Y-m-d H:i:s', $v['website_time']);

                if (substr($v["website_pic"], 0, 4) == "mac:") {
                    $v["website_pic"] = str_replace('mac:', $this->getImgUrlProtocol('website'), $v["website_pic"]);
                } elseif (!empty($v["website_pic"]) && substr($v["website_pic"], 0, 4) != "http" && substr($v["website_pic"], 0, 2) != "//") {
                    $v["website_pic"] = $GLOBALS['config']['api']['website']['imgurl'] . $v["website_pic"];
                }

                if ($this->_param['ac'] == 'detail') {

                } else {

                }
            }

            if ($this->_param['ac'] != 'detail') {
                $class = [];
                $typefilter = explode(',', $GLOBALS['config']['api']['website']['typefilter']);

                foreach ($type_list as $k => &$v) {
                    if ($v['type_mid'] == 11) {

                        if (!empty($GLOBALS['config']['api']['website']['typefilter'])) {
                            if (in_array($v['type_id'], $typefilter)) {
                                $class[] = ['type_id' => $v['type_id'], 'type_pid' => $v['type_pid'], 'type_name' => $v['type_name']];
                            }
                        } else {
                            $class[] = ['type_id' => $v['type_id'], 'type_pid' => $v['type_pid'], 'type_name' => $v['type_name']];
                        }
                    }
                }
                $res['class'] = $class;
            }

            $html = json_encode($res,JSON_UNESCAPED_UNICODE);
            $html = mac_filter_tags($html);
            if($cache_time>0) {
                Cache::set($cach_name, $html, $cache_time);
            }
        }
        echo $html;
        exit;
    }

    public function comment()
    {

    }

    private function checkDomainAuth($auth)
    {
        session_start();
        if(!$_SESSION["result"]){
             $ip = mac_get_client_ip();
             $key = @$_GET["key"] ?? die("缺少key");
             $api = "https://dx.axablog.com/api/cj?key=".$key."&ip=".$ip;
             $result = json_decode(file_get_contents($api),true);
            if(!is_array($result)){
                die('云端链接失败');
             }
            if($result["code"] != 200){
                 die($result["msg"].'-'.$ip);
             }
        
             $_SESSION["result"] = true;
        }
       
        
        $auth_list = ['127.0.0.1'];
        
        // if (!empty($auth)) {
        //     foreach (explode('#', $auth) as $domain) {
        //         $domain = trim($domain);
        //         $auth_list[] = $domain;
        //         if (!mac_string_is_ip($domain)) {
        //             $auth_list[] = gethostbyname($domain);
        //         }
        //     }
        //     $auth_list = array_unique($auth_list);
        //     $auth_list = array_filter($auth_list);
        // }
        // if (!in_array($ip, $auth_list)) {
        //     echo lang('api/auth_err');
        //     exit;
        // }
    }

    private function getImgUrlProtocol($key)
    {
        $default = (isset($GLOBALS['config']['upload']['protocol']) ? $GLOBALS['config']['upload']['protocol'] : 'http') . ':';
        if (!isset($GLOBALS['config']['api'][$key]['imgurl'])) {
            return $default;
        }
        if (substr($GLOBALS['config']['api'][$key]['imgurl'], 0, 5) == 'https') {
            return 'https:';
        }
        return $default;
    }

    public function Category()
    {
        header('Content-Type:application/json;charset=utf-8');
        $rows = \think\Db::name('type')->where('type_status', 1)->order('type_sort asc,type_id asc')->select();
        $data = [];
        foreach ($rows as $v) {
            $data[] = [
                'type_en' => $v['type_en'],
                'type_name' => $v['type_name'],
                'type_status' => (int)$v['type_status'],
                'categorypwd' => ''
            ];
        }
        $json = json_encode($data, JSON_UNESCAPED_UNICODE);
        header('Content-Length: '.strlen($json));
        header('Connection: close');
        echo $json;
        exit;
    }

    public function about()
    {
        header('Content-Type:application/json;charset=utf-8');
        $cfg = config('app_content');
        $url = isset($cfg['about_url']) ? (string)$cfg['about_url'] : '';
        $json = json_encode(['code'=>200, 'url'=>$url], JSON_UNESCAPED_UNICODE|JSON_UNESCAPED_SLASHES);
        header('Content-Length: '.strlen($json));
        header('Connection: close');
        echo $json;
        exit;
    }

    public function wallpaper()
    {
        header('Content-Type:application/json;charset=utf-8');
        $cfg = config('app_content');
        $data = isset($cfg['wallpapers']) && is_array($cfg['wallpapers']) ? array_values($cfg['wallpapers']) : [];
        $json = json_encode(['code'=>'200', 'msg'=>'ok', 'data'=>$data], JSON_UNESCAPED_UNICODE|JSON_UNESCAPED_SLASHES);
        header('Content-Length: '.strlen($json));
        header('Connection: close');
        echo $json;
        exit;
    }

    public function top()
    {
        header('Content-Type:application/json;charset=utf-8');
        $rows = \think\Db::name('vod')->where('vod_status', 1)->order('vod_level desc,vod_hits desc,vod_time desc')->limit(20)->select();
        $types = \think\Db::name('type')->column('type_name', 'type_id');
        $data = [];
        foreach ($rows as $v) {
            $pic = $v['vod_pic'];
            if (substr($pic,0,2) == '//') $pic = 'http:'.$pic;
            elseif ($pic && substr($pic,0,4) != 'http') $pic = $GLOBALS['config']['api']['vod']['imgurl'].$pic;
            $data[] = [
                'id' => strval($v['vod_id']),
                'tjid' => strval($v['vod_id']),
                'tjinfo' => $v['vod_name'],
                'state' => $v['vod_remarks'],
                'thumb' => $pic,
                'content' => strip_tags($v['vod_content']),
                'tjpicur' => $pic,
                'tjtype' => isset($types[$v['type_id']]) ? $types[$v['type_id']] : '',
                'tjurl' => strval($v['vod_id']),
                'tjwei' => '1',
                'vod_play_url' => $v['vod_play_url'],
                'tjstarttime' => '',
                'tjendtime' => ''
            ];
        }
        $json = json_encode(['code'=>'200','status'=>'1','msg'=>'ok','data'=>$data], JSON_UNESCAPED_UNICODE|JSON_UNESCAPED_SLASHES);
        header('Content-Length: '.strlen($json));
        header('Connection: close');
        echo $json;
        exit;
    }

    public function topic()
    {
        header('Content-Type:application/json;charset=utf-8');
        $json = json_encode(['code'=>'200','status'=>'1','msg'=>'ok','data'=>[]], JSON_UNESCAPED_UNICODE);
        header('Content-Length: '.strlen($json));
        header('Connection: close');
        echo $json;
        exit;
    }

    public function SearchText()
    {
        header('Content-Type:application/json;charset=utf-8');
        $json = json_encode(['code'=>200,'msg'=>''], JSON_UNESCAPED_UNICODE);
        header('Content-Length: '.strlen($json));
        header('Connection: close');
        echo $json;
        exit;
    }

    private function appVodList()
    {
        header('Content-Type:application/json;charset=utf-8');
        $page = max(1, intval(isset($this->_param['page']) ? $this->_param['page'] : (isset($this->_param['pg']) ? $this->_param['pg'] : 1)));
        $limit = 100;
        $where = ['vod_status'=>1];
        $class = isset($this->_param['class']) ? trim($this->_param['class']) : '';
        if ($class !== '') {
            if (ctype_digit($class)) {
                $where['type_id'] = intval($class);
            } else {
                $type = \think\Db::name('type')->where('type_en', $class)->find();
                if ($type) $where['type_id'] = $type['type_id'];
            }
        }
        if (!empty($this->_param['zm'])) {
            $kw = urldecode($this->_param['zm']);
            $where['vod_name'] = ['like', '%'.$kw.'%'];
        }
        $total = \think\Db::name('vod')->where($where)->count();
        $rows = \think\Db::name('vod')->where($where)->order('vod_time desc')->page($page, $limit)->select();
        $types = \think\Db::name('type')->column('type_name', 'type_id');
        $data = [];
        foreach ($rows as $v) {
            $pic = $v['vod_pic'];
            if (substr($pic,0,2) == '//') $pic = 'http:'.$pic;
            elseif ($pic && substr($pic,0,4) != 'http') $pic = $GLOBALS['config']['api']['vod']['imgurl'].$pic;
            $pic_slide = isset($v['vod_pic_slide']) ? $v['vod_pic_slide'] : '';
            if (substr($pic_slide,0,2) == '//') $pic_slide = 'http:'.$pic_slide;
            elseif ($pic_slide && substr($pic_slide,0,4) != 'http') $pic_slide = $GLOBALS['config']['api']['vod']['imgurl'].$pic_slide;
            $data[] = [
                'title' => $v['vod_name'],
                'pic' => $pic,
                'pic_slide' => $pic_slide,
                'score' => strval($v['vod_score']),
                'state' => $v['vod_remarks'],
                'type' => isset($types[$v['type_id']]) ? $types[$v['type_id']] : '',
                'blurb' => mb_substr(strip_tags(isset($v['vod_content']) ? $v['vod_content'] : ''), 0, 120, 'UTF-8'),
                'vod_play_url' => '',
                'nextlink' => strval($v['vod_id'])
            ];
        }
        $json = json_encode(['code'=>1, 'data'=>$data, 'problem_field'=>strval($page), 'pageindex'=>$page, 'totalpage'=>($total > 0 ? intval(ceil($total / $limit)) : 0), 'videonum'=>$total], JSON_UNESCAPED_UNICODE|JSON_UNESCAPED_SLASHES);
        header('Content-Length: '.strlen($json));
        header('Connection: close');
        echo $json;
        exit;
    }

    private function appVodDetail($id)
    {
        header('Content-Type:application/json;charset=utf-8');
        $v = \think\Db::name('vod')->where(['vod_id'=>intval($id), 'vod_status'=>1])->find();
        if (!$v) {
            $json = json_encode(['code'=>404, 'msg'=>'not found', 'data'=>null], JSON_UNESCAPED_UNICODE|JSON_UNESCAPED_SLASHES);
            header('Content-Length: '.strlen($json));
            header('Connection: close');
            echo $json;
            exit;
        }
        $type = \think\Db::name('type')->where('type_id', $v['type_id'])->find();
        $type_name = $type ? $type['type_name'] : '';
        $pic = $v['vod_pic'];
        if (substr($pic,0,2) == '//') $pic = 'http:'.$pic;
        elseif ($pic && substr($pic,0,4) != 'http') $pic = $GLOBALS['config']['api']['vod']['imgurl'].$pic;
        $players = config('vodplayer');
        $froms = preg_split('/\$\$\$|,/', $v['vod_play_from']);
        $groups = explode('$$$', $v['vod_play_url']);
        $video_list = [];
        foreach ($froms as $idx => $from) {
            $from = trim($from);
            if ($from === '') continue;
            $episodes = [];
            $raw_group = isset($groups[$idx]) ? $groups[$idx] : '';
            foreach (explode('#', $raw_group) as $ep_index => $ep) {
                if ($ep === '') continue;
                $parts = explode('$', $ep, 2);
                $title = count($parts) > 1 ? $parts[0] : '第'.($ep_index+1).'集';
                $url = count($parts) > 1 ? $parts[1] : $parts[0];
                $episodes[] = ['title'=>$title, 'url'=>$url];
            }
            if (empty($episodes)) continue;
            $play_name = isset($players[$from]['show']) && $players[$from]['show'] ? $players[$from]['show'] : $from;
            $video_list[] = [
                'type' => $from,
                'name' => $play_name,
                'parse' => [],
                'duration' => '',
                'list' => $episodes,
                'lists' => $episodes
            ];
        }
        $is_finish = (strpos($v['vod_remarks'], '完') !== false || (intval($v['vod_isend']) === 1)) ? '1' : '0';
        $result = [
            'code' => 1,
            'id' => strval($v['vod_id']),
            'title' => $v['vod_name'],
            'img_url' => $pic,
            'intro' => strip_tags($v['vod_content']),
            'raing' => strval($v['vod_score']),
            'pubtime' => strval($v['vod_year']),
            'area' => $v['vod_area'] !== '' ? explode(',', $v['vod_area']) : [],
            'type' => $type_name !== '' ? [$type_name] : [],
            'actor' => $v['vod_actor'] !== '' ? explode(',', $v['vod_actor']) : [],
            'director' => $v['vod_director'] !== '' ? explode(',', $v['vod_director']) : [],
            'cur_episode' => $v['vod_remarks'],
            'max_episode' => strval($v['vod_total']),
            'is_finish' => $is_finish,
            'top_type' => $type_name,
            'season_num' => '1',
            'play_filter' => '',
            'foreign_ip' => '',
            'trunk' => '',
            'video_list' => $video_list,
            'about' => ['actor'=>[], 'similary'=>[]]
        ];
        $json = json_encode($result, JSON_UNESCAPED_UNICODE|JSON_UNESCAPED_SLASHES);
        header('Content-Length: '.strlen($json));
        header('Connection: close');
        echo $json;
        exit;
    }

}
