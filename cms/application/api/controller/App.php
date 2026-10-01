<?php

/**
 * 苹果CMS数据接口类
 * 将此文件复制到苹果CMS的application/api/controller/中
 * lvdoui.net
 **/

namespace app\api\controller;

use think\Db;
use think\Cache;

class App extends Base
{

    var $_param;
    private $EncryptionDetails = false; // true、开启加密   false、关闭加密
    private $cmskey = "ziKv8NzFSwNoBUYRJclwwjRaiTWBb7ON"; //对应后台设置的API接口密钥，可在线生成https://www.bchrt.com/tools/random-string-generator/

    public function __construct()
    {
        parent::__construct();
        $this->_param = input();
    }

    private function json_encode_extra($obj, $apicode = "")
    {
        return json_encode($obj, JSON_UNESCAPED_SLASHES);
    }

    // aes加密函数
    private function AESencrypt($data)
    {
        $encryptedData = openssl_encrypt($data, "AES-128-CBC", substr($this->cmskey, 0, 16), OPENSSL_RAW_DATA, substr($this->cmskey, -16));
        return "lvdou+" . base64_encode($encryptedData);
    }

    /**
     * 视频json，带分类
     */
    public function vod_json($v)
    {
        if ($v == null) {
            return $v;
        }
        $v['vod_time_add'] = date('Y-m-d H:i:s', $v['vod_time_add']);
        $v['vod_content'] = strip_tags($v['vod_content']);
        if (substr($v["vod_pic"], 0, 4) == "mac:") {
            $v["vod_pic"] = str_replace('mac:', 'http:', $v["vod_pic"]);
        } elseif (substr($v["vod_pic"], 0, 2) == "//") {
            $v["vod_pic"] = str_replace('//', 'http://', $v["vod_pic"]);
        } elseif (!empty($v["vod_pic"]) && substr($v["vod_pic"], 0, 4) != "http" && substr($v["vod_pic"], 0, 2) != "//") {
            $v["vod_pic"] = $GLOBALS['config']['api']['vod']['imgurl'] . $v["vod_pic"];
        }

        if (substr($v["vod_pic_slide"], 0, 4) == "mac:") {
            $v["vod_pic_slide"] = str_replace('mac:', 'http:', $v["vod_pic_slide"]);
        } elseif (substr($v["vod_pic_slide"], 0, 2) == "//") {
            $v["vod_pic_slide"] = str_replace('//', 'http://', $v["vod_pic_slide"]);
        } elseif (!empty($v["vod_pic_slide"]) && substr($v["vod_pic_slide"], 0, 4) != "http" && substr($v["vod_pic_slide"], 0, 2) != "//") {
            $v["vod_pic_slide"] = $GLOBALS['config']['api']['vod']['imgurl'] . $v["vod_pic_slide"];
        }

        $v["vod_url_with_player"] = [];
        $vod_play_from_array = explode('$$$', $v["vod_play_from"]);
        $play_url_array = explode('$$$', $v["vod_play_url"]);
        $all_players = config("vodplayer");
        $xg_parse_players = config("vodplayer_xg_parse");
        $sort = [];
        foreach ($vod_play_from_array as $k => $player) {
            try {
                if ($all_players[$player]['show'] != null && $all_players[$player]['status'] == 1 && ($xg_parse_players[$player]['app_is_show'] == 1 || $xg_parse_players[$player]['app_is_show'] == null)) {
                    $player_sort = $all_players[$player]['sort'];
                    $player_sort = $player_sort == "" ? 0 : $player_sort;
                    $player_with_url = [];
                    $player_with_url["name"] = $all_players[$player]['show'];
                    $player_with_url["code"] = $all_players[$player]['from'];
                    $player_with_url["url"] = $play_url_array[$k];
                    if (empty($xg_parse_players[$player]['parse_api'])) {
                        $player_with_url["parse_api"] = $xg_parse_players['xg_app_player']['parse_api'];
                    } else {
                        $player_with_url["parse_api"] = $xg_parse_players[$player]['parse_api'];
                    }
                    if (empty($xg_parse_players[$player]['user_agent'])) {
                        $player_with_url["user_agent"] = $xg_parse_players['xg_app_player']['user_agent'];
                    } else {
                        $player_with_url["user_agent"] = $xg_parse_players[$player]['user_agent'];
                    }
                    if (empty($xg_parse_players[$player]['headers'])) {
                        $player_with_url["headers"] = $xg_parse_players['xg_app_player']['headers'];
                    } else {
                        $player_with_url["headers"] = $xg_parse_players[$player]['headers'];
                    }
                    if (empty($xg_parse_players[$player]['link_features'])) {
                        $player_with_url["link_features"] = $xg_parse_players['xg_app_player']['link_features'];
                    } else {
                        $player_with_url["link_features"] = $xg_parse_players[$player]['link_features'];
                    }
                    if (empty($xg_parse_players[$player]['un_link_features'])) {
                        $player_with_url["un_link_features"] = $xg_parse_players['xg_app_player']['un_link_features'];
                    } else {
                        $player_with_url["un_link_features"] = $xg_parse_players[$player]['un_link_features'];
                    }
                    $sort[] = $player_sort;
                    array_push($v["vod_url_with_player"], $player_with_url);
                }
            } catch (\Exception $e) {
            }
        }
        array_multisort($sort, SORT_DESC, $v["vod_url_with_player"]);
        return $v;
    }

