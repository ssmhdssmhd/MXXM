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

// 规范化直连线路列表（支持多条，兼容旧版单条 direct 配置）
function script_direct_list($cfg) {
    $def = script_direct_defaults();
    $out = array();
    if (isset($cfg['direct_list']) && is_array($cfg['direct_list'])) {
        foreach ($cfg['direct_list'] as $it) {
            if (!is_array($it)) { continue; }
            $row = array();
            $empty = true;
            foreach (array('site', 'api', 'player') as $k) {
                $v = isset($it[$k]) ? trim((string)$it[$k]) : '';
                if ($v !== '') { $empty = false; }
                $row[$k] = $v !== '' ? $v : $def[$k];
            }
            if ($empty) { continue; }
            $out[] = $row;
        }
    }
    if (empty($out)) {
        // 旧版配置只有一条 direct
        $it = (isset($cfg['direct']) && is_array($cfg['direct'])) ? $cfg['direct'] : array();
        $row = array();
        foreach (array('site', 'api', 'player') as $k) {
            $v = isset($it[$k]) ? trim((string)$it[$k]) : '';
            $row[$k] = $v !== '' ? $v : $def[$k];
        }
        $out[] = $row;
    }
    return $out;
}

// 读取脚本解析配置
function script_load() {
    $file = dirname(__FILE__) . '/../save/script.config.php';
    $cfg = array();
    $hasAutoKey = false;
    if (file_exists($file)) {
        include $file;
        if (isset($SCRIPT_CONFIG) && is_array($SCRIPT_CONFIG)) {
            $hasAutoKey = array_key_exists('auto_update', $SCRIPT_CONFIG);
            $cfg = $SCRIPT_CONFIG;
        }
    }
    $direct = script_direct_defaults();
    $cfg += array(
        'off'         => '1',
        'name'        => '',
        'url'         => 'https://cdn.jsdelivr.net/gh/88lin/video_vip@main/video_vip.user.js',
        'repo'        => 'https://github.com/88lin/video_vip',
        'auto_sync'   => '1',
        'auto_update' => '1',
        'interval'    => '6',
        'last_check'  => '',
        'lines_hash'  => '',
        'version'     => '',
        'time'        => '',
        'direct'      => $direct,
        'lines'       => array(),
        'scripts'     => array(),
        'manual_lines' => array(),
        'resp'        => script_resp_defaults(),
    );
    if (!isset($cfg['direct']) || !is_array($cfg['direct'])) { $cfg['direct'] = $direct; }
    $cfg['direct'] += $direct;
    // 直连线路列表：direct_list 为准，缺失时由旧版 direct 自动转换
    $cfg['direct_list'] = script_direct_list($cfg);
    $cfg['direct'] = $cfg['direct_list'][0];
    if (!isset($cfg['lines']) || !is_array($cfg['lines'])) { $cfg['lines'] = array(); }
    if (!isset($cfg['scripts']) || !is_array($cfg['scripts'])) { $cfg['scripts'] = array(); }
    if (!isset($cfg['manual_lines']) || !is_array($cfg['manual_lines'])) { $cfg['manual_lines'] = array(); }
    // 旧版单脚本配置自动迁移为「多脚本」结构
    $cfg = script_migrate_single($cfg);
    // 合并全部脚本线路与手动线路，作为前台实际使用的线路列表
    script_rebuild_lines($cfg);
    // JSON 接口返回字段：缺失或为空时使用默认值
    $defResp = script_resp_defaults();
    if (!isset($cfg['resp']) || !is_array($cfg['resp'])) { $cfg['resp'] = $defResp; }
    foreach (array('success', 'error') as $respType) {
        if (!isset($cfg['resp'][$respType]) || !is_array($cfg['resp'][$respType]) || empty($cfg['resp'][$respType])) {
            $cfg['resp'][$respType] = $defResp[$respType];
        }
    }
    // 旧版配置（无 auto_update 字段）默认开启自动同步，升级后线路可自动添加
    if (!$hasAutoKey && (string)$cfg['auto_sync'] === '0') { $cfg['auto_sync'] = '1'; }
    return $cfg;
}

// 保存脚本解析配置
function script_save($cfg) {
    $file = dirname(__FILE__) . '/../save/script.config.php';
    $content = "<?php\n/* 脚本解析配置（由后台「脚本解析」页面生成，请勿手动修改格式） */\n"
        . '$SCRIPT_CONFIG = ' . var_export($cfg, true) . ";\n";
    return @file_put_contents($file, $content);
}

/* ==================== 多脚本管理 ==================== */

// 规范化单条线路（补齐字段）
function script_line_norm($it) {
    $it = is_array($it) ? $it : array();
    $it += array('name' => '', 'url' => '', 'type' => '1', 'direct' => '0', 'off' => '1', 'popup' => '0', 'clean' => '0');
    $it['name'] = trim((string)$it['name']);
    $it['url'] = trim((string)$it['url']);
    $it['type'] = trim((string)$it['type']);
    $it['direct'] = (string)$it['direct'] === '1' ? '1' : '0';
    $it['off'] = (string)$it['off'] === '1' ? '1' : '0';
    $it['popup'] = (string)$it['popup'] === '1' ? '1' : '0';
    $it['clean'] = (string)$it['clean'] === '1' ? '1' : '0';
    return $it;
}

// 线路去重键：资源线路按 API，其他直连线路按名称，接口线路按地址
function script_line_key($it) {
    if ((string)$it['direct'] === '1') {
        if (!empty($it['resource']) && !empty($it['api'])) { return 'resource:' . $it['api']; }
        return 'direct:' . $it['name'];
    }
    if ($it['url'] === '') { return 'direct:' . $it['name']; }
    return 'url:' . $it['url'];
}

// 旧版单脚本配置迁移（无 scripts 字段时，把原脚本与其线路作为第一个脚本）
function script_migrate_single($cfg) {
    if (!empty($cfg['scripts'])) { return $cfg; }
    $lines = array();
    foreach ((array)$cfg['lines'] as $it) {
        if (!is_array($it)) { continue; }
        $it = script_line_norm($it);
        if ($it['name'] === '') { continue; }
        $lines[] = $it;
    }
    $url = trim((string)$cfg['url']);
    if ($url === '' && empty($lines)) { return $cfg; }
    $cfg['scripts'][] = array(
        'id'         => md5($url !== '' ? $url : (string)$cfg['name']),
        'name'       => (string)$cfg['name'],
        'url'        => $url,
        'repo'       => (string)$cfg['repo'],
        'version'    => (string)$cfg['version'],
        'time'       => (string)$cfg['time'],
        'last_check' => (string)$cfg['last_check'],
        'lines'      => $lines,
        'lines_hash' => md5(json_encode($lines)),
        'off'        => '1',
    );
    $cfg['manual_lines'] = array();
    return $cfg;
}

// 合并全部启用脚本的线路 + 手动线路（按线路地址去重）
function script_rebuild_lines(&$cfg) {
    $out = array();
    $seen = array();
    $push = function ($it) use (&$out, &$seen) {
        $it = script_line_norm($it);
        if ($it['name'] === '') { return; }
        $k = script_line_key($it);
        if (isset($seen[$k])) {
            // 同一接口重复出现时，只要有一条标记为弹窗专用，合并结果就按弹窗处理
            if ($it['popup'] === '1') { $out[$seen[$k]]['popup'] = '1'; }
            return;
        }
        $seen[$k] = count($out);
        $out[] = $it;
    };
    foreach ((array)$cfg['scripts'] as $sc) {
        if (!is_array($sc)) { continue; }
        $sc += array('off' => '1', 'lines' => array());
        if ((string)$sc['off'] !== '1') { continue; }
        foreach ((array)$sc['lines'] as $it) { $push($it); }
    }
    foreach ((array)$cfg['manual_lines'] as $it) { $push($it); }
    $cfg['lines'] = $out;
    return $out;
}

// 按 id 或地址查找脚本下标
function script_find_index($cfg, $sid = '', $url = '') {
    foreach ((array)$cfg['scripts'] as $i => $sc) {
        if (!is_array($sc)) { continue; }
        if ($sid !== '' && isset($sc['id']) && (string)$sc['id'] === (string)$sid) { return $i; }
        if ($url !== '' && isset($sc['url']) && trim((string)$sc['url']) === $url) { return $i; }
    }
    return -1;
}

// 保存线路表：脚本线路回写到对应脚本，其余作为手动线路
function script_apply_lines(&$cfg, $lines) {
    $map = array();
    foreach ((array)$cfg['scripts'] as $si => $sc) {
        if (!is_array($sc) || !isset($sc['lines']) || !is_array($sc['lines'])) { continue; }
        foreach ($sc['lines'] as $li => $ln) {
            $ln = script_line_norm($ln);
            $map[script_line_key($ln)][] = array($si, $li);
        }
    }
    $manual = array();
    foreach ((array)$lines as $it) {
        $it = script_line_norm($it);
        if ($it['name'] === '') { continue; }
        $k = script_line_key($it);
        if (isset($map[$k])) {
            // 同一接口可能同时存在于多个脚本，需全部同步，合并后才会生效
            foreach ($map[$k] as $pos) {
                list($si, $li) = $pos;
                $cfg['scripts'][$si]['lines'][$li]['name'] = $it['name'];
                $cfg['scripts'][$si]['lines'][$li]['url'] = $it['url'];
                $cfg['scripts'][$si]['lines'][$li]['off'] = $it['off'];
            }
            unset($map[$k]);
        } else {
            $manual[] = $it;
        }
    }
    $cfg['manual_lines'] = $manual;
}

