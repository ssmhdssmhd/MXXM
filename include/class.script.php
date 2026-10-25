<?php
/**
 * 脚本解析 · 公共函数库
 *
 * 后台「脚本解析」与前台播放入口共用：
 *   - 读取/保存 save/script.config.php
 *   - 拉取用户脚本并解析 videoParseList
 *   - 按检查间隔自动检测上游仓库更新并同步线路
 */

// 直连线路默认参数
function script_direct_defaults() {
    return array(
        'site'   => 'https://wsyzy.cc',
        'api'    => 'https://api.wsyzy.net/api.php/provide/vod/',
        'player' => 'https://wsyzy.vip/m3u8/?url=',
    );
}

// 读取脚本解析配置
function script_load() {
    $file = dirname(__FILE__) . '/../save/script.config.php';
    $cfg = array();
    if (file_exists($file)) {
        include $file;
        if (isset($SCRIPT_CONFIG) && is_array($SCRIPT_CONFIG)) { $cfg = $SCRIPT_CONFIG; }
    }
    $direct = script_direct_defaults();
    $cfg += array(
        'off'         => '1',
        'name'        => '',
        'url'         => 'https://cdn.jsdelivr.net/gh/88lin/video_vip@main/video_vip.user.js',
        'repo'        => 'https://github.com/88lin/video_vip',
        'auto_sync'   => '0',
        'auto_update' => '1',
        'interval'    => '6',
        'last_check'  => '',
        'lines_hash'  => '',
        'version'     => '',
        'time'        => '',
        'direct'      => $direct,
        'lines'       => array(),
    );
    if (!isset($cfg['direct']) || !is_array($cfg['direct'])) { $cfg['direct'] = $direct; }
    $cfg['direct'] += $direct;
    if (!isset($cfg['lines']) || !is_array($cfg['lines'])) { $cfg['lines'] = array(); }
    return $cfg;
}

// 保存脚本解析配置
function script_save($cfg) {
    $file = dirname(__FILE__) . '/../save/script.config.php';
    $content = "<?php\n/* 脚本解析配置（由后台「脚本解析」页面生成，请勿手动修改格式） */\n"
        . '$SCRIPT_CONFIG = ' . var_export($cfg, true) . ";\n";
    return @file_put_contents($file, $content);
}

// 带超时的脚本拉取
function script_fetch($url, $timeout = 20) {
    if (!preg_match('~^https?://~i', $url)) { return ''; }
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
    curl_setopt($ch, CURLOPT_MAXREDIRS, 5);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 8);
    curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
    curl_setopt($ch, CURLOPT_ENCODING, '');
    curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
    $data = curl_exec($ch);
    curl_close($ch);
    return is_string($data) ? $data : '';
}

// 从用户脚本头提取名称与版本
function script_meta($js) {
    $name = ''; $ver = '';
    if (preg_match('/@name\s+([^\r\n]+)/', $js, $m)) { $name = trim($m[1]); }
    if (preg_match('/@version\s+([^\s]+)/', $js, $m)) { $ver = trim($m[1]); }
    return array($name, $ver);
}

// 提取脚本中的 videoParseList 并转为线路数组
function script_extract_lines($js) {
    $pos = strpos($js, 'videoParseList');
    if ($pos === false) { return false; }
    $open = strpos($js, '[', $pos);
    if ($open === false) { return false; }

    // 按括号配对截取数组字面量（忽略字符串内的括号）
    $len = strlen($js); $depth = 0; $inStr = false; $quote = ''; $end = -1;
    for ($i = $open; $i < $len; $i++) {
        $ch = $js[$i];
        if ($inStr) {
            if ($ch === '\\') { $i++; continue; }
            if ($ch === $quote) { $inStr = false; }
            continue;
        }
        if ($ch === '"' || $ch === "'") { $inStr = true; $quote = $ch; continue; }
        if ($ch === '[') { $depth++; }
        elseif ($ch === ']') { $depth--; if ($depth === 0) { $end = $i; break; } }
    }
    if ($end < 0) { return false; }

    $raw = substr($js, $open, $end - $open + 1);
    // 去掉尾随逗号（部分脚本的数组字面量允许尾逗号，但 JSON 不允许）
    $clean = preg_replace('/,\s*([\]}])/', '$1', $raw);
    $arr = json_decode($clean, true);
    if (!is_array($arr)) {
        // 兼容 key 未加引号 / 单引号写法
        $json = preg_replace('/([\{,])\s*([A-Za-z_][A-Za-z0-9_]*)\s*:/', '$1"$2":', $clean);
        $json = str_replace("'", '"', $json);
        $arr = json_decode($json, true);
    }
    if (!is_array($arr)) { return false; }

    $lines = array();
    foreach ($arr as $it) {
        if (!is_array($it)) { continue; }
        $name = isset($it['name']) ? trim((string)$it['name']) : '';
        if ($name === '') { continue; }
        $lines[] = array(
            'name'   => $name,
            'url'    => isset($it['url']) ? trim((string)$it['url']) : '',
            'type'   => isset($it['type']) ? trim((string)$it['type']) : '1',
            'direct' => !empty($it['wsyzy']) ? '1' : '0',
            'off'    => '1',
        );
    }
    return empty($lines) ? false : $lines;
}

