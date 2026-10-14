<?php
/**
 * 官替算法 算法2 (mx2) - 文件缓存
 *
 * 用于缓存资源站搜索结果，避免频繁请求外部资源站。
 */

class Cache
{
    public static function get(string $key, $default = null)
    {
        $file = self::file($key);
        if (!is_file($file)) {
            return $default;
        }
        $raw = @file_get_contents($file);
        if ($raw === false) {
            return $default;
        }
        $data = @unserialize($raw);
        if (!is_array($data) || !isset($data['expire'], $data['value'])) {
            @unlink($file);
            return $default;
        }

        $now = time();

        if ($data['expire'] > 0 && $data['expire'] < $now) {
            @unlink($file);
            return $default;
        }

        // cache_ttl 变更感知
        $original_ttl = 0;
        if (!empty($data['ttl']) && $data['ttl'] > 0) {
            $original_ttl = $data['ttl'];
        } elseif (!empty($data['value']['time']) && $data['expire'] > $data['value']['time']) {
            $original_ttl = $data['expire'] - $data['value']['time'];
        }

        if ($original_ttl > 0) {
            try {
                $current_ttl = 600;
                if (function_exists('mx2_settings')) {
                    $st = mx2_settings();
                    $current_ttl = (int)($st['cache_ttl'] ?? 600);
                }
                if ($current_ttl > 0 && $current_ttl < $original_ttl) {
                    $written_at = $data['expire'] - $original_ttl;
                    $new_expire = $written_at + $current_ttl;
                    if ($new_expire < $now) {
                        @unlink($file);
                        return $default;
                    }
                }
            } catch (\Throwable $e) {
                // 跳过额外检查
            }
        }

        return $data['value'];
    }

    public static function set(string $key, $value, int $ttl = 600): bool
    {
        if (!is_dir(MX2_CACHE)) {
            @mkdir(MX2_CACHE, 0755, true);
        }
        $now = time();
        $data = [
            'expire' => $ttl > 0 ? $now + $ttl : 0,
            'ttl'    => $ttl,
            'time'   => $now,
            'value'  => $value,
        ];
        return @file_put_contents(self::file($key), serialize($data), LOCK_EX) !== false;
    }

    public static function file(string $key): string
    {
        return MX2_CACHE . '/' . md5($key) . '.cache';
    }

    public static function clearAll(): int
    {
        $n = 0;
        foreach (glob(MX2_CACHE . '/*.cache') ?: [] as $f) {
            if (@unlink($f)) $n++;
        }
        return $n;
    }
}
