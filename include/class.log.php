<?php
/**
 * MXXM 日志与调用统计
 *
 * 两类日志，均按天写入 save/logs/ 下的 JSON Lines 文件（一行一条）：
 *   call/YYYYMMDD.log  接口 / 模块调用日志（独立接口、脚本解析、官替算法等）
 *   op/YYYYMMDD.log    后台操作日志（登录、退出、配置保存等）
 *
 * 日志目录已加入 .gitignore，不会被在线更新覆盖，也不会提交到仓库。
 */

if (defined('MXXM_LOG_LOADED')) { return; }
define('MXXM_LOG_LOADED', 1);

//调用日志保留天数
define('MXXM_LOG_CALL_KEEP', 30);
//操作日志保留天数
define('MXXM_LOG_OP_KEEP', 90);

/* ==================== 基础工具 ==================== */

//日志根目录
function mxxm_log_root() {
    return dirname(__FILE__) . '/../save/logs';
}

//按类型取日志目录（call / op）
function mxxm_log_dir($kind) {
    $kind = $kind === 'op' ? 'op' : 'call';
    $dir = mxxm_log_root() . '/' . $kind;
    if (!is_dir($dir)) {
        @mkdir($dir, 0755, true);
        //防止日志被直接访问（Apache）
        if (is_dir($dir) && !is_file($dir . '/.htaccess')) {
            @file_put_contents($dir . '/.htaccess', "Order allow,deny\nDeny from all\nRequire all denied\n");
        }
    }
    return $dir;
}

//客户端 IP
function mxxm_log_ip() {
    return isset($_SERVER['REMOTE_ADDR']) ? (string)$_SERVER['REMOTE_ADDR'] : '';
}

//User-Agent（截断，避免超长）
function mxxm_log_ua() {
    $ua = isset($_SERVER['HTTP_USER_AGENT']) ? (string)$_SERVER['HTTP_USER_AGENT'] : '';
    if (function_exists('mb_substr')) { return mb_substr($ua, 0, 200, 'UTF-8'); }
    return substr($ua, 0, 200);
}

//字符串安全处理：隐藏密钥参数并截断
function mxxm_log_str($val, $max = 300) {
    if (is_array($val) || is_object($val)) { $val = json_encode($val, JSON_UNESCAPED_UNICODE); }
    $val = (string)$val;
    $val = preg_replace('~([?&](?:key|access_key|token|password|pass|auth)=)[^&\s]*~i', '$1***', $val);
    if (function_exists('mb_substr')) { return mb_substr($val, 0, $max, 'UTF-8'); }
    return substr($val, 0, $max);
}

//递归清理附加参数中的敏感字段
function mxxm_log_sanitize($data, $depth = 0) {
    if ($depth > 2 || !is_array($data)) { return mxxm_log_str($data); }
    $out = array();
    foreach ($data as $k => $v) {
        $lk = strtolower((string)$k);
        if (in_array($lk, array('key', 'access_key', 'token', 'password', 'pass', 'cookie', 'authorization'), true)) {
            $out[$k] = '***';
        } elseif (is_array($v)) {
            $out[$k] = mxxm_log_sanitize($v, $depth + 1);
        } else {
            $out[$k] = mxxm_log_str($v);
        }
    }
    return $out;
}

//当前后台用户
function mxxm_log_user() {
    if (function_exists('session_status') && session_status() === PHP_SESSION_ACTIVE && isset($_SESSION['username'])) {
        return (string)$_SESSION['username'];
    }
    return 'admin';
}

/* ==================== 写入 ==================== */

//当前北京时间
function mxxm_log_now() {
    return new DateTime('now', new DateTimeZone('Asia/Shanghai'));
}