// 当前时间（统一使用北京时间 YmdHis）
function script_now() {
    $d = new DateTime('now', new DateTimeZone('Asia/Shanghai'));
    return $d->format('YmdHis');
}

// YmdHis -> 时间戳
function script_time_ts($s) {
    $s = preg_replace('/\D/', '', (string)$s);
    if (strlen($s) < 14) { return 0; }
    return mktime((int)substr($s, 8, 2), (int)substr($s, 10, 2), (int)substr($s, 12, 2),
        (int)substr($s, 4, 2), (int)substr($s, 6, 2), (int)substr($s, 0, 4));
}

/**
 * 自动检测上游仓库更新并同步线路
 *
 * @param array|null $cfg   配置（为空时自动读取）
 * @param bool       $force 忽略检查间隔立即检测
 * @return array array('ok'=>bool,'changed'=>bool,'msg'=>string)
 */
function script_auto_update($cfg = null, $force = false) {
    if ($cfg === null) { $cfg = script_load(); }

    if (!$force) {
        if ((string)$cfg['auto_update'] !== '1') {
            return array('ok' => true, 'changed' => false, 'msg' => '自动更新已关闭');
        }
        $interval = max(1, (int)$cfg['interval']) * 3600;
        $last = script_time_ts($cfg['last_check']);
        if ($last > 0 && time() - $last < $interval) {
            return array('ok' => true, 'changed' => false, 'msg' => '未到检查间隔');
        }
    }

    // 检查时附加时间参数，尽量绕过 CDN 缓存
    $url = (string)$cfg['url'];
    $fetchUrl = $url . (strpos($url, '?') === false ? '?' : '&') . '_t=' . time();
    $js = script_fetch($fetchUrl, 8);
    if ($js === '') { $js = script_fetch($url, 6); }

    if ($js === '') {
        $cfg['last_check'] = script_now();
        script_save($cfg);
        return array('ok' => false, 'changed' => false, 'msg' => '拉取脚本失败，请检查服务器网络');
    }

    $lines = script_extract_lines($js);
    if ($lines === false) {
        $cfg['last_check'] = script_now();
        script_save($cfg);
        return array('ok' => false, 'changed' => false, 'msg' => '脚本中未找到解析线路');
    }

    list($name, $ver) = script_meta($js);
    $hash = md5(json_encode($lines));
    $changed = false;

    if ($hash !== (string)$cfg['lines_hash'] || $cfg['lines'] !== $lines) {
        $cfg['lines'] = $lines;
        $cfg['lines_hash'] = $hash;
        $changed = true;
    }
    if ($name !== '' && $name !== $cfg['name']) { $cfg['name'] = $name; }
    if ($ver !== '' && $ver !== $cfg['version']) { $cfg['version'] = $ver; }

    $cfg['last_check'] = script_now();
    if ($changed) { $cfg['time'] = $cfg['last_check']; }

    if (!script_save($cfg)) {
        return array('ok' => false, 'changed' => false, 'msg' => '保存失败，请检查 save/ 目录写权限');
    }

    $syncMsg = '';
    if ($changed && (string)$cfg['auto_sync'] === '1') {
        $added = script_sync_lines($cfg);
        if ($added > 0) { $syncMsg = "，已同步 {$added} 条到解析线路"; }
    }

    return array(
        'ok'      => true,
        'changed' => $changed,
        'msg'     => $changed
            ? '检测到上游更新：' . count($lines) . ' 条线路，版本 ' . ($cfg['version'] !== '' ? $cfg['version'] : '—') . $syncMsg
            : '已是最新，无需更新',
    );
}

// 把脚本线路追加到前台解析线路（按接口地址去重，直连线路不参与）
function script_sync_lines($cfg) {
    global $CONFIG;
    if (!class_exists('Main_db')) {
        $db = dirname(__FILE__) . '/class.db.php';
        if (file_exists($db)) { require_once $db; }
    }
    if (!class_exists('Main_db')) { return false; }

    $file = dirname(__FILE__) . '/../save/config.php';
    if (!file_exists($file)) { return false; }

    if (!is_array($CONFIG)) {
        include $file;
        if (!isset($CONFIG) || !is_array($CONFIG)) { return false; }
        $GLOBALS['CONFIG'] = $CONFIG;
    }
    if (!isset($CONFIG['jx_url']) || !is_array($CONFIG['jx_url'])) { $CONFIG['jx_url'] = array(); }

    $exist = array();
    foreach ($CONFIG['jx_url'] as $line) {
        $val = explode('=>', (string)$line, 2);
        if (isset($val[1])) { $exist[trim($val[1])] = 1; }
    }

    $added = 0;
    foreach ($cfg['lines'] as $it) {
        if (!is_array($it)) { continue; }
        $it += array('name' => '', 'url' => '', 'direct' => '0', 'off' => '0');
        if ((string)$it['off'] !== '1' || (string)$it['direct'] === '1' || $it['url'] === '') { continue; }
        if (isset($exist[$it['url']])) { continue; }
        $CONFIG['jx_url'][] = $it['name'] . '=>' . $it['url'];
        $exist[$it['url']] = 1;
        $added++;
    }

    if ($added > 0) {
        $GLOBALS['CONFIG'] = $CONFIG;
        if (!Main_db::save($file)) { return false; }
    }
    return $added;
}
