<?php
/**
 * 官替算法 算法2 (mx2) - 日志记录
 *
 * 无数据库，按类型各存一个 JSON 文件（data/logs/{type}.json），最新在前。
 */
class Logger
{
    const TYPES = [
        'search'    => '搜索调用日志',
        'error'     => '错误日志',
        'config'    => '配置日志',
    ];

    const MAX_PER_TYPE = 500;

    public static function dir(): string
    {
        $dir = MX2_DATA . '/logs';
        if (!is_dir($dir)) {
            @mkdir($dir, 0777, true);
        }
        return $dir;
    }

    public static function file(string $type): string
    {
        $type = self::sanitize($type);
        return self::dir() . '/' . $type . '.json';
    }

    private static function sanitize(string $type): string
    {
        return isset(self::TYPES[$type]) ? $type : 'error';
    }

    public static function log(string $type, string $msg, string $level = 'info', array $extra = [])    {
        $type = self::sanitize($type);
        $file = self::file($type);

        $rows   = self::readAll($file);
        $rows[] = [
            'time'     => time(),
            'time_str' => date('Y-m-d H:i:s'),
            'level'    => $level,
            'msg'      => $msg,
            'extra'    => $extra,
        ];
        $rows = array_slice(array_reverse($rows), 0, self::MAX_PER_TYPE);

        @file_put_contents($file, json_encode($rows, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT), LOCK_EX);
    }

    public static function read(string $type, int $limit = 100): array
    {
        $type = self::sanitize($type);
        $rows = self::readAll(self::file($type));
        return $limit > 0 ? array_slice($rows, 0, $limit) : $rows;
    }

    private static function readAll(string $file): array
    {
        if (!is_file($file)) {
            return [];
        }
        $content = @file_get_contents($file);
        if ($content === false || trim($content) === '') {
            return [];
        }
        $data = json_decode($content, true);
        return is_array($data) ? $data : [];
    }

    public static function clear(string $type): int
    {
        $type = self::sanitize($type);
        $file = self::file($type);
        $n    = count(self::readAll($file));
        @unlink($file);
        return $n;
    }

    public static function clearAll(): array
    {
        $out = [];
        foreach (self::TYPES as $type => $label) {
            $out[$type] = self::clear($type);
        }
        return $out;
    }
}