// 启用中的线路（下标 => 线路）
function script_enabled_lines($cfg) {
    $enabled = array();
    foreach ((array)$cfg['lines'] as $k => $it) {
        if (!is_array($it)) { continue; }
        $it = script_line_norm($it);
        if ($it['off'] === '1' && $it['name'] !== '') { $enabled[$k] = $it; }
    }
    return $enabled;
}

// 计算某条线路的播放目标（直连 / iframe / 弹窗）
// 返回：ok、type（direct/iframe/popup）、url、name、code、msg、eps、cur、vid
function script_resolve_line($cfg, $line, $url, $wd = '', $vid = '', $ep = 0) {
    $line = script_line_norm($line);
    list($url, $vid) = script_repair_media_url($url, $vid);
    $out = array(
        'ok' => false, 'type' => '', 'url' => '', 'name' => $line['name'],
        'code' => 400, 'msg' => '', 'eps' => array(), 'cur' => 0, 'vid' => $vid,
    );
    if ($line['direct'] === '1') {
        $out['type'] = 'direct';
        $directs = script_direct_list($cfg);
        // RAW_APIS 资源线路使用自身 API 搜索，播放器沿用直连参数中的播放器
        if (!empty($line['resource']) && !empty($line['api'])) {
            $directs = array(array(
                'site'     => $directs[0]['site'],
                'api'      => $line['api'],
                'player'   => $directs[0]['player'],
                'resource' => '1',
            ));
        }
        $res = sp_resolve_direct($directs, $url, $wd, $vid, (int)$ep);
        if (!$res['ok']) {
            $out['code'] = (int)$res['code'];
            $out['msg'] = ($out['code'] === 400) ? '未能自动识别片名，请补充片名后重试' : $res['msg'];
            return $out;
        }
        $out['ok'] = true;
        $out['code'] = 200;
        $out['url'] = $res['play'] !== '' ? $res['play'] : $res['url'];
        $out['name'] = $res['name'];
        $out['eps'] = $res['eps'];
        $out['cur'] = (int)$res['cur'];
        $out['vid'] = $res['vid'];
        return $out;
    }
    if ($url === '') {
        $out['code'] = 400;
        $out['msg'] = '缺少官方视频地址 url 参数';
        return $out;
    }
    if ($line['popup'] === '1') {
        // 弹窗专用线路：clean 接口要求「去掉查询参数 + 不编码」
        $out['ok'] = true;
        $out['code'] = 200;
        $out['type'] = 'popup';
        $out['url'] = ($line['clean'] === '1')
            ? $line['url'] . explode('?', $url)[0]
            : $line['url'] . rawurlencode($url);
        return $out;
    }
    $out['ok'] = true;
    $out['code'] = 200;
    $out['type'] = 'iframe';
    $out['url'] = $line['url'] . $url;
    return $out;
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

// 去掉 JS 整行注释（只处理行首 //，避免破坏地址中的 ://）
function script_strip_comments($js) {
    return preg_replace('/^[ \t]*\/\/[^\r\n]*/m', '', $js);
}

// 按括号配对截取指定变量后的数组字面量（忽略字符串内的括号）
function script_js_array($js, $key) {
    $pos = strpos($js, $key);
    if ($pos === false) { return false; }
    $open = strpos($js, '[', $pos);
    if ($open === false) { return false; }

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
    return substr($js, $open, $end - $open + 1);
}

// 从脚本中提取一种线路数组（videoParseList / parseApis）并转为线路数组
function script_parse_lines($js, $key) {
    $raw = script_js_array($js, $key);
    if ($raw === false) { return false; }
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
        $type = isset($it['type']) ? trim((string)$it['type']) : '1';
        // type 含 1 表示支持内嵌播放；否则只能在新窗口打开（弹窗线路）
        $types = preg_split('/[,\s]+/', $type, -1, PREG_SPLIT_NO_EMPTY);
        $embeddable = in_array('1', $types, true);
        $lines[] = array(
            'name'   => $name,
            'url'    => isset($it['url']) ? trim((string)$it['url']) : '',
            'type'   => $type !== '' ? $type : '1',
            'direct' => (!empty($it['wsyzy']) || (isset($it['direct']) && (string)$it['direct'] === '1')) ? '1' : '0',
            'off'    => '1',
            'popup'  => (!empty($it['windowOpen']) || !$embeddable) ? '1' : '0',
            'clean'  => !empty($it['clean']) ? '1' : '0',
        );
    }
    return empty($lines) ? false : $lines;
}

// 读取简单 JS 对象中的字符串属性，不执行脚本代码
function script_js_prop($obj, $key) {
    $pattern = '~(?:^|[,\{])\s*' . preg_quote($key, '~')
        . '\s*:\s*(?:"((?:\\\\.|[^"\\\\])*)"|\'((?:\\\\.|[^\'\\\\])*)\')~s';
    if (!preg_match($pattern, $obj, $m)) { return ''; }
    $value = (isset($m[1]) && $m[1] !== '') ? $m[1] : (isset($m[2]) ? $m[2] : '');
    return trim(str_replace(array('\\"', "\\'", '\\\\'), array('"', "'", '\\'), $value));
}

// 读取 atob("...") 属性中的 Base64 字符串
function script_js_atob($obj, $key) {
    $pattern = '~(?:^|[,\{])\s*' . preg_quote($key, '~')
        . '\s*:\s*atob\(\s*(?:"([A-Za-z0-9+\/=]+)"|\'([A-Za-z0-9+\/=]+)\')\s*\)~s';
    if (!preg_match($pattern, $obj, $m)) { return ''; }
    return isset($m[1]) && $m[1] !== '' ? $m[1] : (isset($m[2]) ? $m[2] : '');
}

// 提取 RAW_APIS：{ n: "名称", u: atob("Base64 资源 API") }
function script_parse_raw_apis($js) {
    $raw = script_js_array($js, 'RAW_APIS');
    if ($raw === false || !preg_match_all('~\{[^{}]*\}~s', $raw, $objects)) { return false; }
    $lines = array();
    $seen = array();
    foreach ($objects[0] as $obj) {
        $name = script_js_prop($obj, 'n');
        if ($name === '') { continue; }
        $encoded = script_js_atob($obj, 'u');
        $api = $encoded !== '' ? base64_decode($encoded, true) : script_js_prop($obj, 'u');
        if (!is_string($api)) { continue; }
        $api = trim($api);
        if (!preg_match('~^https?://~i', $api) || !filter_var($api, FILTER_VALIDATE_URL) || isset($seen[$api])) { continue; }
        $seen[$api] = true;
        $lines[] = array(
            'name'     => $name,
            'url'      => $api,
            'api'      => $api,
            'type'     => '1',
            'direct'   => '1',
            'resource' => '1',
            'off'      => '1',
            'popup'    => '0',
            'clean'    => '0',
        );
    }
    return empty($lines) ? false : $lines;
}

// 提取脚本中的解析线路（兼容 videoParseList、parseApis 与 RAW_APIS）
function script_extract_lines($js) {
    $js = script_strip_comments($js);
    foreach (array('videoParseList', 'parseApis') as $key) {
        $lines = script_parse_lines($js, $key);
        if ($lines !== false) { return $lines; }
    }
    return script_parse_raw_apis($js);
}

// 当前时间（统一使用北京时间 YmdHis）
function script_now() {
    $d = new DateTime('now', new DateTimeZone('Asia/Shanghai'));
    return $d->format('YmdHis');
}

// YmdHis（北京时间）-> 时间戳
function script_time_ts($s) {
    $s = preg_replace('/\D/', '', (string)$s);
    if (strlen($s) < 14) { return 0; }
    $d = DateTime::createFromFormat('YmdHis', $s, new DateTimeZone('Asia/Shanghai'));
    return $d ? $d->getTimestamp() : 0;
}

// YmdHis（北京时间）-> 易读时间（无效时返回空）
function script_time_fmt($s) {
    $s = preg_replace('/\D/', '', (string)$s);
    if (strlen($s) < 14) { return ''; }
    return substr($s, 0, 4) . '-' . substr($s, 4, 2) . '-' . substr($s, 6, 2)
        . ' ' . substr($s, 8, 2) . ':' . substr($s, 10, 2);
}

// 日志时间（北京时间 H:i:s）
function script_log_time() {
    $d = new DateTime('now', new DateTimeZone('Asia/Shanghai'));
    return $d->format('H:i:s');
}

/* ==================== 用户脚本源码（MXJB） ==================== */

// 用户脚本源码目录：源码根目录 /MXJB（不存在时自动创建）
function script_src_dir() {
    static $dir = null;
    if ($dir !== null) { return $dir; }
    $path = dirname(__FILE__) . '/../MXJB';
    if (!is_dir($path)) { @mkdir($path, 0755, true); }
    $real = is_dir($path) ? realpath($path) : false;
    $dir = $real ? rtrim(str_replace('\\', '/', $real), '/') : '';
    return $dir;
}

