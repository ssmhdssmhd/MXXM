<?php
/**
 * 轮训接口核心库
 *
 * 被 LX/index.php 与后台「扩展功能 → 轮训接口」共用：
 *   - 读取 / 保存 LX/config.php（运行时配置，不入库）
 *   - 按线路顺序轮询，返回第一条成功解析出 url 的结果
 */

if (defined('LX_LIB_LOADED')) { return; }
define('LX_LIB_LOADED', 1);
//配置文件的直接访问保护标记
define('LX_INC', 1);

//配置文件路径（运行时生成，已加入 .gitignore，在线更新不会覆盖）
function lx_config_file() {
    return dirname(__FILE__) . '/config.php';
}

//单条线路默认值
function lx_line_defaults() {
    return array(
        'name'    => '',
        'type'    => 'json',
        'enabled' => '1',
        'api_url' => '',
        'timeout' => 5,
        'referer' => '',
        'form'    => array(),
        'change'  => array(),
    );
}

//空配置
function lx_config_defaults() {
    return array(
        'enabled'      => '0',
        'line_id'      => 0,
        'lines'        => array(),
        'key_sync'     => '0',
        'key_url'      => '',
        'key_interval' => 5,
        'key_value'    => '',
        'key_updated'  => 0,
        'key_expires'  => 0,
        'key_error'    => '',
    );
}

//规范化单条线路配置
function lx_config_normalize_line($line, $i = 0) {
    if (!is_array($line)) { $line = array(); }
    $out = array();
    $name = isset($line['name']) ? trim((string)$line['name']) : '';
    if ($name === '') { $name = '线路' . ($i + 1); }
    $out['name'] = function_exists('mb_substr') ? mb_substr($name, 0, 40, 'UTF-8') : substr($name, 0, 40);
    $out['type'] = (isset($line['type']) && (string)$line['type'] === 'post') ? 'post' : 'json';
    //是否启用（默认启用，兼容旧配置）
    $out['enabled'] = (!isset($line['enabled']) || (string)$line['enabled'] === '1') ? '1' : '0';
    $out['api_url'] = isset($line['api_url']) ? trim((string)$line['api_url']) : '';
    //是否参与 Key 自动同步（默认参与，兼容旧配置）
    $out['sync_key'] = (!isset($line['sync_key']) || (string)$line['sync_key'] === '1') ? '1' : '0';
    //修正常见错误写法：1.php?&key=xxx&?url= → 1.php?key=xxx&url=
    if ($out['api_url'] !== '') {
        $out['api_url'] = str_replace(array('?&', '&?'), array('?', '&'), $out['api_url']);
    }
    //GET 拼接模式且地址以 url= 结尾时，自动改用 {url} 占位符，避免视频地址中的 & 被截断
    if (strpos($out['api_url'], '{url}') === false && preg_match('~([?&]url=)$~i', $out['api_url'])) {
        $out['api_url'] = preg_replace('~([?&]url=)$~i', '${1}{url}', $out['api_url']);
    }
    $timeout = isset($line['timeout']) ? (int)$line['timeout'] : 5;
    $out['timeout'] = max(1, min(60, $timeout));
    $out['referer'] = isset($line['referer']) ? trim((string)$line['referer']) : '';

    $out['form'] = array();
    if (isset($line['form']) && is_array($line['form'])) {
        foreach ($line['form'] as $k => $v) {
            if (is_array($v) || is_object($v)) { continue; }
            $k = trim((string)$k);
            if ($k === '' || count($out['form']) >= 30) { continue; }
            $out['form'][$k] = (string)$v;
        }
    }

    $out['change'] = array();
    if (isset($line['change']) && is_array($line['change'])) {
        foreach ($line['change'] as $k => $v) {
            if (is_array($v) || is_object($v)) { continue; }
            $k = trim((string)$k);
            if ($k === '' || count($out['change']) >= 20) { continue; }
            $out['change'][$k] = (string)$v;
        }
    }

    return $out;
}

