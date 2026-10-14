<?php
/**
 * 官替算法 算法2 (mx2) - 公共引导文件
 * 基于 MXGJ 沫兮官替系统核心算法，适配 MXXM 平台
 *
 * 职责：定义常量、注册自动加载、提供无数据库(JSON 文件)的读写工具与公共函数。
 * 配置文件：config/settings.json、config/sites.json、config/mapping.json
 */

if (defined("MX2_BOOTSTRAP_LOADED")) return;
define("MX2_BOOTSTRAP_LOADED", true);

error_reporting(E_ALL & ~E_DEPRECATED & ~E_NOTICE);
ini_set('display_errors', '0');
ini_set('log_errors', '1');

define('MX2_NAME', '官替算法 算法2 (mx2)');
define('MX2_VERSION', '1.0.0');

if (!defined('MX2_ROOT')) {
    define('MX2_ROOT', __DIR__);
}
define('MX2_CONFIG', MX2_ROOT . '/config');
define('MX2_DATA', MX2_ROOT . '/data');
define('MX2_CACHE', MX2_DATA . '/cache');

@ini_set('error_log', MX2_DATA . '/php_errors.log');

// 全局 CORS 头
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, HEAD, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Range, X-Requested-With, Authorization');
if (($_SERVER['REQUEST_METHOD'] ?? 'GET') === 'OPTIONS') {
    http_response_code(204);
    header('Content-Length: 0');
    exit;
}

// 自动加载 lib 目录下的类
spl_autoload_register(function ($class) {
    $file = MX2_ROOT . '/lib/' . str_replace('\\', '/', $class) . '.php';
    if (is_file($file)) {
        require $file;
    }
});

/* ---------------------------------------------------------------------------
 * 文件存储（无数据库，全部使用 JSON 文件）
 * ------------------------------------------------------------------------- */

function mx2_read_json(string $file, $default = [])
{
    if (!is_file($file)) {
        return $default;
    }
    $content = @file_get_contents($file);
    if ($content === false || trim($content ?? '') === '') {
        return $default;
    }
    $data = json_decode($content, true);
    return is_array($data) ? $data : $default;
}

function mx2_write_json(string $file, array $data)
{
    $dir = dirname($file);
    if (!is_dir($dir)) {
        @mkdir($dir, 0755, true);
    }
    if (!is_dir($dir) || !is_writable($dir)) {
        return false;
    }
    $content = json_encode($data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT);
    if ($content === false) {
        return false;
    }
    return file_put_contents($file, $content) !== false;
}

/* ---------------------------------------------------------------------------
 * 配置读取
 * ------------------------------------------------------------------------- */

function mx2_settings()
{
    $defaults = [
        'off' => '0',
        'timeout' => 15,
        'cache_ttl' => 600,
        'replace_domain' => '',
        'site_control' => [
            'search_interval' => 10,
            'heartbeat_enable' => false,
            'heartbeat_interval' => 300,
            'heartbeat_timeout' => 5,
            'heartbeat_max_fail' => 3,
            'cooldown_seconds' => 600,
            'rotation_enable' => false,
            'rotation_interval' => 300,
            'max_sites_per_request' => 0,
        ],
        'fallback' => ['enable' => false, 'step2_retry_main' => true],
    ];
    $user = mx2_read_json(MX2_CONFIG . '/settings.json', []);
    $out = $defaults;
    foreach ($user as $k => $v) {
        if (is_array($v) && isset($defaults[$k]) && is_array($defaults[$k])) {
            $out[$k] = array_merge($defaults[$k], $v);
        } else {
            $out[$k] = $v;
        }
    }
    return $out;
}

function mx2_sites()
{
    $raw = mx2_read_json(MX2_CONFIG . '/sites.json', []);
    foreach ($raw as $i => $s) {
        if (!isset($s['role']) || !in_array($s['role'], ['primary', 'fallback'], true)) {
            $raw[$i]['role'] = 'primary';
        }
        if (!isset($s['enabled'])) {
            $raw[$i]['enabled'] = true;
        }
    }
    return $raw;
}

