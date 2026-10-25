<?php
/**
 * 脚本解析 · JSON 调用接口
 *
 * 入口：/plus/mxjx/?url=官方视频地址[&wd=片名][&ep=集数][&vid=资源ID]
 * 返回：JSON，其中 url 为可直接播放的 m3u8 地址
 *
 * 返回字段与内容可在后台「脚本解析 → 返回响应设置」中自定义。
 */

@set_time_limit(30);
error_reporting(0);
header('Content-Type: application/json; charset=utf-8');
header('Cache-Control: no-store, no-cache, must-revalidate');
header('Pragma: no-cache');

require_once dirname(__FILE__) . '/../../include/class.script.php';

function mxjx_get($k) {
    return isset($_GET[$k]) ? trim((string)$_GET[$k]) : '';
}

$cfg = script_load();

// 输出 JSON
function mxjx_output($cfg, $type, $vars) {
    if (!isset($cfg['resp'][$type]) || !is_array($cfg['resp'][$type])) {
        $defaults = script_resp_defaults();
        $cfg['resp'][$type] = $defaults[$type];
    }
    $data = script_resp_render($cfg['resp'][$type], $vars);
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
    exit;
}

function mxjx_vars($res) {
    return array(
        '{url}'   => isset($res['url']) ? (string)$res['url'] : '',
        '{title}' => isset($res['title']) ? (string)$res['title'] : '',
        '{name}'  => isset($res['name']) ? (string)$res['name'] : '',
        '{ep}'    => isset($res['ep']) ? (string)$res['ep'] : '',
        '{vid}'   => isset($res['vid']) ? (string)$res['vid'] : '',
        '{ext}'   => isset($res['ext']) ? (string)$res['ext'] : 'm3u8',
        '{code}'  => isset($res['code']) ? (string)$res['code'] : '400',
        '{msg}'   => isset($res['msg']) ? (string)$res['msg'] : '',
    );
}

// 未启用
if ((string)$cfg['off'] !== '1') {
    mxjx_output($cfg, 'error', mxjx_vars(array('code' => 403, 'msg' => '脚本解析已关闭')));
}

$url = mxjx_get('url');
$vid = mxjx_get('vid');
$wd  = mxjx_get('wd');
$ep  = (int)mxjx_get('ep');

// 没有输入链接（也没有资源 ID）时报错
if ($url === '' && $vid === '') {
    mxjx_output($cfg, 'error', mxjx_vars(array('code' => 400, 'msg' => '缺少vid参数')));
}

// 直连解析：按配置顺序尝试多条直连线路，搜索资源站并取 m3u8
$res = sp_resolve_direct(script_direct_list($cfg), $url, $wd, $vid, $ep);

mxjx_output($cfg, $res['ok'] ? 'success' : 'error', mxjx_vars($res));