// 生成安全的脚本文件名（仅保留中文 / 字母 / 数字 / 下划线，不使用 -）
function script_src_file($name, $id) {
    $name = preg_replace('/[^\p{Han}\p{L}\p{N}_]+/u', '_', (string)$name);
    $name = trim(preg_replace('/_+/', '_', $name), '_');
    if ($name === '') { $name = 'script'; }
    if (function_exists('mb_substr')) { $name = mb_substr($name, 0, 40, 'UTF-8'); }
    $suffix = substr(preg_replace('/[^0-9a-z]/i', '', (string)$id), 0, 8);
    return $name . ($suffix !== '' ? '+' . $suffix : '') . '.user.js';
}

// 读取 MXJB/scripts.json 清单（按 id 索引；兼容旧版纯列表格式）
function script_manifest_load($dir = '') {
    if ($dir === '') { $dir = script_src_dir(); }
    $out = array('time' => '', 'scripts' => array());
    if ($dir === '') { return $out; }
    $file = $dir . '/scripts.json';
    if (!is_file($file)) { return $out; }
    $j = json_decode((string)@file_get_contents($file), true);
    if (!is_array($j)) { return $out; }
    $list = (isset($j['scripts']) && is_array($j['scripts'])) ? $j['scripts'] : $j;
    foreach ($list as $it) {
        if (!is_array($it)) { continue; }
        $id = isset($it['id']) ? trim((string)$it['id']) : '';
        if ($id === '' && isset($it['url'])) { $id = md5(trim((string)$it['url'])); }
        if ($id === '') { continue; }
        $it['id'] = $id;
        $out['scripts'][$id] = $it;
    }
    $out['time'] = isset($j['time']) ? (string)$j['time'] : '';
    return $out;
}

// 写入 MXJB/scripts.json 清单
function script_manifest_save($dir, $scripts) {
    if ($dir === '') { return false; }
    $data = array(
        'app'     => 'MXXM',
        'type'    => 'user-script',
        'time'    => script_now(),
        'scripts' => array_values($scripts),
    );
    $json = json_encode($data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT);
    if ($json === false) { return false; }
    return @file_put_contents($dir . '/scripts.json', $json) !== false;
}

// 读取脚本的本地源码副本（优先 file 字段，其次按脚本地址匹配清单）
function script_local_source($sc) {
    $dir = script_src_dir();
    if ($dir === '') { return ''; }
    $sc = is_array($sc) ? $sc : array();
    $file = isset($sc['file']) ? basename(trim((string)$sc['file'])) : '';
    if ($file !== '' && is_file($dir . '/' . $file)) {
        return (string)@file_get_contents($dir . '/' . $file);
    }
    $url = isset($sc['url']) ? trim((string)$sc['url']) : '';
    if ($url === '') { return ''; }
    $man = script_manifest_load($dir);
    foreach ($man['scripts'] as $it) {
        if (isset($it['url']) && trim((string)$it['url']) === $url) {
            $f = isset($it['file']) ? basename(trim((string)$it['file'])) : '';
            if ($f !== '' && is_file($dir . '/' . $f)) {
                return (string)@file_get_contents($dir . '/' . $f);
            }
        }
    }
    return '';
}

// 保存脚本源码到 MXJB/ 并更新清单（返回文件名，失败返回空）
function script_save_source($sc, $js, $lines = null) {
    $dir = script_src_dir();
    if ($dir === '' || !is_string($js) || trim($js) === '') { return ''; }
    $sc = is_array($sc) ? $sc : array();
    $id = isset($sc['id']) ? trim((string)$sc['id']) : '';
    $url = isset($sc['url']) ? trim((string)$sc['url']) : '';
    if ($id === '') { $id = md5($url !== '' ? $url : (string)time()); }
    $name = isset($sc['name']) ? trim((string)$sc['name']) : '';
    $file = isset($sc['file']) ? basename(trim((string)$sc['file'])) : '';
    if ($file === '') { $file = script_src_file($name !== '' ? $name : $url, $id); }
    if (@file_put_contents($dir . '/' . $file, $js) === false) { return ''; }

    $man = script_manifest_load($dir);
    $entry = (isset($man['scripts'][$id]) && is_array($man['scripts'][$id])) ? $man['scripts'][$id] : array();
    $entry['id'] = $id;
    if ($name !== '') { $entry['name'] = $name; }
    if ($url !== '') { $entry['url'] = $url; }
    if (isset($sc['version']) && trim((string)$sc['version']) !== '') { $entry['version'] = trim((string)$sc['version']); }
    $entry['file'] = $file;
    $entry['time'] = script_now();
    if (is_array($lines)) { $entry['lines'] = $lines; }
    $man['scripts'][$id] = $entry;
    script_manifest_save($dir, $man['scripts']);
    return $file;
}

// 从脚本头提取下载 / 更新地址（用于导入本地 .user.js 时补全脚本地址）
function script_meta_url($js) {
    foreach (array('@downloadURL', '@updateURL') as $key) {
        if (preg_match('/' . preg_quote($key, '/') . '\s+([^\r\n]+)/', $js, $m)) {
            $url = trim($m[1]);
            if (preg_match('~^https?://~i', $url)) { return $url; }
        }
    }
    return '';
}

/**
 * 导出全部脚本源码与清单到 /MXJB/
 *
 * @param array $cfg  脚本配置（会补全 file 字段）
 * @param array $logs 过程日志（t / ok / msg）
 * @return int 成功导出的源码文件数
 */
function script_export(&$cfg, &$logs) {
    $logs = is_array($logs) ? $logs : array();
    $dir = script_src_dir();
    if ($dir === '') {
        $logs[] = array('t' => script_log_time(), 'ok' => 0, 'msg' => '无法创建源码目录 /MXJB/，请检查根目录写权限');
        return 0;
    }
    $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => '导出目录：/MXJB/');

    $entries = array();
    $ok = 0;
    foreach ((array)$cfg['scripts'] as $i => $sc) {
        if (!is_array($sc)) { continue; }
        $sc += array('id' => '', 'name' => '', 'url' => '', 'version' => '', 'off' => '1', 'lines' => array());
        $id = trim((string)$sc['id']);
        if ($id === '') {
            $seed = trim((string)$sc['url']) !== '' ? trim((string)$sc['url']) : (trim((string)$sc['name']) . '#' . $i);
            $id = md5($seed);
            $cfg['scripts'][$i]['id'] = $id;
        }
        $label = $sc['name'] !== '' ? $sc['name'] : ('脚本' . ($i + 1));

        $js = script_local_source($sc);
        $fromLocal = ($js !== '');
        if ($js === '' && trim((string)$sc['url']) !== '') {
            $js = script_fetch(trim((string)$sc['url']), 10);
        }

        $file = isset($sc['file']) ? basename(trim((string)$sc['file'])) : '';
        if ($file === '') { $file = script_src_file($label, $id); }
        $written = ($js !== '' && @file_put_contents($dir . '/' . $file, $js) !== false);
        if ($written) {
            $cfg['scripts'][$i]['file'] = $file;
            $ok++;
            $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => $label . '：已导出 ' . $file . ($fromLocal ? '（本地副本）' : '（远程拉取）'));
        } else {
            $file = '';
            $logs[] = array('t' => script_log_time(), 'ok' => 2, 'msg' => $label . '：源码不可用（远程与本地均获取失败），仅导出配置');
        }
        $entries[$id] = array(
            'id'      => $id,
            'name'    => $sc['name'],
            'url'     => $sc['url'],
            'version' => $sc['version'],
            'off'     => (string)$sc['off'] === '1' ? '1' : '0',
            'file'    => $file,
            'lines'   => (array)$sc['lines'],
            'time'    => script_now(),
        );
    }
    if (script_manifest_save($dir, $entries)) {
        $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => '已写入清单 scripts.json（' . count($entries) . ' 个脚本）');
    } else {
        $logs[] = array('t' => script_log_time(), 'ok' => 0, 'msg' => '清单 scripts.json 写入失败');
    }
    return $ok;
}

/**
 * 从 /MXJB/ 导入脚本（scripts.json 清单 + 目录内未被引用的 .user.js）
 *
 * @param array $cfg  脚本配置（导入后回写）
 * @param array $logs 过程日志（t / ok / msg）
 * @return int 处理成功的脚本数
 */
