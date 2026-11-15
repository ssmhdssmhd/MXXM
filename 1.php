<?php
/**
 * 独立解析接口：域名/1.php?url=官方视频地址
 *
 * 业务代码来源：github.com/ssmhdssmhd/kanju-api
 * 由后台「脚本解析 → 独立 PHP 接口」同步并保存到 kanju/remote.php（含登录账号，不入库）
 *
 * 调用前必须通过系统防火墙（后台「防火墙设置」）校验：
 *   Blacklist::parse($CONFIG["BLACKLIST"])
 */

@set_time_limit(30);

$KANJU = array(
    'off'      => '1',                        // 接口总开关
    'firewall' => '1',                        // 是否启用系统防火墙校验
    'repo'     => 'ssmhdssmhd/kanju-api',     // 代码仓库
    'branch'   => 'main',
    'file'     => '1.php',
    'synced'   => '',
    'sync_msg' => '',
);

$__kanju_cfg = dirname(__FILE__) . '/save/kanju.config.php';
if (is_file($__kanju_cfg)) {
    $__kanju_saved = include $__kanju_cfg;
    if (is_array($__kanju_saved)) { $KANJU = array_merge($KANJU, $__kanju_saved); }
}

function kanju_out($code, $msg) {
    header('Content-Type: application/json; charset=utf-8');
    echo json_encode(array('code' => (int)$code, 'msg' => (string)$msg), JSON_UNESCAPED_UNICODE);
    exit;
}

if ((string)$KANJU['off'] !== '1') {
    kanju_out(403, '接口已关闭');
}

// 系统防火墙：未通过规则的请求会在此被拦截
if ((string)$KANJU['firewall'] === '1') {
    define('FCPATH', str_replace('\\', '/', dirname(__FILE__)));
    require_once FCPATH . '/include/class.main.php';
    if (is_file(FCPATH . '/save/config.php')) {
        require_once FCPATH . '/save/config.php';
        if (class_exists('Blacklist') && isset($CONFIG['BLACKLIST'])) {
            Blacklist::parse($CONFIG['BLACKLIST']);
        }
    }
}

$kanju_remote = dirname(__FILE__) . '/kanju/remote.php';
if (!is_file($kanju_remote)) {
    kanju_out(503, '接口代码未同步，请到后台脚本设置同步 kanju-api 代码');
}

// 业务代码（kanju-api）：/1.php?url=... 直接输出 JSON
require $kanju_remote;
