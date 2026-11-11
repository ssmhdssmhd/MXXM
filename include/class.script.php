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

// 线路去重键：直连线路按名称，接口线路按地址
function script_line_key($it) {
    if ((string)$it['direct'] === '1' || $it['url'] === '') { return 'direct:' . $it['name']; }
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
    $out = array(
        'ok' => false, 'type' => '', 'url' => '', 'name' => $line['name'],
        'code' => 400, 'msg' => '', 'eps' => array(), 'cur' => 0, 'vid' => $vid,
    );
    if ($line['direct'] === '1') {
        $out['type'] = 'direct';
        $res = sp_resolve_direct(script_direct_list($cfg), $url, $wd, $vid, (int)$ep);
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

// 从脚本中提取一种线路数组（videoParseList / parseApis）并转为线路数组
function script_parse_lines($js, $key) {
    $pos = strpos($js, $key);
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

// 提取脚本中的解析线路（兼容 videoParseList 与 parseApis 两种格式）
function script_extract_lines($js) {
    $js = script_strip_comments($js);
    foreach (array('videoParseList', 'parseApis') as $key) {
        $lines = script_parse_lines($js, $key);
        if ($lines !== false) { return $lines; }
    }
    return false;
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

// 腾讯视频页面为 JS 渲染、无 og:title，改用 getinfo 接口按视频 ID 取标题
function sp_tencent_title($url) {
    if (!preg_match('~^https?://(?:[a-z0-9-]+\.)*v\.qq\.com/~i', $url)) { return ''; }
    if (!preg_match('~/([A-Za-z0-9]{8,})\.html~', $url, $m)) { return ''; }
    $api = 'https://vv.video.qq.com/getinfo?' . http_build_query(array(
        'vids'     => $m[1],
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

// 取资源详情中的剧集列表
function sp_episodes($api, $vid, &$vodName = null) {
    $q = rtrim($api, '/') . '/?' . http_build_query(array('ac' => 'detail', 'ids' => $vid));
    $json = sp_http($q, 12);
    $j = json_decode($json, true);
    $vod = (is_array($j) && !empty($j['list'][0]) && is_array($j['list'][0])) ? $j['list'][0] : array();
    if ($vodName !== null) { $vodName = isset($vod['vod_name']) ? trim((string)$vod['vod_name']) : ''; }
    $play = isset($vod['vod_play_url']) ? (string)$vod['vod_play_url'] : '';
    if ($play === '') { return array(); }
    $groups = explode('$$$', $play);
    $eps = array();
    foreach (explode('#', $groups[0]) as $seg) {
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
            $cands = sp_search($direct['site'], $tryTitle);
            if (empty($cands)) {
                $lastCode = 404;
                $lastMsg = '资源站未搜索到影片';
                continue;
            }
            $tryVid = (string)$cands[0]['id'];
            $tryTitle = $cands[0]['name'];
        }

        $vodName = '';
        $eps = sp_episodes($direct['api'], $tryVid, $vodName);
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