function script_import(&$cfg, &$logs) {
    $logs = is_array($logs) ? $logs : array();
    $dir = script_src_dir();
    if ($dir === '') {
        $logs[] = array('t' => script_log_time(), 'ok' => 0, 'msg' => '无法创建源码目录 /MXJB/，请检查根目录写权限');
        return 0;
    }

    $man = script_manifest_load($dir);
    $cands = $man['scripts'];

    // 扫描目录内未被清单引用的 .user.js
    $used = array();
    foreach ($cands as $it) {
        if (!empty($it['file'])) { $used[basename((string)$it['file'])] = 1; }
    }
    $files = glob($dir . '/*.user.js');
    if (is_array($files)) {
        foreach ($files as $path) {
            $base = basename($path);
            if (isset($used[$base])) { continue; }
            $js = (string)@file_get_contents($path);
            if (trim($js) === '') { continue; }
            $url = script_meta_url($js);
            list($name, $ver) = script_meta($js);
            $id = md5($url !== '' ? $url : 'local:' . $base);
            if (isset($cands[$id])) { continue; }
            $cands[$id] = array(
                'id'      => $id,
                'name'    => $name !== '' ? $name : pathinfo($base, PATHINFO_FILENAME),
                'url'     => $url,
                'version' => $ver,
                'off'     => '1',
                'file'    => $base,
            );
        }
    }
    if (empty($cands)) {
        $logs[] = array('t' => script_log_time(), 'ok' => 2, 'msg' => 'MXJB/ 目录为空，请放入 .user.js 或 scripts.json 后重试');
        return 0;
    }
    $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => '导入目录：/MXJB/，发现 ' . count($cands) . ' 个候选脚本');

    $count = 0;
    foreach ($cands as $id => $it) {
        $it = is_array($it) ? $it : array();
        $url = isset($it['url']) ? trim((string)$it['url']) : '';
        $file = isset($it['file']) ? basename(trim((string)$it['file'])) : '';
        $lines = (isset($it['lines']) && is_array($it['lines'])) ? $it['lines'] : array();
        $label = isset($it['name']) ? trim((string)$it['name']) : '';
        if ($label === '') { $label = $url !== '' ? $url : $file; }

        // 清单里没有线路时，从本地源码解析
        if (empty($lines) && $file !== '' && is_file($dir . '/' . $file)) {
            $js = (string)@file_get_contents($dir . '/' . $file);
            if ($js !== '') {
                $ext = script_extract_lines($js);
                if ($ext !== false) { $lines = $ext; }
            }
        }
        if (empty($lines)) {
            $logs[] = array('t' => script_log_time(), 'ok' => 2, 'msg' => $label . '：未解析到线路，已跳过');
            continue;
        }

        $entry = array(
            'id'         => $id,
            'name'       => $label,
            'url'        => $url,
            'version'    => isset($it['version']) ? trim((string)$it['version']) : '',
            'lines'      => $lines,
            'lines_hash' => md5(json_encode($lines)),
            'off'        => (isset($it['off']) && (string)$it['off'] === '0') ? '0' : '1',
            'time'       => script_now(),
            'last_check' => script_now(),
        );
        if ($file !== '') { $entry['file'] = $file; }

        $idx = script_find_index($cfg, $id, $url);
        if ($idx >= 0) {
            $cfg['scripts'][$idx] = array_merge($cfg['scripts'][$idx], $entry);
            $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => $label . '：已更新（' . count($lines) . ' 条线路）');
        } else {
            $cfg['scripts'][] = $entry;
            $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => $label . '：已导入（' . count($lines) . ' 条线路）');
        }
        $count++;
    }
    return $count;
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

    if (!$force && (string)$cfg['auto_update'] !== '1') {
        return array('ok' => true, 'changed' => false, 'msg' => '自动更新已关闭');
    }

    $interval = max(1, (int)$cfg['interval']) * 3600;
    $changed = false;
    $checked = 0;
    $failed = 0;

    foreach ($cfg['scripts'] as $i => $sc) {
        if (!is_array($sc)) { continue; }
        $sc += array('url' => '', 'lines' => array(), 'last_check' => '', 'lines_hash' => '');
        $url = trim((string)$sc['url']);
        if ($url === '') { continue; }
        $last = script_time_ts($sc['last_check']);
        // 已有线路时才按间隔跳过；线路为空则立即检测一次
        if (!$force && !empty($sc['lines']) && $last > 0 && time() - $last < $interval) { continue; }
        $checked++;

        // 检查时附加时间参数，尽量绕过 CDN 缓存
        $fetchUrl = $url . (strpos($url, '?') === false ? '?' : '&') . '_t=' . time();
        $js = script_fetch($fetchUrl, 8);
        if ($js === '') { $js = script_fetch($url, 6); }
        if ($js === '') {
            $cfg['scripts'][$i]['last_check'] = script_now();
            $failed++;
            continue;
        }

        $lines = script_extract_lines($js);
        if ($lines === false) {
            $cfg['scripts'][$i]['last_check'] = script_now();
            $failed++;
            continue;
        }

        list($name, $ver) = script_meta($js);
        $hash = md5(json_encode($lines));
        if ($hash !== (string)$sc['lines_hash'] || $sc['lines'] !== $lines) {
            $cfg['scripts'][$i]['lines'] = $lines;
            $cfg['scripts'][$i]['lines_hash'] = $hash;
            $changed = true;
        }
        if ($name !== '') { $cfg['scripts'][$i]['name'] = $name; }
        if ($ver !== '') { $cfg['scripts'][$i]['version'] = $ver; }
        $cfg['scripts'][$i]['last_check'] = script_now();
        $cfg['scripts'][$i]['time'] = $cfg['scripts'][$i]['last_check'];
    }

    script_rebuild_lines($cfg);
    $cfg['last_check'] = script_now();
    $cfg['lines_hash'] = md5(json_encode($cfg['lines']));
    if (!script_save($cfg)) {
        return array('ok' => false, 'changed' => false, 'msg' => '保存失败，请检查 save/ 目录写权限');
    }

    $syncMsg = '';
    if ((string)$cfg['auto_sync'] === '1' && !empty($cfg['lines'])) {
        $added = script_sync_lines($cfg);
        if ($added > 0) { $syncMsg = "，已同步 {$added} 条到解析线路"; }
    }

    if ($checked === 0) {
        return array('ok' => true, 'changed' => false, 'msg' => '未到检查间隔' . $syncMsg);
    }

    $msg = $changed
        ? '检测到上游更新：' . count($cfg['lines']) . ' 条线路'
        : '已是最新';
    if ($failed > 0) { $msg .= "，{$failed} 个脚本拉取失败"; }
    return array(
        'ok'      => $failed < $checked,
        'changed' => $changed,
        'msg'     => $msg . $syncMsg,
    );
}