function mx2_mapping_data()
{
    return mx2_read_json(MX2_CONFIG . '/mapping.json', ['title' => [], 'cid' => [], 'episode' => []]);
}

function mx2_sites_by_role(array $sites, string $role = 'primary')
{
    if ($role === 'all') return $sites;
    $out = [];
    foreach ($sites as $s) {
        if (($s['role'] ?? 'primary') === $role && !empty($s['enabled'])) {
            $out[] = $s;
        }
    }
    return $out;
}

function mx2_mapping_enabled(array $mapping, string $sec, string $key)
{
    $disabled = $mapping['disabled'][$sec] ?? [];
    return is_array($disabled) ? !in_array($key, $disabled, true) : true;
}

/* ---------------------------------------------------------------------------
 * 工具函数
 * ------------------------------------------------------------------------- */

function mx2_lower(string $s)
{
    return function_exists('mb_strtolower') ? mb_strtolower($s) : strtolower($s);
}

function mx2_b64url(string $s)
{
    return rtrim(strtr(base64_encode($s), '+/', '-_'), '=');
}

function mx2_b64url_decode(string $s)
{
    $s = strtr(trim($s ?? ''), '-_', '+/');
    $pad = strlen($s) % 4;
    if ($pad > 0) {
        $s .= str_repeat('=', 4 - $pad);
    }
    $dec = base64_decode($s, true);
    return $dec === false ? '' : $dec;
}

