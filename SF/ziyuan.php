<?php
/**
 * 官替算法 v0.1 - 资源替换核心
 * 用「资源站(自定义 CMS)」的地址替换官方平台地址
 * 配置由后台「官替算法」页面管理（save/sf.config.php），无需修改本文件
 */
error_reporting(0);
header('Content-Type: application/json; charset=utf-8');

//读取后台配置
$SF = @include dirname(__FILE__) . '/../save/sf.config.php';
if (!is_array($SF)) { $SF = array(); }
$SF += array(
    'off' => '0', 'cms' => 'https://cmsv10.com', 'form' => 'jsm3u8',
    'dytype' => '1', 'zytype' => '5', 'api' => '', 'table' => 'mac_vod',
);

if ($SF['off'] == '1') {
    echo json_encode(['code' => 403, 'msg' => '官替算法已关闭'], JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
    exit();
}

/*配置表如下（可在后台修改）*/
$cms    = $SF['cms'];       //你的cms地址，示例：https://cmsv10.com
$form   = $SF['form'];      //需要代替播放器编码，用此播放器编码的数据替换官方的地址
$api    = $SF['api'];       //代替资源需要解析的json接口，留空即可
$dytype = $SF['dytype'];    //电影分类，用于识别电影集数为1集
$zytype = $SF['zytype'];    //综艺分类，综艺集数乱需要排除综艺不走替换

require_once 'mysql.php';

if (!isset($_GET['url']) || !$_GET['url']) {
    echo json_encode(['code' => 400, 'msg' => '请输入URL地址！'], JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
    exit();
}

$url = $_GET['url'];
// 检查是否支持解析
$gfst = array('qq', 'mgtv', 'youku', 'iqiyi', 'pptv', 'sohu', 'bilibili', 'le', 'miguvideo');
$urlpd = false;

foreach ($gfst as $urlbs) {
    if (strpos($url, $urlbs) !== false) {
        $urlpd = true;
        break;
    }
}

if (!$urlpd) {
    echo json_encode(['code' => 400, 'msg' => '不支持解析，请输入官方url地址！'], JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
    exit();
}

$mysql = new mysql();
$sqlurl = str_replace(['http://', 'https://'], '', $url);

// 缓存相关信息
$mulu = '';
if (strstr($sqlurl, 'qq.com')) { $mulu = "Cache/qq/"; }
if (strstr($sqlurl, 'youku.com')) { $mulu = "Cache/youku/"; }
if (strstr($sqlurl, 'qiyi.com')) { $mulu = "Cache/qiyi/"; }
if (strstr($sqlurl, 'mgtv.com')) { $mulu = "Cache/mgtv/"; }
if (strstr($sqlurl, 'bilibili.com')) { $mulu = "Cache/bilibili/"; }
if ($mulu == '') { $mulu = "Cache/other/"; }

// 创建缓存文件夹
if (!is_dir($mulu)) {
    mkdir($mulu, 0777, true);
}
$cacheFile = $mulu . md5($sqlurl) . '.txt';

// 检查是否存在缓存文件
if (file_exists($cacheFile)) {
    // 如果存在缓存文件，直接读取缓存
    $json_data = file_get_contents($cacheFile);
} else {
    // 如果缓存文件不存在，进行数据库查询
    $conn = $mysql->getConnection();
    if ($conn) {
        $table = $SF['table'];
        $sqlurl_safe = $conn->real_escape_string($sqlurl);
        $sql = "SELECT * FROM `$table` WHERE vod_play_url LIKE '%$sqlurl_safe%' ";
        $result = $conn->query($sql);

        $data = array();

        if ($result && $result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $type_id = $row['type_id'];
                $vod_play_from = $row['vod_play_from'];
                $vod_play_url = $row['vod_play_url'];

                if ($type_id == $zytype) {
                    $data = [
                        'code' => 404,
                        'msg' => '解析失败，综艺分类不解析',
                    ];
                    echo json_encode($data, 456); exit;
                }
                // 提取链接所在的播放器编码和对应的URL
                $play_from = explode('$$$', $vod_play_from);
                $play_url = explode('$$$', $vod_play_url);

                // 找到搜索链接所在的播放器编码和对应的URL
                $index = -1;
                foreach ($play_url as $key => $playUrl) {
                    if (strpos($playUrl, $url) !== false) {
                        $index = $key;
                        break;
                    }
                }

                if ($index !== -1) {
                    // 将播放链接以顺序数字键值的方式返回
                    $play_url[$index] = explode('#', $play_url[$index]);
                    $play_url[$index] = array_values(array_filter($play_url[$index])); // 去除空元素

                    foreach ($play_url[$index] as $play_key => $play_value) {
                        list($play_id, $play_url_one) = explode('$', $play_value);
                        $play_url_one = str_replace(['http://', 'https://'], '', $play_url_one); // 删除协议头

                        $play_url_cacheFile = $mulu . md5($play_url_one) . '.txt'; //单独缓存

                        // 构建新的数据结构
                        $data = [
                            'code' => 200,
                            'id' => $row['vod_id'],
                            'name' => $row['vod_name'],
                            'js' => $play_key + 1, // 使用$play_url的顺序作为js字段的值
                            'from' => $play_from[$index]
                        ];

                        // 添加条件检查
                        if ($type_id == $dytype) {
                            $data['js'] = 'vip'; //电影分类集数设置为vip
                        }

                        // 缓存单独的$play_url数据
                        $json_data = json_encode($data, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
                        file_put_contents($play_url_cacheFile, $json_data);
                    }
                }
            }
        } else {
            // 没有结果返回信息
            $json_data = json_encode(['code' => 400, 'msg' => '官采数据中没有找到匹配的数据'], JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
        }

        $mysql->releaseConnection($conn);
    } else {
        $json_data = "无法连接数据库。";
    }
}
$json_data = json_decode($json_data, true);
$id = isset($json_data['id']) ? $json_data['id'] : null;
if (isset($json_data['code']) && $json_data['code'] == 200) {
    $m3u8 = $cms . '/api.php/provide/vod/from/' . $form . '/?ac=detail&ids=';
    $geturl = file_get_contents($m3u8 . $id);
    $data = json_decode($geturl, true);
    $json = getvideo($data);
    if ($json['code'] == 200) {
        if ($json_data['js'] === 'vip') {
            $videoname = $json['video'][0]['name'] . '【正片】';
        } else {
            $videoname = $json['video'][0]['name'] . '【第' . $json_data['js'] . '集】';
        }

        $videourl = $json['video'][0]['url'][$json_data['js']];
        $type_name = $json['video'][0]['type_name'];
        if (isset($videourl) && strstr($videourl, '.m3u8')) {
            $videotype = 'm3u8';
        } elseif (isset($videourl) && strstr($videourl, '.mp4')) {
            $videotype = 'mp4';
        } else {
            $videotype = 'h5';
        }

        if (!empty($api)) {
            $jxget = file_get_contents($api . $videourl);
            $jxjson = json_decode($jxget, true);
            $videourl = isset($jxjson['url']) ? $jxjson['url'] : '';
        }
        if ($videourl == '' || $videourl == null) {
            $videodata = [
                'code' => 404,
                'msg' => '太快了，没找到对应地址，再试一次！',
            ];
            echo json_encode($videodata, 456); exit;
        }
        $videodata = [
            'code' => 200,
            'msg' => '解析成功',
            'url' => $videourl,
            'link' => $url,
            'type' => $videotype,
            'from' => $json_data['from'] . '‖' . $type_name,
            'name' => $videoname,
            'source' => '官替算法 v0.1',
        ];
    } else {
        $videodata = [
            'code' => 404,
            'msg' => '解析失败，资源站没有相关资源',
        ];
    }
} else {
    $videodata = [
        'code' => 404,
        'msg' => '官方数据中无数据',
    ];
}

die(json_encode($videodata, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES));

//分析json
function getvideo($data)
{
    if (isset($data['total']) && $data['total']) {
        foreach ($data['list'] as $k => $v) {
            $video[$k]['name'] = $v['vod_name'];
            $video[$k]['type_name'] = $v['type_name'];
            $video[$k]['pic'] = $v['vod_pic'];
            $video[$k]['actor'] = $v['vod_actor'];
            $video[$k]['blurb'] = $v['vod_blurb'];
            $video[$k]['type'] = $v['vod_remarks'];
            $videonum = substr_count($v['vod_play_url'], '$');

            if ($videonum > 1) {
                $url = array();
                $vipurl = explode('#', $v['vod_play_url']);
                foreach ($vipurl as $key => $value) {
                    $value = explode('$', $value);
                    $url[$key + 1] = isset($value[1]) ? $value[1] : '';
                }
            } else {
                $url = array();
                $vip = explode('$', $v['vod_play_url']);
                $url['vip'] = isset($vip[1]) ? $vip[1] : '';
            }

            $video[$k]['url'] = $url;
        }

        $json = [
            'code' => 200,
            'msg' => '一共找到' . count($data['list']) . '条资源',
            'num' => count($data['list']),
            'video' => $video,
        ];
    } else {
        $json = [
            'code' => 404,
            'msg' => '没有找到该资源',
        ];
    }

    return $json;
}