// 合并全部接口：把脚本线路按接口地址去重后并入解析线路列表（不写盘）
function script_jx_merge($cfg, $jx_url) {
    if (!is_array($jx_url)) { $jx_url = array(); }
    if (!isset($cfg['lines']) || !is_array($cfg['lines'])) { return $jx_url; }
    $exist = array();
    foreach ($jx_url as $line) {
        $val = explode('=>', (string)$line, 2);
        if (isset($val[1])) { $exist[trim($val[1])] = 1; }
    }
    foreach ($cfg['lines'] as $it) {
        if (!is_array($it)) { continue; }
        $it += array('name' => '', 'url' => '', 'direct' => '0', 'off' => '0', 'popup' => '0');
        // 弹窗专用接口不支持 iframe 内嵌，不并入前台解析线路
        if ((string)$it['off'] !== '1' || (string)$it['direct'] === '1' || (string)$it['popup'] === '1' || trim((string)$it['url']) === '') { continue; }
        $url = trim((string)$it['url']);
        if (isset($exist[$url])) { continue; }
        $jx_url[] = (($it['name'] !== '') ? $it['name'] : $url) . '=>' . $url;
        $exist[$url] = 1;
    }
    return $jx_url;
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
        $it += array('name' => '', 'url' => '', 'direct' => '0', 'off' => '0', 'popup' => '0');
        // 弹窗专用接口不支持 iframe 内嵌，不并入前台解析线路
        if ((string)$it['off'] !== '1' || (string)$it['direct'] === '1' || (string)$it['popup'] === '1' || $it['url'] === '') { continue; }
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

/* ==================== JSON 接口返回字段 ==================== */

// 默认返回字段（成功 / 错误）
function script_resp_defaults() {
    return array(
        'success' => array(
            array('key' => 'code',  'value' => '200'),
            array('key' => 'msg',   'value' => 'success'),
            array('key' => 'url',   'value' => '{url}'),
            array('key' => 'title', 'value' => '{title}'),
            array('key' => 'ext',   'value' => '{ext}'),
        ),
        'error' => array(
            array('key' => 'code', 'value' => '{code}'),
            array('key' => 'msg',  'value' => '{msg}'),
        ),
    );
}

// 按配置字段渲染返回数组（支持占位符）
function script_resp_render($fields, $vars) {
    $out = array();
    if (!is_array($fields)) { return $out; }
    foreach ($fields as $f) {
        if (!is_array($f)) { continue; }
        $key = isset($f['key']) ? trim((string)$f['key']) : '';
        if ($key === '') { continue; }
        $val = isset($f['value']) ? (string)$f['value'] : '';
        $val = strtr($val, $vars);
        // 纯数字自动转为数字类型，保持 code 等字段为 JSON 数字
        if (preg_match('/^-?\d+$/', $val)) {
            $val = (int)$val;
        } elseif (preg_match('/^-?\d+\.\d+$/', $val)) {
            $val = (float)$val;
        }
        $out[$key] = $val;
    }
    return $out;
}

// 收集表单提交的返回字段（key/value 数组）
function script_resp_collect($keys, $vals) {
    $out = array();
    $keys = is_array($keys) ? $keys : array();
    $vals = is_array($vals) ? $vals : array();
    foreach ($keys as $i => $k) {
        $k = trim((string)$k);
        $v = isset($vals[$i]) ? (string)$vals[$i] : '';
        if ($k === '') { continue; }
        $out[] = array('key' => $k, 'value' => $v);
    }
    return $out;
}

/* ==================== 资源站搜索与直连解析 ==================== */

// 带超时的网页抓取（可指定 User-Agent）
function sp_http($url, $timeout = 12, $ua = '') {
    if (!preg_match('~^https?://~i', $url)) { return ''; }
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
    curl_setopt($ch, CURLOPT_MAXREDIRS, 5);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 6);
    curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
    curl_setopt($ch, CURLOPT_ENCODING, '');
    curl_setopt($ch, CURLOPT_AUTOREFERER, true);
    if ($ua === '') { $ua = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'; }
    curl_setopt($ch, CURLOPT_USERAGENT, $ua);
    $data = curl_exec($ch);
    curl_close($ch);
    return is_string($data) ? $data : '';
}

// 清洗片名：去掉站点名与常见后缀
function sp_clean_title($t) {
    $t = trim(preg_replace('/\s+/u', ' ', (string)$t));
    if ($t === '') { return ''; }
    $sites = '爱奇艺|腾讯视频|腾讯|优酷|芒果TV|芒果|哔哩哔哩|bilibili|B站|搜狐视频|搜狐|乐视视频|乐视|PPTV聚力|PPTV|1905电影网|1905|土豆网|土豆|AcFun|西瓜视频|咪咕视频|咪咕';
    $t = preg_replace('/[\s\-_：:|｜，,。·]*(?:' . $sites . ')[\s\-_：:|｜，,。·]*/u', ' ', $t);
    $t = preg_replace('/在线观看|高清正版|免费观看|完整版|正片|预告|全集|更新至\d+[集期话]/u', ' ', $t);
    $t = trim(preg_replace('/\s+/u', ' ', $t));
    if ($t === '') { return ''; }
    $parts = preg_split('/[\s\-_（(｜|]/u', $t);
    foreach ($parts as $p) {
        $p = trim($p);
        if (mb_strlen($p, 'UTF-8') >= 2) { return $p; }
    }
    return $t;
}

// 提取指定 meta 标签的 content（属性顺序无关）
function sp_meta_content($html, $key) {
    if (!preg_match_all('~<meta\s+[^>]*>~i', $html, $tags)) { return ''; }
    $key = preg_quote($key, '~');
    foreach ($tags[0] as $tag) {
        if (!preg_match('~(?:property|name|itemprop)\s*=\s*["\']' . $key . '["\']~i', $tag)) { continue; }
        if (preg_match('~content\s*=\s*["\']([^"\']*)~i', $tag, $m)) {
            return html_entity_decode($m[1], ENT_QUOTES, 'UTF-8');
        }
    }
    return '';
}

// 修复未编码的官方链接：把被 PHP 拆成 vid 参数的视频 ID 补回链接
// （如 ?url=https://m.v.qq.com/...&vid=r0047gdjpw6，vid 非纯数字即不是资源站 ID）
function script_repair_media_url($url, $vid) {
    $url = trim((string)$url);
    $vid = trim((string)$vid);
    if ($vid !== '' && !ctype_digit($vid)) {
        if ($url !== '' && stripos($url, 'vid=') === false) {
            $url .= (strpos($url, '?') === false ? '?' : '&') . 'vid=' . rawurlencode($vid);
        }
        $vid = '';
    }
    return array($url, $vid);
}

// 腾讯视频页面为 JS 渲染、无 og:title，改用 getinfo 接口按视频 ID 取标题
function sp_tencent_title($url) {
    if (!preg_match('~^https?://(?:[a-z0-9-]+\.)*v\.qq\.com/~i', $url)) { return ''; }
    $vid = '';
    if (preg_match('~[?&]vid=([A-Za-z0-9]{8,})~i', $url, $m)) {
        // 移动端播放页：/x/m/play?cid=xxx&vid=xxxx
        $vid = $m[1];
    } elseif (preg_match('~/([A-Za-z0-9]{8,})\.html~', $url, $m)) {
        $vid = $m[1];
    }
    if ($vid === '') { return ''; }
    $api = 'https://vv.video.qq.com/getinfo?' . http_build_query(array(
        'vids'     => $vid,
        'platform' => '101001',
        'charge'   => '0',
        'otype'    => 'json',
    ));
    $json = trim(sp_http($api, 10));
    $json = preg_replace('~^QZOutputJson=~', '', $json);
    $json = rtrim($json, "; \r\n");
    if ($json === '') { return ''; }
    $j = json_decode($json, true);
    $t = (is_array($j) && isset($j['vl']['vi'][0]['ti'])) ? (string)$j['vl']['vi'][0]['ti'] : '';
    if ($t === '' && preg_match('/"ti"\s*:\s*"([^"]+)"/u', $json, $mm)) { $t = $mm[1]; }
    return sp_clean_title($t);
}

// 从页面 HTML 提取并清洗片名
function sp_title_from_html($html) {
    if ($html === '') { return ''; }
    $t = sp_meta_content($html, 'og:title');
    if ($t === '') { $t = sp_meta_content($html, 'title'); }
    if ($t === '' && preg_match('~<title[^>]*>(.*?)</title>~is', $html, $m)) {
        $t = html_entity_decode(strip_tags($m[1]), ENT_QUOTES, 'UTF-8');
    }
    return sp_clean_title($t);
}

// 从官方页面提取片名（og:title / title）
function sp_page_title($url) {
    // 腾讯视频优先走接口（页面标题是站点名，无法识别片名）
    $t = sp_tencent_title($url);
    if ($t !== '') { return $t; }
    $t = sp_title_from_html(sp_http($url, 10));
    if ($t !== '') { return $t; }
    // 腾讯 / 爱奇艺等站点仅对搜索引擎返回带片名的 HTML，用爬虫 UA 重试
    return sp_title_from_html(sp_http($url, 10, 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)'));
}

// 匹配度打分：精确 > 前缀 > 包含 > 反向包含
function sp_score($name, $wd) {
    if ($name === $wd) { return 4; }
    if (strpos($name, $wd) === 0) { return 3; }
    if (strpos($name, $wd) !== false) { return 2; }
    if (mb_strlen($wd, 'UTF-8') >= 2 && strpos($wd, $name) !== false) { return 1; }
    return 0;
}

// 搜索资源站候选
function sp_search($site, $wd) {
    $q = rtrim($site, '/') . '/index.php/ajax/suggest?' . http_build_query(array('mid' => 1, 'wd' => $wd));
    $json = sp_http($q, 10);
    $j = json_decode($json, true);
    $list = (is_array($j) && !empty($j['list']) && is_array($j['list'])) ? $j['list'] : array();
    $out = array();
    foreach ($list as $it) {
        if (!isset($it['id'], $it['name'])) { continue; }
        $out[] = array('id' => (int)$it['id'], 'name' => (string)$it['name']);
    }
    usort($out, function ($a, $b) use ($wd) {
        return sp_score($b['name'], $wd) - sp_score($a['name'], $wd);
    });
    return $out;
}

// 通过资源 API 搜索候选（ac=list，失败时用 ac=detail 兜底）
function sp_api_search($api, $wd) {
    $out = array();
    foreach (array('list', 'detail') as $ac) {
        $q = rtrim($api, '/') . '/?' . http_build_query(array('ac' => $ac, 'wd' => $wd));
        $j = json_decode(sp_http($q, 10), true);
        $list = (is_array($j) && !empty($j['list']) && is_array($j['list'])) ? $j['list'] : array();
        foreach (array_slice($list, 0, 60) as $it) {
            if (!is_array($it) || empty($it['vod_id']) || !isset($it['vod_name'])) { continue; }
            $out[] = array('id' => (int)$it['vod_id'], 'name' => (string)$it['vod_name']);
        }
        if (!empty($out)) { break; }
    }
    usort($out, function ($a, $b) use ($wd) {
        return sp_score($b['name'], $wd) - sp_score($a['name'], $wd);
    });
    return $out;
}

// 取资源详情中的剧集列表
function sp_episodes($api, $vid, &$vodName = null, $last = false) {
    $q = rtrim($api, '/') . '/?' . http_build_query(array('ac' => 'detail', 'ids' => $vid));
    $json = sp_http($q, 12);
    $j = json_decode($json, true);
    $vod = (is_array($j) && !empty($j['list'][0]) && is_array($j['list'][0])) ? $j['list'][0] : array();
    if ($vodName !== null) { $vodName = isset($vod['vod_name']) ? trim((string)$vod['vod_name']) : ''; }
    $play = isset($vod['vod_play_url']) ? (string)$vod['vod_play_url'] : '';
    if ($play === '') { return array(); }
    $groups = explode('$$$', $play);
    $group = $last ? end($groups) : $groups[0];
    $eps = array();
    foreach (explode('#', $group) as $seg) {
        $i = strpos($seg, '$');
        $name = $i > 0 ? trim(substr($seg, 0, $i)) : '';
        $link = $i > 0 ? trim(substr($seg, $i + 1)) : trim($seg);
        if (!preg_match('~^https?://~i', $link)) { continue; }
        $eps[] = array(
            'name' => $name !== '' ? $name : ('第' . (count($eps) + 1) . '集'),
            'url'  => $link,
        );
    }
    return $eps;
}

/**
 * 直连解析：官方地址 / 片名 / 资源ID -> m3u8
 *
 * @param array $directs 直连线路（单条或列表，按顺序尝试）
 * @return array ok/code/msg/url/play/title/name/ep/vid/ext/eps/cur
 */
function sp_resolve_direct($directs, $url, $wd, $vid, $ep) {
    $out = array(
        'ok' => false, 'code' => 400, 'msg' => '缺少vid参数',
        'url' => '', 'play' => '', 'title' => '', 'name' => '', 'ep' => '', 'vid' => '', 'ext' => 'm3u8',
        'eps' => array(), 'cur' => 0,
    );
    $def = script_direct_defaults();
    $list = array();
    if (is_array($directs)) {
        if (isset($directs['site']) || isset($directs['api']) || isset($directs['player'])) {
            $list[] = $directs;
        } else {
            foreach ($directs as $it) {
                if (is_array($it)) { $list[] = $it; }
            }
        }
    }
    if (empty($list)) { $list[] = $def; }

    list($url, $vid) = script_repair_media_url($url, $vid);
    $title = sp_clean_title($wd);
    if ($title === '' && $url !== '') { $title = sp_page_title($url); }
    if ($title === '' && $vid === '') {
        $out['code'] = 400;
        $out['msg'] = '未能识别片名，请传入 wd 参数';
        return $out;
    }

    $lastCode = 404;
    $lastMsg = '资源站未搜索到影片';
    foreach ($list as $direct) {
        if (!is_array($direct)) { continue; }
        $direct += $def;
        foreach (array('site', 'api', 'player') as $k) {
            if (!isset($direct[$k]) || trim((string)$direct[$k]) === '') { $direct[$k] = $def[$k]; }
        }

        $tryVid = $vid;
        $tryTitle = $title;
        if ($tryVid === '') {
            $cands = !empty($direct['resource'])
                ? sp_api_search($direct['api'], $tryTitle)
                : sp_search($direct['site'], $tryTitle);
            if (empty($cands)) {
                $lastCode = 404;
                $lastMsg = '资源站未搜索到影片';
                continue;
            }
            $tryVid = (string)$cands[0]['id'];
            $tryTitle = $cands[0]['name'];
        }

        $vodName = '';
        $eps = sp_episodes($direct['api'], $tryVid, $vodName, !empty($direct['resource']));
        if (empty($eps)) {
            $lastCode = 404;
            $lastMsg = '资源详情获取失败';
            continue;
        }
        if ($tryTitle === '' && $vodName !== '') { $tryTitle = $vodName; }

        $cur = min(max(0, (int)$ep), count($eps) - 1);
        $src = $eps[$cur]['url'];
        $ext = 'm3u8';
        if (preg_match('/\.([a-z0-9]{2,5})(?:\?|$)/i', $src, $m)) {
            $candidate = strtolower($m[1]);
            if (in_array($candidate, array('mp4', 'flv', 'mkv', 'ts', 'm3u8'), true)) { $ext = $candidate; }
        }

        $out['ok'] = true;
        $out['code'] = 200;
        $out['msg'] = 'success';
        $out['url'] = $src;
        $out['play'] = $direct['player'] . rawurlencode($src);
        $out['name'] = $tryTitle;
        $out['title'] = $tryTitle;
        $out['ep'] = $eps[$cur]['name'];
        $out['vid'] = (string)$tryVid;
        $out['ext'] = $ext;
        $out['eps'] = $eps;
        $out['cur'] = $cur;
        return $out;
    }

    $out['code'] = $lastCode;
    $out['msg'] = $lastMsg;
    return $out;
}

// ===== 独立 PHP 接口（域名/1.php?url=）=====
// 配置保存在 save/kanju.config.php（含可选 Token，不入库）
function script_endpoint_defaults() {
    return array(
        'off'             => '1',
        'firewall'        => '1',
        'repo'            => 'ssmhdssmhd/kanju-api',
        'branch'          => 'main',
        'file'            => '1.php',
        'jb_files'        => array(),
        'token'           => '',
        'access_key'      => '',
        'dynamic_off'     => '1',
        'dynamic_hours'   => 1,
        'dynamic_key'     => '',
        'dynamic_expires' => 0,
        'synced'          => '',
        'sync_msg'        => '',
    );
}

function script_endpoint_config_path() {
    return dirname(__FILE__) . '/../save/kanju.config.php';
}

function script_endpoint_load() {
    $cfg = script_endpoint_defaults();
    $file = script_endpoint_config_path();
    if (is_file($file)) {
        $saved = include $file;
        if (is_array($saved)) { $cfg = array_merge($cfg, $saved); }
    }
    return $cfg;
}

function script_endpoint_save($cfg) {
    $path = script_endpoint_config_path();
    $dir  = dirname($path);
    if (!is_dir($dir)) { @mkdir($dir, 0755, true); }
    $out = "<?php\n// 独立接口配置（含可选 GitHub Token，请勿提交到公开仓库）\nreturn " . var_export($cfg, true) . ";\n";
    if (@file_put_contents($path, $out, LOCK_EX) === false) { return false; }
    @chmod($path, 0600);
    return true;
}

// 生成指定长度的随机字母数字密钥，排除 0/O、1/l/I 等易混淆字符
function script_endpoint_random_key($length = 18) {
    $chars = 'ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz23456789';
    $max = strlen($chars) - 1;
    $key = '';
    for ($i = 0; $i < $length; $i++) {
        $key .= $chars[random_int(0, $max)];
    }
    return $key;
}

// 动态密钥：固定密钥只初始化一次；临时密钥按设置周期（0-24 小时）到期后生成新的 18 位随机字符
// 0 表示不自动更换；1 为每小时；24 为每天；默认 1 小时
// 无需计划任务，后台打开扩展页或 /1.php 收到请求时都会自动检查是否到期
function script_endpoint_hourly_sync($cfg, $force = false, &$error = null) {
    $error = '';
    if (!isset($cfg['dynamic_off']) || (string)$cfg['dynamic_off'] !== '1') { return $cfg; }

    $before = $cfg;
    $changed = false;
    if (trim((string)(isset($cfg['access_key']) ? $cfg['access_key'] : '')) === '') {
        $cfg['access_key'] = script_endpoint_random_key(18);
        $changed = true;
    }

    $hours = isset($cfg['dynamic_hours']) ? (int)$cfg['dynamic_hours'] : 1;
    if ($hours < 0) { $hours = 0; }
    if ($hours > 24) { $hours = 24; }

    $key = isset($cfg['dynamic_key']) ? (string)$cfg['dynamic_key'] : '';
    $expires = isset($cfg['dynamic_expires']) ? (int)$cfg['dynamic_expires'] : 0;
    $key_valid = preg_match('/^[A-Za-z0-9]{18}$/', $key) === 1;

    if ($hours === 0) {
        // 0 小时：不自动更换，仅在缺失时生成一次
        if ($force || !$key_valid) {
            $cfg['dynamic_key'] = script_endpoint_random_key(18);
            $cfg['dynamic_expires'] = 0;
            $changed = true;
        } elseif ($expires !== 0) {
            $cfg['dynamic_expires'] = 0;
            $changed = true;
        }
    } elseif ($force || !$key_valid || $expires <= time()) {
        $cfg['dynamic_key'] = script_endpoint_random_key(18);
        $cfg['dynamic_expires'] = time() + $hours * 3600;
        $changed = true;
    }

    if ($changed && !script_endpoint_save($cfg)) {
        $error = '访问密钥保存失败，请检查 save/ 目录写权限';
        return $before;
    }
    return $cfg;
}

function script_endpoint_remote_path() {
    return dirname(__FILE__) . '/../kanju/remote.php';
}

// kanju-api 仓库 JB/ 目录下可同步的数字接口（后台复选框使用）
function script_endpoint_jb_ids() {
    return array(
        '1118', '1254', '1258', '1655', '2149', '2589', '271', '3299', '4107', '420',
        '52', '5716', '5739', '5855', '61', '7648', '7883', '8035', '947',
    );
}

function script_endpoint_jb_dir() {
    return dirname(__FILE__) . '/../kanju/jb';
}

function script_endpoint_jb_path($id) {
    return script_endpoint_jb_dir() . '/' . $id . '.php';
}

function script_endpoint_status() {
    $file = script_endpoint_remote_path();
    if (!is_file($file)) {
        return array('exists' => false, 'size' => 0, 'time' => '');
    }
    return array(
        'exists' => true,
        'size'   => filesize($file),
        'time'   => date('Y-m-d H:i:s', filemtime($file)),
    );
}

// 远程代码缺失时的兜底：直接返回未同步提示（账号密码不写入公开仓库）
function script_endpoint_fallback() {
    return "<?php\n"
        . "header('Content-Type: application/json; charset=utf-8');\n"
        . "echo json_encode(array('code' => 503, 'msg' => '接口代码未同步，请到后台脚本设置同步 kanju-api 代码'), JSON_UNESCAPED_UNICODE);\n";
}

/* ===== PHP 7.0 兼容处理 =====
 * kanju-api 源码使用了 PHP 7.1+ 语法（?string / void / 箭头函数 / 短数组解构）
 * 与 PHP 8 函数（str_contains），在 PHP 7.0 服务器上会直接解析失败。
 * 写入 kanju/remote.php 前统一降级，保证同步下来的代码可以直接运行。
 */

// 箭头函数 fn(...) => 表达式 转为 function (...) { return 表达式; }
function script_endpoint_arrow_to_closure($code) {
    $len = strlen($code);
    $out = '';
    $pos = 0;
    while (($p = strpos($code, 'fn', $pos)) !== false) {
        $before = $p > 0 ? $code[$p - 1] : '';
        $after  = ($p + 2 < $len) ? $code[$p + 2] : '';
        if (($before !== '' && preg_match('/[A-Za-z0-9_$]/', $before)) || ($after !== '' && preg_match('/[A-Za-z0-9_]/', $after))) {
            $out .= substr($code, $pos, $p + 2 - $pos);
            $pos = $p + 2;
            continue;
        }
        // 参数括号
        $i = $p + 2;
        while ($i < $len && ($code[$i] === ' ' || $code[$i] === "\t")) { $i++; }
        if ($i >= $len || $code[$i] !== '(') {
            $out .= substr($code, $pos, $p + 2 - $pos);
            $pos = $p + 2;
            continue;
        }
        $depth = 0;
        $j = $i;
        for (; $j < $len; $j++) {
            if ($code[$j] === '(') { $depth++; }
            elseif ($code[$j] === ')') { $depth--; if ($depth === 0) { break; } }
        }
        $args = substr($code, $i + 1, $j - $i - 1);
        $k = $j + 1;
        while ($k < $len && ($code[$k] === ' ' || $code[$k] === "\t" || $code[$k] === "\n")) { $k++; }
        if ($k + 1 >= $len || substr($code, $k, 2) !== '=>') {
            $out .= substr($code, $pos, $p + 2 - $pos);
            $pos = $p + 2;
            continue;
        }
        // 表达式结束位置：括号深度为 0 时的 , ; )
        $e = $k + 2;
        $d = 0;
        $quote = '';
        for (; $e < $len; $e++) {
            $ch = $code[$e];
            if ($quote !== '') {
                if ($ch === '\\') { $e++; continue; }
                if ($ch === $quote) { $quote = ''; }
                continue;
            }
            if ($ch === "'" || $ch === '"') { $quote = $ch; continue; }
            if ($ch === '(' || $ch === '[' || $ch === '{') { $d++; continue; }
            if ($ch === ')' || $ch === ']' || $ch === '}') {
                if ($d === 0) { break; }
                $d--;
                continue;
            }
            if ($d === 0 && ($ch === ',' || $ch === ';')) { break; }
        }
        $expr = trim(substr($code, $k + 2, $e - $k - 2));
        $out .= substr($code, $pos, $p - $pos);
        $out .= 'function (' . $args . ') { return (' . $expr . '); }';
        $pos = $e;
    }
    $out .= substr($code, $pos);
    return $out;
}

// 把 PHP 7.1+ / PHP 8 语法降级为 PHP 7.0 可解析写法
function script_endpoint_php70_compat($code) {
    if (stripos($code, '<?php') === false) { return $code; }

    // 可空参数类型：?string $body → string $body（带默认值 null 时 PHP 7.0 即视为可空）
    $code = preg_replace('/\?\s*(string|int|float|bool|array|object|iterable|callable|self)\s+(&\s*)?(\$[A-Za-z_])/', '$1 $2$3', $code);
    // 可空返回类型：function f(): ?array → function f()
    $code = preg_replace('/\)\s*:\s*\?\s*(string|int|float|bool|array|object|iterable|callable|self)\s*(?=[{;])/', ') ', $code);
    // void 返回类型：function f(): void → function f()
    $code = preg_replace('/\)\s*:\s*void\s*(?=[{;])/', ') ', $code);
    // 箭头函数
    $code = script_endpoint_arrow_to_closure($code);
    // 短数组解构：[$a, $b] = ... / foreach (... as [$a, $b])
    $code = preg_replace('/^([ \t]*)\[([^\[\]]*)\]\s*=/m', '$1list($2) =', $code);
    $code = preg_replace('/\bas\s*\[([^\[\]]*)\]/', 'as list($1)', $code);

    // PHP 8 函数补丁（仅在用到且未添加过时插入，且必须位于 declare(strict_types=1) 之后）
    $hasShim = strpos($code, "if (!function_exists('str_contains'))") !== false;
    if (!$hasShim && preg_match('/\b(str_contains|str_starts_with|str_ends_with|array_key_first|array_key_last)\s*\(/', $code)) {
        $shim = "/* PHP 7.0 兼容补丁（后台同步代码时自动添加） */\n"
            . "if (!function_exists('str_contains')) { function str_contains(\$h, \$n) { return \$n === '' || strpos(\$h, \$n) !== false; } }\n"
            . "if (!function_exists('str_starts_with')) { function str_starts_with(\$h, \$n) { return \$n === '' || strncmp(\$h, \$n, strlen(\$n)) === 0; } }\n"
            . "if (!function_exists('str_ends_with')) { function str_ends_with(\$h, \$n) { return \$n === '' || substr(\$h, -strlen(\$n)) === \$n; } }\n"
            . "if (!function_exists('array_key_first')) { function array_key_first(\$a) { foreach (\$a as \$k => \$v) { return \$k; } return null; } }\n"
            . "if (!function_exists('array_key_last')) { function array_key_last(\$a) { return \$a ? key(array_slice(\$a, -1, 1, true)) : null; } }\n";
        // 补丁必须放在 declare(strict_types=1) 之后（否则严格模式声明会失效报错）
        if (preg_match('/declare\s*\(\s*strict_types\s*=\s*1\s*\)\s*;/i', $code, $m, PREG_OFFSET_CAPTURE)) {
            $at = $m[0][1] + strlen($m[0][0]);
            $code = substr($code, 0, $at) . "\n" . $shim . substr($code, $at);
        } else {
            $p = stripos($code, '<?php');
            $code = substr($code, 0, $p + 5) . "\n" . $shim . substr($code, $p + 5);
        }
    }
    return $code;
}

// 检测并修复本地已保存的接口代码（PHP 7.0 服务器无法解析 ?string / : void / 箭头函数等写法）
function script_endpoint_local_compat() {
    $file = script_endpoint_remote_path();
    if (!is_file($file)) { return array('changed' => false, 'msg' => ''); }
    $code = @file_get_contents($file);
    if (!is_string($code) || stripos($code, '<?php') === false) { return array('changed' => false, 'msg' => ''); }
    $fixed = script_endpoint_php70_compat($code);
    if ($fixed === $code) { return array('changed' => false, 'msg' => ''); }
    if (@file_put_contents($file, $fixed) === false) {
        return array('changed' => false, 'msg' => '本地代码包含 PHP 7.1+ 语法，自动修复失败，请检查 kanju/ 目录写权限');
    }
    @chmod($file, 0600);
    return array('changed' => true, 'msg' => '本地代码包含 PHP 7.1+ 语法，已自动转换为 PHP 7.0 兼容写法');
}

function script_endpoint_write_remote($code, &$compat = null) {
    $file = script_endpoint_remote_path();
    $dir  = dirname($file);
    if (!is_dir($dir)) { @mkdir($dir, 0755, true); }
    if (!is_dir($dir)) { return false; }
    $compat = false;
    if (stripos($code, '<?php') !== false) {
        $fixed = script_endpoint_php70_compat($code);
        if ($fixed !== $code) { $compat = true; $code = $fixed; }
    }
    if (@file_put_contents($file, $code) === false) { return false; }
    @chmod($file, 0600);
    return true;
}

// 带 Token 的请求（私有仓库通过 GitHub API 拉取）
function script_fetch_token($url, $token, $timeout = 20) {
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
    curl_setopt($ch, CURLOPT_USERAGENT, 'MXXM-Kanju-Sync');
    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'Authorization: Bearer ' . $token,
        'Accept: application/vnd.github.raw',
        'X-GitHub-Api-Version: 2022-11-28',
    ));
    $data = curl_exec($ch);
    curl_close($ch);
    return is_string($data) ? $data : '';
}