//规范化整份配置
function lx_config_normalize($cfg) {
    if (!is_array($cfg)) { $cfg = array(); }
    $out = lx_config_defaults();
    $out['enabled'] = (isset($cfg['enabled']) && (string)$cfg['enabled'] === '1') ? '1' : '0';
    $lineId = isset($cfg['line_id']) ? (int)$cfg['line_id'] : 0;
    $out['line_id'] = max(0, min(50, $lineId));
    $out['lines'] = array();
    if (isset($cfg['lines']) && is_array($cfg['lines'])) {
        $i = 0;
        foreach ($cfg['lines'] as $line) {
            if ($i >= 30) { break; }
            $out['lines'][] = lx_config_normalize_line($line, $i);
            $i++;
        }
    }

    //Key 同步：从指定接口获取 key 并自动替换线路中的 key=
    $out['key_sync'] = (isset($cfg['key_sync']) && (string)$cfg['key_sync'] === '1') ? '1' : '0';
    $out['key_url'] = isset($cfg['key_url']) ? trim((string)$cfg['key_url']) : '';
    $interval = isset($cfg['key_interval']) ? (int)$cfg['key_interval'] : 5;
    $out['key_interval'] = max(1, min(1440, $interval));
    $out['key_value'] = isset($cfg['key_value']) ? trim((string)$cfg['key_value']) : '';
    $out['key_value'] = substr($out['key_value'], 0, 64);
    $out['key_updated'] = isset($cfg['key_updated']) ? (int)$cfg['key_updated'] : 0;
    $out['key_expires'] = isset($cfg['key_expires']) ? (int)$cfg['key_expires'] : 0;
    $out['key_error'] = isset($cfg['key_error']) ? trim((string)$cfg['key_error']) : '';
    $out['key_error'] = function_exists('mb_substr') ? mb_substr($out['key_error'], 0, 200, 'UTF-8') : substr($out['key_error'], 0, 200);

    return $out;
}

//读取配置；不存在时读取默认配置
function lx_config_load() {
    $file = lx_config_file();
    $cfg = array();
    if (is_file($file)) {
        $cfg = @include $file;
    } else {
        $default = dirname(__FILE__) . '/config.default.php';
        if (is_file($default)) { $cfg = @include $default; }
    }
    return lx_config_normalize($cfg);
}

//保存配置（原子写入，失败时返回错误信息）
function lx_config_save($cfg, &$error = null) {
    $cfg = lx_config_normalize($cfg);
    $file = lx_config_file();
    $php  = "<?php\n";
    $php .= "// 轮训接口配置（后台「扩展功能 → 轮训接口」自动生成，请勿手工修改）\n";
    $php .= "if (!defined('LX_INC')) { http_response_code(404); exit; }\n";
    $php .= 'return ' . var_export($cfg, true) . ";\n";
    $tmp = $file . '.tmp';
    if (@file_put_contents($tmp, $php) === false || !@rename($tmp, $file)) {
        @unlink($tmp);
        $error = '配置写入失败，请检查 LX/ 目录写权限！';
        return false;
    }
    return true;
}

//发送 HTTP 请求并解析 JSON
function lx_http_request($url, $method, $form, $referer, $timeout, &$error = null, &$httpCode = null) {
    $error = '';
    $httpCode = 0;
    if (!function_exists('curl_init')) {
        $error = '服务器未开启 curl 扩展';
        return false;
    }
    $method = strtoupper((string)$method) === 'POST' ? 'POST' : 'GET';
    $timeout = max(1, min(60, (int)$timeout));

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, min(10, $timeout));
    curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
    curl_setopt($ch, CURLOPT_ENCODING, '');
    curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36');
    if ($referer !== '') { curl_setopt($ch, CURLOPT_REFERER, $referer); }
    if ($method === 'POST') {
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query(is_array($form) ? $form : array()));
    } else {
        curl_setopt($ch, CURLOPT_HTTPGET, true);
    }

    $response = curl_exec($ch);
    $errno = curl_errno($ch);
    $errmsg = curl_error($ch);
    $httpCode = (int)curl_getinfo($ch, CURLINFO_HTTP_CODE);
    curl_close($ch);
    if ($errno) {
        $error = '请求失败：' . $errmsg;
        return false;
    }
    if ($response === false || trim((string)$response) === '') {
        $error = '接口无返回内容' . ($httpCode >= 400 ? '（HTTP ' . $httpCode . '）' : '');
        return false;
    }

    $response = trim((string)$response);
    //去除 UTF-8 BOM
    if (substr($response, 0, 3) === "\xEF\xBB\xBF") { $response = substr($response, 3); }
    $data = json_decode($response, true);
    if (!is_array($data)) {
        $error = '接口返回不是 JSON' . ($httpCode >= 400 ? '（HTTP ' . $httpCode . '）' : '');
        return false;
    }
    return $data;
}

/**
 * 从指定接口同步 Key（如 /MXDTKEY.json），并替换线路中已有的 key=
 * @return array 同步后的配置
 */