    /**
     * 视频列表，不带分类
     */
    public function vod_json_list($res)
    {
        foreach ($res['list'] as $k => &$v) {
            $v['vod_time_add'] = date('Y-m-d H:i:s', $v['vod_time_add']);
            if (substr($v["vod_pic"], 0, 4) == "mac:") {
                $v["vod_pic"] = str_replace('mac:', 'http:', $v["vod_pic"]);
            } elseif (substr($v["vod_pic"], 0, 2) == "//") {
                $v["vod_pic"] = str_replace('//', 'http://', $v["vod_pic"]);
            } elseif (!empty($v["vod_pic"]) && substr($v["vod_pic"], 0, 4) != "http" && substr($v["vod_pic"], 0, 2) != "//") {
                $v["vod_pic"] = $GLOBALS['config']['api']['vod']['imgurl'] . $v["vod_pic"];
            }
            if (substr($v["vod_pic_slide"], 0, 4) == "mac:") {
                $v["vod_pic_slide"] = str_replace('mac:', 'http:', $v["vod_pic_slide"]);
            } elseif (substr($v["vod_pic_slide"], 0, 2) == "//") {
                $v["vod_pic_slide"] = str_replace('//', 'http://', $v["vod_pic_slide"]);
            } elseif (!empty($v["vod_pic_slide"]) && substr($v["vod_pic_slide"], 0, 4) != "http" && substr($v["vod_pic_slide"], 0, 2) != "//") {
                $v["vod_pic_slide"] = $GLOBALS['config']['api']['vod']['imgurl'] . $v["vod_pic_slide"];
            }
        }
        return $res;
    }

    /**
     * 视频检索
     */
    public function search()
    {
        $html = '';
        $where = [];
        if (!empty($this->_param['text'])) {
            $where['vod_name'] = ['like', "%" . $this->_param['text'] . "%"];
        }
        if (Cache::has('xgapp_search' . $this->_param['text'])) {
            $cache_response = Cache::get('xgapp_search' . $this->_param['text']);
            $html = $this->json_encode_extra($cache_response, "search");
            echo $html;
            exit;
        }
        $order = 'vod_time desc';
        $field = 'vod_id,vod_name,vod_pic,vod_score,type_id,vod_en,vod_time_add,vod_remarks';
        $limit_str = "0,20";
        $list = Db::name('Vod')->field($field)->where($where)->order($order)->limit($limit_str)->select();
        $type_list = model('Type')->getCache('type_list');
        $group_list = model('Group')->getCache('group_list');
        foreach ($list as $k => $v) {
            if (!empty($v['type_id'])) {
                $list[$k]['type'] = $type_list[$v['type_id']];
                $list[$k]['type_1'] = $type_list[$list[$k]['type']['type_pid']];
            }
            if (!empty($v['group_id'])) {
                $list[$k]['group'] = $group_list[$v['group_id']];
            }
        }
        $res = ['code' => 1, 'msg' => '搜索', 'list' => $list, "total" => sizeof($list)];
        $res = $this->vod_json_list($res);
        Cache::set('xgapp_search' . $this->_param['text'], $res, 60 * 60);
        $html = $this->json_encode_extra($res, "search");
        echo $html;
        exit;
    }