// 从仓库拉取单个 PHP 文件（优先 Token，失败后回退 raw / jsDelivr）
function script_endpoint_fetch_code($repo, $branch, $file, $token, &$logs) {
    $file = ltrim(str_replace('\\', '/', preg_replace('~[^A-Za-z0-9_./-]~', '', (string)$file)), '/');
    if ($file === '' || strpos($file, '..') !== false) {
        $logs[] = array('t' => script_log_time(), 'ok' => 0, 'msg' => '脚本文件路径无效：' . (string)$file);
        return '';
    }
    $path = implode('/', array_map('rawurlencode', explode('/', $file)));
    $code = '';

    if ($token !== '') {
        $api = 'https://api.github.com/repos/' . $repo . '/contents/' . $path . '?ref=' . rawurlencode($branch);
        $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => '使用 GitHub Token 拉取：' . $file);
        $body = script_fetch_token($api, $token, 20);
        if ($body !== '' && stripos($body, '<?php') !== false) {
            $code = $body;
            $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => '拉取成功，大小 ' . strlen($body) . ' 字节');
        } else {
            $logs[] = array('t' => script_log_time(), 'ok' => 2, 'msg' => 'Token 拉取失败（Token 可能失效或无该仓库权限），尝试公开地址');
        }
    } else {
        $logs[] = array('t' => script_log_time(), 'ok' => 2, 'msg' => '未填写 GitHub Token：私有仓库无法拉取，将尝试公开地址');
    }

    if ($code === '') {
        $urls = array(
            'https://raw.githubusercontent.com/' . $repo . '/' . rawurlencode($branch) . '/' . $path,
            'https://cdn.jsdelivr.net/gh/' . $repo . '@' . rawurlencode($branch) . '/' . $path,
        );
        foreach ($urls as $u) {
            $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => '拉取代码：' . $u);
            $body = script_fetch($u, 15);
            if ($body !== '' && stripos($body, '<?php') !== false) {
                $code = $body;
                $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => '拉取成功，大小 ' . strlen($body) . ' 字节');
                break;
            }
            $logs[] = array('t' => script_log_time(), 'ok' => 2, 'msg' => '该地址拉取失败，尝试下一个');
        }
    }
    return $code;
}