function lx_key_sync($cfg, $force = false, &$error = null) {
    $error = '';
    $cfg = lx_config_normalize($cfg);
    if ((string)$cfg['key_sync'] !== '1') {
        return $cfg;
    }

    $url = $cfg['key_url'];
    if ($url === '' || !preg_match('~^https?://~i', $url)) {
        $error = 'Key 同步地址无效';
        return $cfg;
    }

    //未到同步间隔且已有 Key 时跳过
    $interval = (int)$cfg['key_interval'] * 60;
    if (!$force && $cfg['key_value'] !== '' && (time() - (int)$cfg['key_updated']) < $interval) {
        return $cfg;
    }

    $httpErr = '';
    $httpCode = 0;
    $data = lx_http_request($url, 'GET', array(), '', 15, $httpErr, $httpCode);
    if (!is_array($data)) {
        $error = $httpErr !== '' ? $httpErr : '获取 Key 失败';
        $cfg['key_error'] = $error;
        return $cfg;
    }

    $key = '';
    if (isset($data['key']) && is_scalar($data['key'])) {
        $key = trim((string)$data['key']);
    } elseif (isset($data['data']['key']) && is_scalar($data['data']['key'])) {
        $key = trim((string)$data['data']['key']);
    }
    if ($key === '' || !preg_match('~^[A-Za-z0-9]{6,64}$~', $key)) {
        $error = '同步地址未返回有效 key';
        $cfg['key_error'] = $error;
        return $cfg;
    }

    $cfg['key_value'] = $key;
    $cfg['key_updated'] = time();
    $cfg['key_expires'] = isset($data['expires']) ? (int)$data['expires'] : 0;
    $cfg['key_error'] = '';

    //自动替换线路接口地址中已有的 key=旧值（仅启用且勾选「同步 Key」的线路）
    foreach ($cfg['lines'] as $i => $line) {
        if ((string)$line['enabled'] === '0' || (string)$line['sync_key'] === '0') { continue; }
        $api = $line['api_url'];
        if ($api !== '' && stripos($api, 'key=') !== false && strpos($api, '{key}') === false) {
            $cfg['lines'][$i]['api_url'] = preg_replace('~([?&]key=)[^&#]*~i', '${1}' . $key, $api);
        }
    }

    $saveErr = '';
    lx_config_save($cfg, $saveErr);
    return $cfg;
}

//提取上游返回的错误提示，便于定位线路问题
function lx_upstream_hint($data) {
    if (!is_array($data)) { return ''; }
    foreach (array('msg', 'errormsg', 'message', 'error') as $k) {
        if (!empty($data[$k]) && is_scalar($data[$k])) {
            return trim((string)$data[$k]);
        }
    }
    if (isset($data['code']) && is_scalar($data['code'])) {
        return 'code=' . (string)$data['code'];
    }
    return '';
}

//请求单条线路，成功返回包含 url 的数组
function lx_request_line($line, $videoUrl, &$error = null) {
    $error = '';
    $line = lx_config_normalize_line($line);
    $api = $line['api_url'];

    if ($api === '') {
        $error = '接口地址为空';
        return false;
    }
    if (!preg_match('~^https?://~i', $api)) {
        $error = '接口地址需以 http:// 或 https:// 开头';
        return false;
    }

    $httpCode = 0;
    if ($line['type'] === 'json') {
        //简单模式：支持 {url} 占位符（自动 URL 编码），否则把视频地址直接拼接到接口地址后面
        if (strpos($api, '{url}') !== false) {
            $reqUrl = str_replace('{url}', rawurlencode($videoUrl), $api);
        } else {
            $reqUrl = $api . $videoUrl;
        }
        $data = lx_http_request($reqUrl, 'GET', array(), $line['referer'], $line['timeout'], $error, $httpCode);
    } else {
        //表单模式：POST 提交，自动填充 url 参数
        $form = $line['form'];
        $form['url'] = $videoUrl;
        $data = lx_http_request($api, 'POST', $form, $line['referer'], $line['timeout'], $error, $httpCode);
    }

    if (!is_array($data)) { return false; }
    if (!isset($data['url']) || trim((string)$data['url']) === '') {
        $hint = lx_upstream_hint($data);
        $suffix = $httpCode > 0 ? '（HTTP ' . $httpCode . '）' : '';
        $error = $hint !== '' ? ('上游返回：' . $hint . $suffix) : ('返回数据中没有 url' . $suffix);
        return false;
    }

    //返回附加字段（覆盖同名值）
    foreach ($line['change'] as $k => $v) {
        $data[$k] = $v;
    }
    return $data;
}