function mxxm_log_write($kind, $row) {
    $dir = mxxm_log_dir($kind);
    if (!is_dir($dir) || !is_writable($dir)) { return false; }
    $now = mxxm_log_now();
    if (!isset($row['ts'])) { $row['ts'] = time(); }
    if (!isset($row['t'])) { $row['t'] = $now->format('Y-m-d H:i:s'); }
    $file = $dir . '/' . $now->format('Ymd') . '.log';
    $line = json_encode($row, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
    if ($line === false) { return false; }
    $ok = @file_put_contents($file, $line . "\n", FILE_APPEND | LOCK_EX);
    //低概率触发过期清理，避免每次写入都扫描目录
    if ($ok !== false && mt_rand(1, 200) === 1) { mxxm_log_prune(); }
    return $ok !== false;
}

//清理过期日志
function mxxm_log_prune() {
    $rules = array('call' => MXXM_LOG_CALL_KEEP, 'op' => MXXM_LOG_OP_KEEP);
    foreach ($rules as $kind => $keep) {
        $dir = mxxm_log_root() . '/' . $kind;
        if (!is_dir($dir)) { continue; }
        $files = @glob($dir . '/*.log');
        if (!$files) { continue; }
        $deadline = strtotime('-' . (int)$keep . ' days');
        foreach ($files as $file) {
            $name = basename($file, '.log');
            if (!preg_match('/^\d{8}$/', $name)) { continue; }
            $ts = strtotime(substr($name, 0, 4) . '-' . substr($name, 4, 2) . '-' . substr($name, 6, 2));
            if ($ts !== false && $ts < $deadline) { @unlink($file); }
        }
    }
}

//清空指定类型日志
function mxxm_log_clear($kind) {
    $kinds = $kind === 'all' ? array('call', 'op') : array($kind === 'op' ? 'op' : 'call');
    foreach ($kinds as $k) {
        $files = @glob(mxxm_log_root() . '/' . $k . '/*.log');
        if (!$files) { continue; }
        foreach ($files as $file) { @unlink($file); }
    }
    return true;
}

/* ==================== 写入入口 ==================== */

//写入一条调用日志
function mxxm_log_call($module, $action, $status, $extra = array(), $code = 0, $ms = 0) {
    $row = array(
        'ts'     => time(),
        'module' => mxxm_log_str($module, 40),
        'action' => mxxm_log_str($action, 60),
        'status' => $status === 'fail' ? 'fail' : 'success',
        'code'   => (int)$code,
        'ms'     => (int)$ms,
        'ip'     => mxxm_log_ip(),
        'ua'     => mxxm_log_ua(),
        'extra'  => mxxm_log_sanitize($extra),
    );
    return mxxm_log_write('call', $row);
}

//写入一条操作日志
function mxxm_log_op($type, $action, $status, $detail = '', $user = null) {
    $row = array(
        'ts'     => time(),
        'type'   => $type === 'login' || $type === 'logout' ? $type : 'operation',
        'action' => mxxm_log_str($action, 80),
        'status' => $status === 'fail' ? 'fail' : 'success',
        'user'   => $user === null ? mxxm_log_user() : mxxm_log_str($user, 40),
        'ip'     => mxxm_log_ip(),
        'ua'     => mxxm_log_ua(),
        'detail' => mxxm_log_str($detail, 500),
    );
    return mxxm_log_write('op', $row);
}

/* ==================== 请求自动统计（带输出捕获） ==================== */

/**
 * 开始一次调用统计。自动缓冲输出，在请求结束时解析响应并写入调用日志。
 * 适用于直接 echo/exit 输出 JSON 的接口文件。
 */
function mxxm_log_call_begin($module, $action, $extra = array(), $capture = true) {
    if (!empty($GLOBALS['__mxxm_log_call_ctx'])) { return; }
    $GLOBALS['__mxxm_log_call_ctx'] = array(
        'module' => (string)$module,
        'action' => (string)$action,
        'extra'  => is_array($extra) ? $extra : array(),
        't0'     => microtime(true),
        'ob'     => -1,
    );
    if ($capture) {
        $GLOBALS['__mxxm_log_call_ctx']['ob'] = ob_get_level();
        @ob_start();
    }
    register_shutdown_function('mxxm_log_call_finish');
}

//请求结束：解析响应状态并写日志
function mxxm_log_call_finish() {
    if (empty($GLOBALS['__mxxm_log_call_ctx'])) { return; }
    $ctx = $GLOBALS['__mxxm_log_call_ctx'];
    $GLOBALS['__mxxm_log_call_ctx'] = null;

    $out = '';
    if (isset($ctx['ob']) && $ctx['ob'] >= 0) {
        while (ob_get_level() > $ctx['ob']) {
            $out = ob_get_clean() . $out;
        }
    }

    $ms = (int)round((microtime(true) - $ctx['t0']) * 1000);
    list($status, $code) = mxxm_log_detect_status($out);
    mxxm_log_call($ctx['module'], $ctx['action'], $status, $ctx['extra'], $code, $ms);

    if ($out !== '') { echo $out; }
}

/**
 * 开始一次后台操作统计。自动缓冲输出，在请求结束时解析 success 并写入操作日志。
 */
function mxxm_log_op_begin($type, $action, $capture = true) {
    if (!empty($GLOBALS['__mxxm_log_op_ctx'])) { return; }
    $GLOBALS['__mxxm_log_op_ctx'] = array(
        'type'   => (string)$type,
        'action' => (string)$action,
        't0'     => microtime(true),
        'ob'     => -1,
    );
    if ($capture) {
        $GLOBALS['__mxxm_log_op_ctx']['ob'] = ob_get_level();
        @ob_start();
    }
    register_shutdown_function('mxxm_log_op_finish');
}

//后台请求结束：解析响应状态并写操作日志
function mxxm_log_op_finish() {
    if (empty($GLOBALS['__mxxm_log_op_ctx'])) { return; }
    $ctx = $GLOBALS['__mxxm_log_op_ctx'];
    $GLOBALS['__mxxm_log_op_ctx'] = null;

    $out = '';
    if (isset($ctx['ob']) && $ctx['ob'] >= 0) {
        while (ob_get_level() > $ctx['ob']) {
            $out = ob_get_clean() . $out;
        }
    }

    $detail = '';
    $status = 'success';
    $data = json_decode($out, true);
    if (is_array($data) && isset($data['success'])) {
        $status = ((string)$data['success'] === '0' || $data['success'] === false) ? 'fail' : 'success';
        if (isset($data['m'])) { $detail = (string)$data['m']; }
    } elseif (is_array($data) && isset($data['code'])) {
        $code = (int)$data['code'];
        $status = ($code >= 200 && $code < 400) ? 'success' : 'fail';
        if (isset($data['msg'])) { $detail = (string)$data['msg']; }
    } elseif ($out === '') {
        $status = 'fail';
        $detail = '无响应内容';
    } else {
        $status = 'fail';
        $detail = '响应异常';
    }

    mxxm_log_op($ctx['type'], $ctx['action'], $status, $detail);

    if ($out !== '') { echo $out; }
}

//从响应内容推断成功 / 失败与响应码
function mxxm_log_detect_status($out) {
    $out = trim((string)$out);
    $code = 0;
    $status = 'success';

    $data = json_decode($out, true);
    //兼容 JSONP：callback({...})
    if (!is_array($data) && preg_match('/^[\w$.]+\s*\((.*)\)\s*;?$/s', $out, $m)) {
        $data = json_decode(trim($m[1]), true);
    }

    if (is_array($data)) {
        if (isset($data['code'])) {
            $code = (int)$data['code'];
            $status = ($code >= 200 && $code < 400) ? 'success' : 'fail';
        } elseif (isset($data['success'])) {
            $status = ((string)$data['success'] === '0' || $data['success'] === false) ? 'fail' : 'success';
            $code = $status === 'success' ? 200 : 0;
        } else {
            $code = 200;
        }
    } elseif ($out === '') {
        //无输出：以 HTTP 状态码为准
        $http = function_exists('http_response_code') ? (int)http_response_code() : 0;
        $code = $http;
        $status = ($http === 0 || ($http >= 200 && $http < 400)) ? 'success' : 'fail';
    } else {
        //非 JSON 输出（如 404 文本）：以 HTTP 状态码为准
        $http = function_exists('http_response_code') ? (int)http_response_code() : 0;
        $code = $http > 0 ? $http : 200;
        $status = ($code >= 200 && $code < 400) ? 'success' : 'fail';
    }

    return array($status, $code);
}

/* ==================== 读取与统计 ==================== */

//读取指定日期范围的日志（新→旧），支持筛选分页
function mxxm_log_query($kind, $opts = array()) {
    $kind = $kind === 'op' ? 'op' : 'call';
    $days = isset($opts['days']) ? (int)$opts['days'] : 1;
    if ($days < 1) { $days = 1; }
    if ($days > 90) { $days = 90; }
    $page = isset($opts['page']) ? (int)$opts['page'] : 1;
    if ($page < 1) { $page = 1; }
    $size = isset($opts['size']) ? (int)$opts['size'] : 20;
    if ($size < 1) { $size = 20; }
    if ($size > 200) { $size = 200; }
    $status = isset($opts['status']) ? (string)$opts['status'] : '';
    $group  = isset($opts['group']) ? trim((string)$opts['group']) : '';
    $kw     = isset($opts['kw']) ? trim((string)$opts['kw']) : '';

    $dir = mxxm_log_dir($kind);
    $rows = array();
    $stats = array(
        'total'   => 0,
        'success' => 0,
        'fail'    => 0,
        'rate'    => 0,
        'avg_ms'  => 0,
        'groups'  => array(),
    );
    $scanned = 0;
    $maxScan = 50000;
    $sumMs = 0;

    for ($i = 0; $i < $days; $i++) {
        $day = mxxm_log_now();
        if ($i > 0) { $day->modify('-' . $i . ' day'); }
        $file = $dir . '/' . $day->format('Ymd') . '.log';
        if (!is_file($file)) { continue; }
        $lines = @file($file, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
        if (!$lines) { continue; }
        //倒序读取，保证最新的日志在前
        for ($j = count($lines) - 1; $j >= 0; $j--) {
            $row = json_decode($lines[$j], true);
            if (!is_array($row)) { continue; }
            $scanned++;
            if ($scanned > $maxScan) { break 2; }
            if (!mxxm_log_match($row, $kind, $status, $group, $kw)) { continue; }

            $rows[] = $row;
            $stats['total']++;
            $isFail = (isset($row['status']) && $row['status'] === 'fail');
            if ($isFail) { $stats['fail']++; } else { $stats['success']++; }
            $ms = isset($row['ms']) ? (int)$row['ms'] : 0;
            $sumMs += $ms;

            $gname = $kind === 'call'
                ? (isset($row['module']) && $row['module'] !== '' ? $row['module'] : '未知模块')
                : (isset($row['type']) ? $row['type'] : 'operation');
            if (!isset($stats['groups'][$gname])) {
                $stats['groups'][$gname] = array('name' => $gname, 'total' => 0, 'success' => 0, 'fail' => 0, 'avg_ms' => 0, 'sum_ms' => 0);
            }
            $stats['groups'][$gname]['total']++;
            $stats['groups'][$gname]['sum_ms'] += $ms;
            if ($isFail) { $stats['groups'][$gname]['fail']++; } else { $stats['groups'][$gname]['success']++; }
        }
    }

    if ($stats['total'] > 0) {
        $stats['rate'] = round($stats['success'] * 100 / $stats['total'], 1);
        $stats['avg_ms'] = (int)round($sumMs / $stats['total']);
    }
    foreach ($stats['groups'] as $k => $g) {
        $stats['groups'][$k]['avg_ms'] = $g['total'] > 0 ? (int)round($g['sum_ms'] / $g['total']) : 0;
        unset($stats['groups'][$k]['sum_ms']);
    }
    //按调用次数倒序
    uasort($stats['groups'], function ($a, $b) {
        if ($a['total'] == $b['total']) { return 0; }
        return $a['total'] > $b['total'] ? -1 : 1;
    });

    $total = count($rows);
    $offset = ($page - 1) * $size;
    $pageRows = array_slice($rows, $offset, $size);

    return array(
        'ok'    => 1,
        'kind'  => $kind,
        'days'  => $days,
        'total' => $total,
        'page'  => $page,
        'size'  => $size,
        'stats' => $stats,
        'rows'  => $pageRows,
    );
}

//单条日志是否匹配筛选条件
function mxxm_log_match($row, $kind, $status, $group, $kw) {
    if ($status === 'success' || $status === 'fail') {
        $s = isset($row['status']) ? $row['status'] : 'success';
        if ($s !== $status) { return false; }
    }
    if ($group !== '') {
        if ($kind === 'call') {
            if (!isset($row['module']) || $row['module'] !== $group) { return false; }
        } else {
            if (!isset($row['type']) || $row['type'] !== $group) { return false; }
        }
    }
    if ($kw !== '') {
        $hay = json_encode($row, JSON_UNESCAPED_UNICODE);
        if ($hay === false || stripos($hay, $kw) === false) { return false; }
    }
    return true;
}

/* ==================== 后台操作名称映射 ==================== */

//把 admin.php 的 type 映射为可读的操作名称；返回空字符串表示不记录
function mxxm_admin_action_label($type) {
    $map = array(
        'black_match_stop'      => '防火墙规则-停用',
        'black_match_start'     => '防火墙规则-启用',
        'black_match_del'       => '防火墙规则-删除',
        'black_match_add'       => '防火墙规则-添加',
        'black_match_edit'      => '防火墙规则-修改',
        'black_black_add'       => '防火墙动作-添加',
        'black_black_edit'      => '防火墙动作-修改',
        'black_black_del'       => '防火墙动作-删除',
        'adblack_match_add'     => '广告拦截规则-添加',
        'adblack_match_edit'    => '广告拦截规则-修改',
        'adblack_match_stop'    => '广告拦截规则-停用',
        'adblack_match_start'   => '广告拦截规则-启用',
        'adblack_match_del'     => '广告拦截规则-删除',
        'adblack_system'        => '广告拦截设置-保存',
        'link_add'              => '友情链接-添加',
        'link_edit'             => '友情链接-修改',
        'link_del'              => '友情链接-删除',
        'link_stop'             => '友情链接-停用',
        'link_start'            => '友情链接-启用',
        'user_edit'             => '账号密码-修改',
        'upyundata'             => '云规则-更新',
        'reset'                 => '系统配置-恢复默认',
        'update_run'            => '在线更新-执行更新',
        'algo_run'              => '官替算法-独立更新',
        'mx1_system'            => '官替算法1-保存设置',
        'mx2_system'            => '官替算法2-保存设置',
        'mx1_db_test'           => '官替算法1-数据库测试',
        'resolve_settings'      => '解析调度-保存设置',
        'ad_system'             => '广告设置-保存',
        'jx_test'               => '解析接口-检测',
        'script_auto'           => '脚本解析-自动更新设置',
        'script_update'         => '脚本解析-更新脚本',
        'script_update_all'     => '脚本解析-全部更新',
        'script_export'         => '脚本解析-导出源码',
        'script_import'         => '脚本解析-导入源码',
        'endpoint_key_save'     => '独立接口-保存密钥',
        'endpoint_key_rotate'   => '独立接口-更换临时密钥',
        'lx_save'               => '轮训接口-保存设置',
        'endpoint_save'         => '独立接口-保存设置',
        'endpoint_sync'         => '独立接口-同步代码',
        'endpoint_install'      => '独立接口-粘贴安装',
        'script_delete'         => '脚本解析-删除脚本',
        'script_system'         => '脚本解析-保存设置',
        'script_resp'           => '脚本解析-返回响应设置',
        'script_lines'          => '脚本解析-保存线路',
        'script_sync'           => '脚本解析-同步线路',
        'ziyuan_update'         => '资源站-更新列表',
        'ziyuan_parse'          => '资源站-解析详情',
        'ziyuan_parse_all'      => '资源站-批量解析',
        'ziyuan_system'         => '资源站-保存设置',
        'ziyuan_sync'           => '资源站-同步到云播',
        'log_clear'             => '日志与调用-清空日志',
    );
    return isset($map[$type]) ? $map[$type] : '';
}

//这些类型属于轮询 / 读取类请求，不写入操作日志，避免刷屏
function mxxm_admin_action_ignored($type) {
    return in_array($type, array(
        'check', 'recache', 'update_check', 'algo_check',
        'script_line_list', 'log_call_list', 'log_op_list', 'lx_test', 'lx_test_all', 'lx_scripts_list',
    ), true);
}