// 用根目录 1.php 作为模板生成 /<id>.php 入口，保留密钥校验与系统防火墙逻辑
function script_endpoint_jb_wrapper($id) {
    $root     = dirname(__FILE__) . '/..';
    $template = @file_get_contents($root . '/1.php');
    if (!is_string($template) || stripos($template, '<?php') !== 0) {
        return false;
    }
    $needle = "'/kanju/remote.php'";
    if (strpos($template, $needle) === false) {
        return false;
    }
    $code = str_replace($needle, "'/kanju/jb/" . $id . ".php'", $template);
    $code = preg_replace(
        '/^<\?php\s*/',
        "<?php\n/* MXXM-KANJU-JB:" . $id . " auto-generated, do not edit */\n",
        $code,
        1
    );
    $target = $root . '/' . $id . '.php';
    if (@file_put_contents($target, $code, LOCK_EX) === false) {
        return false;
    }
    @chmod($target, 0644);
    return true;
}

// 删除未勾选的 JB 接口：仅清理自动生成的根目录入口，避免误删用户文件
function script_endpoint_jb_cleanup($keep, &$logs) {
    $keep = array_flip($keep);
    foreach (script_endpoint_jb_ids() as $id) {
        if (isset($keep[$id])) { continue; }
        $removed = false;
        $local = script_endpoint_jb_path($id);
        if (is_file($local) && @unlink($local)) { $removed = true; }
        $entry = dirname(__FILE__) . '/../' . $id . '.php';
        if (is_file($entry)) {
            $src = @file_get_contents($entry);
            if (is_string($src) && strpos($src, 'MXXM-KANJU-JB:' . $id) !== false && @unlink($entry)) {
                $removed = true;
            }
        }
        if ($removed) {
            $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => '已移除未勾选的 JB 接口：/' . $id . '.php');
        }
    }
}