function mx2_json_out(array $data, int $status = 200){
    http_response_code($status);
    header('Content-Type: application/json; charset=utf-8');
    $callback = isset($_GET['callback']) ? preg_replace('/[^A-Za-z0-9_.]/', '', $_GET['callback']) : '';
    $json = json_encode($data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
    if ($callback !== '') {
        echo $callback . '(' . $json . ')';
    } else {
        echo $json;
    }
    exit;
}

function mx2_apply_proxy($ch, string $url){
    $scheme = strtolower((string)parse_url($url, PHP_URL_SCHEME));
    $host   = strtolower((string)parse_url($url, PHP_URL_HOST));

    $noProxy = strtolower(getenv('NO_PROXY') ?: getenv('no_proxy') ?: '');
    if ($noProxy !== '') {
        foreach (preg_split('/[,\s]+/', $noProxy) as $pat) {
            $pat = trim($pat ?? '');
            if ($pat === '') continue;
            if ($pat === '*') return;
            if (strpos($host, $pat) !== false) return;
        }
    }

    if ($scheme === 'https') {
        $proxy = getenv('HTTPS_PROXY') ?: getenv('https_proxy') ?: getenv('HTTP_PROXY') ?: getenv('http_proxy');
    } else {
        $proxy = getenv('HTTP_PROXY') ?: getenv('http_proxy') ?: getenv('HTTPS_PROXY') ?: getenv('https_proxy');
    }
    $proxy = trim($proxy ?: '');

    if ($proxy !== '') {
        curl_setopt($ch, CURLOPT_PROXY, $proxy);
        curl_setopt($ch, CURLOPT_PROXYPORT, 0);
        if ($scheme === 'https') {
            curl_setopt($ch, CURLOPT_HTTPPROXYTUNNEL, true);
        }
    }
}

function mx2_current_host()
{
    static $cached = null;
    if ($cached !== null) { return $cached; }

    $scheme = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? 'https' : 'http';
    if (!empty($_SERVER['HTTP_X_FORWARDED_PROTO'])) {
        $scheme = (string)$_SERVER['HTTP_X_FORWARDED_PROTO'];
    }
    $host = $_SERVER['HTTP_HOST'] ?? '';
    if ($host !== '') {
        $cached = $scheme . '://' . $host;
        return $cached;
    }
    $cached = 'http://localhost';
    return $cached;
}

function mx2_player_url(string $rawUrl)
{
    $host = mx2_current_host();
    return $host . '/mx2/player.php?url=' . rawurlencode($rawUrl);
}

function mx2_request_id()
{
    static $rid = null;
    if ($rid !== null) return $rid;
    $rid = substr(bin2hex(random_bytes(8)), 0, 16);
    return $rid;
}


//剧名预处理：去掉书名号、括号内容、副标题描述，提取核心剧名（用于资源站搜索匹配）
function mx2_clean_title($title)
{
    $orig = trim((string)$title);
    if ($orig === "") return "";

    //1. 先尝试直接用书名号里的内容 —— 这通常就是核心片名
    if (preg_match('/《\s*([^》]{2,20})\s*》/u', $orig, $m)) {
        $candidate = trim($m[1]);
        if (mb_strlen($candidate, 'UTF-8') >= 2) {
            return $candidate;
        }
    }

    //2. 去掉全角/半角书名号、尖括号
    $t = preg_replace('/[《》【】〈〉《》]|<[^>]+>/u', '', $orig);

    //3. 去掉所有全角/半角括号里的内容（副标题、演员、年份、地区）
    $t = preg_replace('/[（(].*?[）)]/u', '', $t);

    //4. 去掉结尾描述尾巴（更新至X集/完结/第X季/全集/正片）
    $t = preg_replace('/(?:更新至|已更新至|更新到|已更新到|共|全)[^，。,.;；]*?(?:集|季|话|部)/u', '', $t);
    $t = preg_replace('/(?:第\s*\d+\s*季|第\s*\d+\s*部|全集|完结|正片|蓝光|高清|4K|1080P|720P|HD)/u', '', $t);

    //5. 去掉常见描述性前缀
    $t = preg_replace('/^(?:最新|20\d{2}|高清|蓝光|4K|1080P|720P|HD|在线观看|免费观看|在线播放)/u', '', $t);

    //6. 去掉所有标点和空格，取连续中文/英文
    $t = preg_replace('/[^\p{L}\p{N}]/u', '', $t);

    //7. 如果清洗后依然过长（>15字，说明是描述性长标题），只取最长的连续中文/英文词组
    if (mb_strlen($t, 'UTF-8') > 15) {
        preg_match_all('/[\x{4e00}-\x{9fa5}A-Za-z2-4]+/u', $t, $parts);
        if (!empty($parts[0])) {
            // 取字符数最多的词组（通常是核心片名）
            $longest = '';
            foreach ($parts[0] as $p) {
                if (mb_strlen($p, 'UTF-8') > mb_strlen($longest, 'UTF-8')) {
                    $longest = $p;
                }
            }
            $t = $longest;
        }
    }

    //8. 最长兜底：截断到 20 字
    if (mb_strlen($t, 'UTF-8') > 20) {
        $t = mb_substr($t, 0, 20, 'UTF-8');
    }

    return trim($t);
}

function mx2_is_garbage_title($title)
{
    $t = trim($title);
    if ($t === '') return true;
    if (mb_strlen($t) > 40) return true;
    $blacklist = [
        '那条视频不见了', '视频不见了', '那条视频不存在',
        '暂无法', '暂无资源', '暂无法播放', '无法播放', '无法观看',
        '没有相关', '没有找到', '未找到', '未找到该',
        '视频不存在', '内容不存在', '资源不存在',
        '已下架', '已删除', '已下线', '已失效',
        '请稍后', '请登录', '会员', 'VIP', '试看',
        '反爬', '验证', 'captcha', '验证码',
        'access denied', 'forbidden', 'not found', 'error', 'invalid',
        '抱歉', '对不起', '温馨提示', '友情提示',
        '加载中', '请稍候', '服务器', '网络错误',
    ];
    $low = strtolower($t);
    foreach ($blacklist as $b) {
        if (str_contains($low, strtolower($b))) return true;
    }
    return false;
}

function mx2_auto_mapping(array $parsed, string $name, int $episode)
{
    if (mx2_is_garbage_title($name)) {
        return false;
    }

    $mapping = mx2_mapping_data();

    if ($parsed['vid'] !== '' && $episode > 0) {
        $key = 'vid:' . $parsed['vid'];
        if (!isset($mapping['episode']) || !is_array($mapping['episode'])) {
            $mapping['episode'] = [];
        }
        if (!isset($mapping['episode'][$key])) {
            $mapping['episode'][$key] = ['name' => $name, 'episode' => (int)$episode];
            return mx2_write_json(MX2_CONFIG . '/mapping.json', $mapping);
        }
    }

    if ($parsed['cid'] !== '') {
        $cidKey = $parsed['cid'];
        if (!isset($mapping['cid']) || !is_array($mapping['cid'])) {
            $mapping['cid'] = [];
        }
        if (!isset($mapping['cid'][$cidKey])) {
            $mapping['cid'][$cidKey] = $name;
            return mx2_write_json(MX2_CONFIG . '/mapping.json', $mapping);
        }
    }

    return false;
}

/* ---------------------------------------------------------------------------
 * 后台管理辅助（mx2/admin.php 使用）
 * ------------------------------------------------------------------------- */

function mx2_admin_is_ajax() {
    return !empty($_SERVER['HTTP_X_REQUESTED_WITH'])
        && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) === 'xmlhttprequest';
}

