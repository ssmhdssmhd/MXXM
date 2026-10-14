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

function mx2_write_json(string $file, array $data): bool
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

function mx2_settings(): array
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

function mx2_sites(): array
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

function mx2_mapping_data(): array
{
    return mx2_read_json(MX2_CONFIG . '/mapping.json', ['title' => [], 'cid' => [], 'episode' => []]);
}

function mx2_sites_by_role(array $sites, string $role = 'primary'): array
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

function mx2_mapping_enabled(array $mapping, string $sec, string $key): bool
{
    $disabled = $mapping['disabled'][$sec] ?? [];
    return is_array($disabled) ? !in_array($key, $disabled, true) : true;
}

/* ---------------------------------------------------------------------------
 * 工具函数
 * ------------------------------------------------------------------------- */

function mx2_lower(string $s): string
{
    return function_exists('mb_strtolower') ? mb_strtolower($s) : strtolower($s);
}

function mx2_b64url(string $s): string
{
    return rtrim(strtr(base64_encode($s), '+/', '-_'), '=');
}

function mx2_b64url_decode(string $s): string
{
    $s = strtr(trim($s ?? ''), '-_', '+/');
    $pad = strlen($s) % 4;
    if ($pad > 0) {
        $s .= str_repeat('=', 4 - $pad);
    }
    $dec = base64_decode($s, true);
    return $dec === false ? '' : $dec;
}

function mx2_json_out(array $data, int $status = 200): void
{
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

function mx2_apply_proxy($ch, string $url): void
{
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

function mx2_current_host(): string
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

function mx2_player_url(string $rawUrl): string
{
    $host = mx2_current_host();
    return $host . '/mx2/player.php?url=' . rawurlencode($rawUrl);
}

function mx2_request_id(): string
{
    static $rid = null;
    if ($rid !== null) return $rid;
    $rid = substr(bin2hex(random_bytes(8)), 0, 16);
    return $rid;
}

function mx2_is_garbage_title(string $title): bool
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

function mx2_auto_mapping(array $parsed, string $name, int $episode): bool
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