// 从 GitHub 仓库拉取代码并保存到 kanju/remote.php，同时同步勾选的 JB 接口到根目录
function script_endpoint_sync(&$cfg, &$logs) {
    $repo   = trim((string)$cfg['repo']);
    $branch = trim((string)$cfg['branch']);
    $file   = trim((string)$cfg['file']);
    $token  = trim((string)$cfg['token']);
    if (!preg_match('~^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$~', $repo)) {
        $logs[] = array('t' => script_log_time(), 'ok' => 0, 'msg' => '仓库格式无效，应为 owner/repo');
        return false;
    }
    if ($branch === '') { $branch = 'main'; }

    $code = script_endpoint_fetch_code($repo, $branch, $file, $token, $logs);
    $ok = false;
    if ($code !== '') {
        $compat = false;
        if (script_endpoint_write_remote($code, $compat)) {
            $cfg['synced']   = script_now();
            $cfg['sync_msg'] = '已从 ' . $repo . ' 同步';
            $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => '代码已保存：kanju/remote.php');
            if ($compat) {
                $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => '已自动转换为 PHP 7.0 兼容写法（可空类型/void/箭头函数/短数组解构/str_contains）');
            }
            $ok = true;
        } else {
            $logs[] = array('t' => script_log_time(), 'ok' => 0, 'msg' => '代码保存失败，请检查 kanju/ 目录写权限');
        }
    } else {
        if (is_file(script_endpoint_remote_path())) {
            $cfg['sync_msg'] = '拉取失败，继续使用本地代码';
            $logs[] = array('t' => script_log_time(), 'ok' => 2, 'msg' => '拉取失败，继续使用已有本地代码');
            $logs[] = array('t' => script_log_time(), 'ok' => 2, 'msg' => '提示：仓库为私有，请在「GitHub Token」填写 Token（填一次保存即可）；也可用下方「粘贴代码安装」');
        } elseif (script_endpoint_write_remote(script_endpoint_fallback())) {
            $cfg['sync_msg'] = '拉取失败，已写入未同步提示模板';
            $logs[] = array('t' => script_log_time(), 'ok' => 2, 'msg' => '拉取失败，已写入未同步提示模板');
            $logs[] = array('t' => script_log_time(), 'ok' => 2, 'msg' => '提示：私有仓库需填写 GitHub Token；服务器无法访问 GitHub 时可用「粘贴代码安装」');
        } else {
            $cfg['sync_msg'] = '拉取失败且无法写入本地模板';
            $logs[] = array('t' => script_log_time(), 'ok' => 0, 'msg' => '拉取失败且无法写入本地模板，请检查 kanju/ 目录写权限');
        }
    }

    // 勾选的 JB 数字接口：下载到 kanju/jb/<id>.php，并生成根目录 /<id>.php 入口
    $wanted = array();
    foreach ((array)$cfg['jb_files'] as $jid) {
        $jid = trim((string)$jid);
        if (in_array($jid, script_endpoint_jb_ids(), true)) { $wanted[$jid] = $jid; }
    }
    $wanted = array_values($wanted);
    $jb_ok = 0;
    $jb_fail = 0;
    foreach ($wanted as $jid) {
        $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => '同步 JB 接口：JB/' . $jid . '.php');
        $jcode = script_endpoint_fetch_code($repo, $branch, 'JB/' . $jid . '.php', $token, $logs);
        if ($jcode === '') {
            $jb_fail++;
            $logs[] = array('t' => script_log_time(), 'ok' => 0, 'msg' => 'JB/' . $jid . '.php 拉取失败，跳过');
            continue;
        }
        $jfixed = script_endpoint_php70_compat($jcode);
        if ($jfixed !== $jcode) {
            $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => 'JB/' . $jid . '.php 已转换为 PHP 7.0 兼容写法');
        }
        $dir = script_endpoint_jb_dir();
        if (!is_dir($dir) && !@mkdir($dir, 0755, true) && !is_dir($dir)) {
            $jb_fail++;
            $logs[] = array('t' => script_log_time(), 'ok' => 0, 'msg' => 'kanju/jb/ 目录创建失败');
            continue;
        }
        if (@file_put_contents(script_endpoint_jb_path($jid), $jfixed, LOCK_EX) === false) {
            $jb_fail++;
            $logs[] = array('t' => script_log_time(), 'ok' => 0, 'msg' => 'JB/' . $jid . '.php 保存失败，请检查 kanju/jb/ 写权限');
            continue;
        }
        @chmod(script_endpoint_jb_path($jid), 0600);
        if (!script_endpoint_jb_wrapper($jid)) {
            $jb_fail++;
            $logs[] = array('t' => script_log_time(), 'ok' => 0, 'msg' => '根目录 /' . $jid . '.php 入口生成失败，请检查根目录写权限');
            continue;
        }
        $jb_ok++;
        $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => '已生成根目录入口：/' . $jid . '.php（与 1.php 同样经过密钥校验和防火墙）');
    }
    if ($ok) {
        script_endpoint_jb_cleanup($wanted, $logs);
        $cfg['sync_msg'] = '已从 ' . $repo . ' 同步';
        if ($jb_ok > 0 || $jb_fail > 0) {
            $cfg['sync_msg'] .= '（JB 接口成功 ' . $jb_ok . ' 个' . ($jb_fail > 0 ? '，失败 ' . $jb_fail . ' 个' : '') . '）';
        }
    }
    return $ok && $jb_fail === 0;
}

// 手动安装：直接保存粘贴的代码到 kanju/remote.php
function script_endpoint_install($code, &$cfg, &$logs) {
    $code = trim((string)$code);
    if ($code === '' || stripos($code, '<?php') !== 0) {
        $logs[] = array('t' => script_log_time(), 'ok' => 0, 'msg' => '代码无效：内容必须以 <?php 开头');
        return false;
    }
    if (strlen($code) < 500) {
        $logs[] = array('t' => script_log_time(), 'ok' => 0, 'msg' => '代码过短（' . strlen($code) . ' 字节），请粘贴完整的 1.php 代码');
        return false;
    }
    $compat = false;
    if (!script_endpoint_write_remote($code, $compat)) {
        $logs[] = array('t' => script_log_time(), 'ok' => 0, 'msg' => '代码保存失败，请检查 kanju/ 目录写权限');
        return false;
    }
    $cfg['synced']   = script_now();
    $cfg['sync_msg'] = '已手动安装代码';
    $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => '代码已保存：kanju/remote.php（' . strlen($code) . ' 字节）');
    if ($compat) {
        $logs[] = array('t' => script_log_time(), 'ok' => 1, 'msg' => '已自动转换为 PHP 7.0 兼容写法');
    }
    return true;
}