function mx2_admin_save_ok(string $tab, string $msg = '已保存') {
    mx2_purge_cache();
    if (mx2_admin_is_ajax()) {
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode(['ok' => true, 'msg' => $msg], JSON_UNESCAPED_UNICODE);
        exit;
    }
    header('Location: admin.php?tab=' . urlencode($tab) . '&saved=1');
    exit;
}

function mx2_admin_save_fail(string $file, string $hint = '') {
    $envOk = is_dir(MX2_CONFIG) && is_writable(MX2_CONFIG);
    $hint = $hint !== '' ? $hint : (
        $envOk ? "写入文件失败：" . $file . "（磁盘空间 / 目录权限）"
               : MX2_CONFIG . " 目录不可写，请 chmod 777 " . MX2_CONFIG
    );
    http_response_code(500);
    echo '<!doctype html><html><head><meta charset="utf-8"><title>保存失败</title>';
    echo '<style>body{font-family:-apple-system,Segoe UI,sans-serif;background:#fef2f2;color:#7f1d1d;padding:40px;line-height:1.7}';
    echo '.box{max-width:640px;margin:40px auto;background:#fff;border:1px solid #fecaca;border-radius:12px;padding:28px}';
    echo 'h1{color:#b91c1c;margin-top:0;font-size:18px}code{background:#f1f5f9;padding:2px 6px;border-radius:4px;font-size:12px}</style></head><body>';
    echo '<div class="box"><h1>🚨 保存失败</h1>';
    echo '<p><strong>' . htmlspecialchars($hint) . '</strong></p>';
    echo '<p>目标文件：<code>' . htmlspecialchars($file) . '</code></p>';
    echo '<p style="font-size:12px;color:#94a3b8;margin-top:12px">检查 <code>' . MX2_DATA . '/logs/</code> 可以看到详细日志</p>';
    echo '<p><a href="javascript:history.back()" style="color:#4f7cff;text-decoration:none">← 返回上一页</a></p></div></body></html>';
    exit;
}

/** 清理运行时缓存：搜索缓存、站点健康 */
function mx2_purge_cache() {
    $cacheDir = MX2_CACHE;
    if (is_dir($cacheDir)) {
        foreach (glob($cacheDir . '/*.cache') ?: array() as $f) { @unlink($f); }
        foreach (glob($cacheDir . '/*') ?: array() as $f) { if (is_file($f)) @unlink($f); }
    }
    $health = MX2_DATA . '/site_health.json';
    if (is_file($health)) { @unlink($health); }
}

/** settings.json 加 admin_password 字段默认值 */
function mx2_admin_password() {
    $st = mx2_settings();
    if (!empty($st['admin_password'])) {
        return (string)$st['admin_password'];
    }
    // 首次访问自动补默认密码 moxi123 到 settings.json
    $st['admin_password'] = 'moxi123';
    mx2_write_json(MX2_CONFIG . '/settings.json', $st);
    return 'moxi123';
}
