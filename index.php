<?php
/**
 * MXXM - PHP 项目入口
 * @package MXXM
 * @version v.0.0.1
 */

declare(strict_types=1);

// 定义项目根目录
define('ROOT_PATH', __DIR__);

// 加载配置
require_once ROOT_PATH . '/config.php';

// 简单的路由入口
$requestUri = parse_url($_SERVER['REQUEST_URI'] ?? '/', PHP_URL_PATH);

header('Content-Type: application/json; charset=utf-8');

echo json_encode([
    'code'    => 200,
    'name'    => 'MXXM',
    'version' => VERSION,
    'status'  => 'running',
    'time'    => date('Y-m-d H:i:s'),
], JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