    /**
     * banner
     * 预留
     */
    public function banner()
    {
        if (Cache::has('xgapp_banner')) {
            $cache_list = Cache::get('xgapp_banner');
            $response = ['code' => 1, 'msg' => '轮播图', 'list' => $cache_list];
            $html = $this->json_encode_extra($response, "banner");
            echo $html;
            exit;
        }
        $html = '';
        $where = [];
        $where['vod_level'] = ['eq', 9];
        $order = 'vod_time desc';
        $field = 'vod_id,vod_name,vod_pic,vod_pic_slide,vod_score,type_id,vod_en,vod_time_add,vod_remarks';
        $res = model('vod')->listData($where, $order, 1, $GLOBALS['config']['api']['vod']['pagesize'], 0, $field, 0);
        foreach ($res["list"] as $k => &$v) {
            if (!empty($v["vod_pic_slide"])) {
                $v['vod_pic'] = $v['vod_pic_slide'];
            }
        }
        $list_array = $this->vod_json_list($res)["list"];
        Cache::set('xgapp_banner', $list_array, 60 * 60);
        $response = ['code' => 1, 'msg' => '轮播图', 'list' => $list_array];
        $html = $this->json_encode_extra($response, "banner");
        echo $html;
        exit;
    }

    /**
     * 首页推荐
     */
    public function index_video()
    {
        if (Cache::has('xgapp_index_video')) {
            $cache_list = Cache::get('xgapp_index_video');
            $response = ['code' => 1, 'msg' => '首页视频', 'list' => $cache_list];
            $html = $this->json_encode_extra($response, "index_video");
            echo $html;
            exit;
        }
        $html = '';
        $type_where = [];
        $type_where["type_status"] = 1;
        $type_order = 'type_sort';
        $type_list = model('type')->listData($type_where, $type_order, 'tree', 1, 1000, 0, 0)["list"];
        $type_list_array = [];
        foreach ($type_list as $k => $v) {
            $type_info["type_id"] = $v["type_id"];
            $type_info["type_name"] = '精选' . $v["type_name"];
            $where['type_id | type_id_1'] = ['eq', $type_info["type_id"]];
            $where['vod_level'] = ['lt', 2];
            $order = 'vod_level desc,vod_time desc';
            $field = 'vod_id,vod_name,vod_pic,type_id,vod_remarks';
            $limit_str = '6';
            $list = Db::name('Vod')->field($field)->where($where)->order($order)->limit($limit_str)->select();
            $res = ["list" => $list];
            $type_info["vlist"] = $this->vod_json_list($res)["list"];
            array_push($type_list_array, $type_info);
        }
        Cache::set('xgapp_index_video', $type_list_array, 60 * 60);
        $response = ['code' => 1, 'msg' => '首页视频', 'list' => $type_list_array];
        $html = $this->json_encode_extra($response, "index_video");
        echo $html;
        exit;
    }
    
    /**
     * 导航
     */
    public function nav()
    {
        if (Cache::has('xgapp_nav')) {
            $cache_list = Cache::get('xgapp_nav');
            $response = ['code' => 1, 'msg' => '导航列表', 'list' => $cache_list];
            $html = $this->json_encode_extra($response, "nav");
            echo $html;
            exit;
        }
        $html = '';
        $type_where = [];
        $type_where["type_status"] = 1;
        $type_order = 'type_sort';
        $type_list = model('type')->listData($type_where, $type_order, 'tree', 1, 1000, 0, 0)["list"];
        $type_list_array = [];
        foreach ($type_list as $k => $v) {
            $type_info["type_id"] = $v["type_id"];
            $type_info["type_name"] = $v["type_name"];
            $type_info["type_extend"] = $v["type_extend"];
            array_push($type_list_array, $type_info);
        }
        Cache::set('xgapp_nav', $type_list_array, 60 * 60);
        $response = ['code' => 1, 'msg' => '导航列表', 'list' => $type_list_array];
        $html = $this->json_encode_extra($response, "nav");
        echo $html;
        exit;
    }

    /**
     * 视频筛选
     */
    public function video()
    {
        if (empty($this->_param["tid"])) {
            $json = $this->json_encode_extra(['code' => 2, 'msg' => '参数验证失败'], "video");
            echo $json;
            exit;
        }
        $html = '';
        $where = [];
        $where['type_id | type_id_1'] = ['eq', $this->_param['tid']];
        if (!empty($this->_param['class'])) {
            $where['vod_class'] = ['like', "%" . $this->_param['class'] . "%"];
        }
        if (!empty($this->_param['area'])) {
            $where['vod_area'] = ['like', "%" . $this->_param['area'] . "%"];
        }
        if (!empty($this->_param['lang'])) {
            $where['vod_lang'] = ['like', "%" . $this->_param['lang'] . "%"];
        }
        if (!empty($this->_param['year'])) {
            $where['vod_year'] = ['like', "%" . $this->_param['year'] . "%"];
        }
        if (empty($this->_param['pg'])) {
            $this->_param['pg'] = 1;
        }
        if ($this->_param['pg'] > 25) {
            $this->_param['pg'] = 25;
        }
        $order = 'vod_time desc';
        $field = 'vod_id,vod_name,vod_pic,vod_score,type_id,vod_en,vod_time_add,vod_remarks';
        $res = model('vod')->listData($where, $order, $this->_param['pg'], $GLOBALS['config']['api']['vod']['pagesize'], 0, $field, 0);
        $html = $this->json_encode_extra($this->vod_json_list($res), "video");
        echo $html;
        exit;
    }