/**
 * 按线路轮询解析
 * @param array    $cfg      配置
 * @param string   $videoUrl 视频地址
 * @param int|null $lineId   null / 0 = 自动轮询；大于 0 = 指定线路序号
 * @return array ok/data/line/logs/msg
 */
function lx_rotate($cfg, $videoUrl, $lineId = null) {
    $lines = (isset($cfg['lines']) && is_array($cfg['lines'])) ? $cfg['lines'] : array();
    $logs  = array();

    //解析 {key} 占位符（Key 同步得到的当前 Key，仅启用且勾选「同步 Key」的线路）
    $keyVal = isset($cfg['key_value']) ? (string)$cfg['key_value'] : '';
    if ($keyVal !== '') {
        foreach ($lines as $i => $line) {
            if (isset($line['enabled']) && (string)$line['enabled'] === '0') { continue; }
            if (isset($line['sync_key']) && (string)$line['sync_key'] === '0') { continue; }
            if (isset($line['api_url']) && strpos($line['api_url'], '{key}') !== false) {
                $lines[$i]['api_url'] = str_replace('{key}', rawurlencode($keyVal), $line['api_url']);
            }
        }
    }

    if (empty($lines)) {
        return array('ok' => false, 'data' => null, 'line' => 0, 'logs' => $logs, 'msg' => '尚未配置轮训线路');
    }

    //只轮询已启用的线路
    $enabledIdx = array();
    foreach ($lines as $i => $line) {
        if (!isset($line['enabled']) || (string)$line['enabled'] === '1') { $enabledIdx[] = $i; }
    }
    if (empty($enabledIdx)) {
        return array('ok' => false, 'data' => null, 'line' => 0, 'logs' => $logs, 'msg' => '所有线路均已禁用');
    }

    if ($lineId === null) {
        $lineId = isset($cfg['line_id']) ? (int)$cfg['line_id'] : 0;
    }
    $lineId = (int)$lineId;

    if ($lineId > 0) {
        $idx = $lineId - 1;
        if (!isset($lines[$idx])) {
            return array('ok' => false, 'data' => null, 'line' => 0, 'logs' => $logs, 'msg' => '没有找到此线路配置');
        }
        if (!in_array($idx, $enabledIdx, true)) {
            return array('ok' => false, 'data' => null, 'line' => 0, 'logs' => $logs, 'msg' => '线路 ' . $lineId . ' 已禁用');
        }
        $targets = array($idx);
    } else {
        $targets = $enabledIdx;
    }

    foreach ($targets as $idx) {
        $err = '';
        $data = lx_request_line($lines[$idx], $videoUrl, $err);
        $logs[] = array(
            'line' => $idx + 1,
            'ok'   => is_array($data) ? 1 : 0,
            'msg'  => is_array($data) ? '成功' : $err,
        );
        if (is_array($data)) {
            return array('ok' => true, 'data' => $data, 'line' => $idx + 1, 'logs' => $logs, 'msg' => '');
        }
    }

    $last = end($logs);
    return array(
        'ok'   => false,
        'data' => null,
        'line' => 0,
        'logs' => $logs,
        'msg'  => ($last && $last['msg'] !== '') ? $last['msg'] : '线路无法解析到',
    );
}

/**
 * 判断解析结果类型：直链视频 / 网页播放
 * 返回 type(video|page)、ext、nested（url 中嵌套的内层地址）
 */
function lx_result_meta($data) {
    $url = isset($data['url']) ? trim((string)$data['url']) : '';
    $ext = (isset($data['ext']) && is_scalar($data['ext'])) ? strtolower(trim((string)$data['ext'])) : '';

    $type = 'video';
    if (in_array($ext, array('player', 'web', 'html', 'page'), true)) {
        $type = 'page';
    } elseif ($ext === '' && $url !== '' && !preg_match('~\.(m3u8|mp4|flv|mpd)(\?|#|$)~i', $url)) {
        $type = 'page';
    }

    $nested = '';
    $query = parse_url($url, PHP_URL_QUERY);
    if ($query) {
        parse_str($query, $params);
        foreach (array('url', 'content', 'src', 'video') as $k) {
            if (!empty($params[$k]) && is_string($params[$k]) && preg_match('~^https?://~i', $params[$k])) {
                $nested = $params[$k];
                break;
            }
        }
    }

    return array('type' => $type, 'ext' => $ext, 'nested' => $nested);
}
