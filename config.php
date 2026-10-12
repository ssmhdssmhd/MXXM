<?php
/**
 * MXXM - 项目配置
 * @package MXXM
 * @version v.0.0.1
 */

declare(strict_types=1);

// 版本号：v.主.次.修
define('VERSION', 'v.0.0.1');

// 时区
date_default_timezone_set('Asia/Shanghai');

// 错误显示（开发环境开启，生产环境关闭）
$isDev = true;
ini_set('display_errors', $isDev ? '1' : '0');
error_reporting($isDev ? E_ALL : 0);

// CORS
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type');