    /**
     * 视频详情
     */
    public function video_detail()
    {
        if (empty($this->_param['id'])) {
            $json = $this->json_encode_extra(['code' => 2, 'msg' => '参数验证失败'], "video_detail");
            echo $json;
            exit;
        }
        $html = '';
        $where = [];
        if (!empty($this->_param['id'])) {
            $where['vod_id'] = ['eq', $this->_param['id']];
        }
        if (empty($this->_param['id'])) {
            $where['vod_id'] = ['eq', 1];
        }
        $order = 'vod_time desc';
        $field = '*';
        $res = Db::name('Vod')->field($field)->where($where)->find();
        if (empty($res)) {
            $json = $this->json_encode_extra(['code' => 404, 'msg' => '抱歉，该视频已下架'], "video_detail");
            echo $json;
            exit;
        }

        if ($this->EncryptionDetails) {
            $dataArray = explode('#', $res['vod_play_url']);
            foreach ($dataArray as &$data) {
                $segments = explode('$', $data);
                if (count($segments) === 2) {
                    $title = $segments[0];
                    $url = $segments[1];
                    $encodedUrl = $this->AESencrypt($url);
                    $data = $title . '$' . $encodedUrl;
                }
            }
            $res['vod_play_url'] = implode('#', $dataArray);
        }

        $detail = $this->vod_json($res);
        $detail["trysee"] = config("maccms")["user"]["trysee"];
        if ($detail["permission"] != "vip") {
            $where = [];
            $where['status'] = ['eq', 1];
            $where['start_time'] = ['lt', time()];
            $where['end_time'] = ['gt',  time()];
            $start = 0;
            $limit = 20;
            $order = 'rand()';
            $field = 'id,name,content,req_type,req_content,headers,time,skip_time';
            $init_advert_list = [];
            $enable = config('maccms')["xg_advert_config"]["config_video_start"];
            if ($enable == 1) {
                $where['position'] = ['eq', 3];
                $limit_str = $start . "," . $limit;
                $init_advert_list = Db::table('xg_app_advert')->field($field)->where($where)->orderRaw($order)->limit($limit_str)->select();
            }
            foreach ($init_advert_list as $k => &$v) {
                if (substr($v["content"], 0, 4) == "mac:") {
                    $v["content"] = str_replace('mac:', 'http:', $v["content"]);
                } elseif (substr($v["content"], 0, 2) == "//") {
                    $v["content"] = str_replace('//', 'http://', $v["content"]);
                } elseif (!empty($v["content"]) && substr($v["content"], 0, 4) != "http" && substr($v["content"], 0, 2) != "//") {
                    $v["content"] = $GLOBALS['config']['api']['vod']['imgurl'] . $v["content"];
                }
                $init_advert_list[$k] = $v;
            }
            $pause_advert_list = [];
            $enable = config('maccms')["xg_advert_config"]["config_video_pause"];
            if ($enable == 1) {
                $where['position'] = ['eq', 4];
                $limit_str = $start . "," . $limit;
                $pause_advert_list = Db::table('xg_app_advert')->field($field)->where($where)->orderRaw($order)->limit($limit_str)->select();
            }
            foreach ($pause_advert_list as $k => &$v) {
                if (substr($v["content"], 0, 4) == "mac:") {
                    $v["content"] = str_replace('mac:', 'http:', $v["content"]);
                } elseif (substr($v["content"], 0, 2) == "//") {
                    $v["content"] = str_replace('//', 'http://', $v["content"]);
                } elseif (!empty($v["content"]) && substr($v["content"], 0, 4) != "http" && substr($v["content"], 0, 2) != "//") {
                    $v["content"] = $GLOBALS['config']['api']['vod']['imgurl'] . $v["content"];
                }
                $pause_advert_list[$k] = $v;
            }
            $detail["init_advert_list"] = $init_advert_list;
            $detail["pause_advert_list"] = $pause_advert_list;
        }
        if ($detail["unlock"]) {
            $response = ['code' => 1024, 'msg' => '权限不足', 'data' => $detail];
            $html = $this->json_encode_extra($response, "video_detail");
            echo $html;
            exit;
        }
        $response = ['code' => 1, 'msg' => '视频详情', 'data' => $detail];
        $html = $this->json_encode_extra($response, "video_detail");
        echo $html;
        exit;
    }
}
