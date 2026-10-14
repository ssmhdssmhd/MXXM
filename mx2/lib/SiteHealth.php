<?php
/**
 * 官替算法 算法2 (mx2) - 资源站调用频率控制（SiteHealth）
 *
 * 通过「搜索节流 + 心跳探测 + 轮训分批」三项策略，降低对资源站的调用频率。
 */

class SiteHealth
{
    protected static function file()
    {
        return MX2_DATA . '/site_health.json';
    }

    protected static function keyFor(array $site)
    {
        $tpl = (string)($site['template'] ?? ($site['url'] ?? ''));
        return md5(mx2_lower(trim($tpl)));
    }

    protected static function state()
    {
        $s = mx2_read_json(self::file(), ['last_heartbeat' => 0, 'sites' => []]);
        if (!isset($s['last_heartbeat'])) { $s['last_heartbeat'] = 0; }
        if (!isset($s['sites']) || !is_array($s['sites'])) { $s['sites'] = []; }
        return $s;
    }

    protected static function save(array $state)    {
        @mkdir(MX2_DATA, 0755, true);
        mx2_write_json(self::file(), $state);
    }

    protected static function defaultHealth()
    {
        return [
            'enabled'     => true,
            'fail'        => 0,
            'disabled_at' => 0,
            'last_ok'     => 0,
            'last_fail'   => 0,
            'last_active' => 0,
            'ms'          => 0,
        ];
    }

    protected static function control()
    {
        $sc = mx2_settings()['site_control'] ?? [];
        return array_merge([
            'search_interval'   => 15,
            'heartbeat_enable'  => true,
            'heartbeat_interval'=> 600,
            'heartbeat_timeout' => 5,
            'heartbeat_max_fail'=> 3,
            'cooldown_seconds'  => 1800,
            'rotation_enable'   => true,
            'rotation_interval'=> 600,
            'max_sites_per_request' => 4,
        ], is_array($sc) ? $sc : []);
    }

    public static function usable(array $sites, int $timeout)
    {
        $ctl = self::control();

        if (!empty($ctl['heartbeat_enable'])) {
            self::heartbeatIfDue($sites, $ctl);
        }

        $state = self::state();
        $now   = time();
        $pool  = [];

        foreach ($sites as $site) {
            if (array_key_exists('enabled', $site) && empty($site['enabled'])) {
                continue;
            }
            $k = self::keyFor($site);
            $h = $state['sites'][$k] ?? self::defaultHealth();
            unset($state['sites'][$k]);

            if (empty($h['enabled']) && $now - (int)$h['disabled_at'] < (int)$ctl['cooldown_seconds']) {
                continue;
            }
            $si = (int)$ctl['search_interval'];
            if ($si > 0 && $now - (int)$h['last_active'] < $si) {
                continue;
            }

            $h['last_active'] = $now;
            $state['sites'][$k] = $h;
            $pool[] = ['site' => $site, 'key' => $k, 'health' => $h];
        }

        if (!empty($ctl['rotation_enable']) && count($pool) > 1) {
            $shift = (int)$ctl['rotation_interval'] > 0
                ? intdiv($now, (int)$ctl['rotation_interval']) % count($pool)
                : 0;
            if ($shift > 0) {
                $pool = array_merge(array_slice($pool, $shift), array_slice($pool, 0, $shift));
            }
        }

        $max = (int)$ctl['max_sites_per_request'];
        if ($max > 0) {
            $pool = array_slice($pool, 0, $max);
        }

        self::save($state);
        return $pool;
    }

    public static function record(bool $ok, string $key, int $ms = 0)    {
        $state = self::state();
        $ctl   = self::control();
        $h     = $state['sites'][$key] ?? self::defaultHealth();
        $now   = time();

        if ($ok) {
            $h['enabled']     = true;
            $h['fail']        = 0;
            $h['last_ok']     = $now;
            if ($ms > 0) { $h['ms'] = (int)($h['ms'] ? ($h['ms'] * 3 + $ms) / 4 : $ms); }
        } else {
            $h['last_fail'] = $now;
            $h['fail']      = (int)$h['fail'] + 1;
            if ((int)$h['fail'] >= (int)$ctl['heartbeat_max_fail']) {
                $h['enabled']     = false;
                $h['disabled_at'] = $now;
            }
        }
        $state['sites'][$key] = $h;
        self::save($state);
    }

    public static function probeAllNow()
    {
        $ctl   = self::control();
        $sites = mx2_sites();
        if ($sites === []) {
            return ['ok' => false, 'msg' => '后台未配置资源站'];
        }
        $probes = self::probe($sites, (int)$ctl['heartbeat_timeout']);
        $state  = self::state();
        $now    = time();
        $rows   = [];
        foreach ($sites as $site) {
            if (array_key_exists('enabled', $site) && empty($site['enabled'])) {
                continue;
            }
            $k = self::keyFor($site);
            $h = $state['sites'][$k] ?? self::defaultHealth();
            $r = $probes[$k] ?? ['ok' => false, 'ms' => 0];
            if (!empty($r['ok'])) {
                $h['enabled'] = true; $h['fail'] = 0; $h['last_ok'] = $now;
            } else {
                $h['last_fail'] = $now; $h['fail'] = (int)$h['fail'] + 1;
                if ((int)$h['fail'] >= (int)$ctl['heartbeat_max_fail']) {
                    $h['enabled'] = false; $h['disabled_at'] = $now;
                }
            }
            if (!empty($r['ms'])) { $h['ms'] = (int)$r['ms']; }
            $state['sites'][$k] = $h;
            $rows[] = [
                'name'    => $site['name'] ?? $site['url'],
                'ok'      => !empty($r['ok']),
                'ms'      => (int)($r['ms'] ?? 0),
                'enabled' => !empty($h['enabled']),
                'fail'    => (int)$h['fail'],
            ];
        }
        $state['last_heartbeat'] = $now;
        self::save($state);
        return ['ok' => true, 'rows' => $rows, 'at' => date('Y-m-d H:i:s'), 'msg' => '心跳检测完成'];
    }

    public static function reset()    {
        $state = ['last_heartbeat' => 0, 'sites' => []];
        self::save($state);
    }

    protected static function heartbeatIfDue(array $sites, array $ctl)    {
        $state = self::state();
        $now   = time();
        if ($now - (int)$state['last_heartbeat'] < (int)$ctl['heartbeat_interval']) {
            return;
        }
        $lock = MX2_DATA . '/heartbeat.lock';
        if (is_file($lock) && $now - (int)@file_get_contents($lock) < 10) {
            return;
        }
        @mkdir(MX2_DATA, 0755, true);
        @file_put_contents($lock, $now);

        $probes = self::probe($sites, (int)$ctl['heartbeat_timeout']);
        $hstate = self::state();
        foreach ($probes as $k => $r) {
            $h = $hstate['sites'][$k] ?? self::defaultHealth();
            if (!empty($r['ok']) && $r['ok'] === true) {
                $h['enabled'] = true;
                $h['fail']    = 0;
                $h['last_ok'] = $now;
            } else {
                $h['last_fail'] = $now;
                $h['fail']      = (int)$h['fail'] + 1;
                if ((int)$h['fail'] >= (int)$ctl['heartbeat_max_fail']) {
                    $h['enabled']     = false;
                    $h['disabled_at'] = $now;
                }
            }
            if (!empty($r['ms'])) { $h['ms'] = (int)$r['ms']; }
            $hstate['sites'][$k] = $h;
        }
        $hstate['last_heartbeat'] = $now;
        self::save($hstate);
        @unlink($lock);
    }

    protected static function probe(array $sites, int $timeout)
    {
        if ($timeout <= 0) { $timeout = 5; }
        $handles = [];
        foreach ($sites as $site) {
            $u = self::probeUrl($site);
            if ($u === '') { continue; }
            $ch = self::makeHandle($u, $timeout);
            $handles[] = ['key' => self::keyFor($site), 'ch' => $ch, 't0' => microtime(true)];
        }
        if ($handles === []) { return []; }

        $multi = curl_multi_init();
        foreach ($handles as $h) { curl_multi_add_handle($multi, $h['ch']); }
        $running = null;
        do {
            $status = curl_multi_exec($multi, $running);
            if ($running > 0) { curl_multi_select($multi, 0.2); }
        } while ($running > 0 && $status === CURLM_OK);

        $out = [];
        foreach ($handles as $h) {
            $code = curl_getinfo($h['ch'], CURLINFO_RESPONSE_CODE);
            $body = curl_multi_getcontent($h['ch']);
            $err  = curl_error($h['ch']);
            $ms   = (int)((microtime(true) - $h['t0']) * 1000);
            curl_multi_remove_handle($multi, $h['ch']);
            @curl_close($h['ch']);
            $ok = ($err === '' && $code >= 200 && $code < 300 && $body !== false && strlen($body) > 0);
            $out[$h['key']] = ['ok' => $ok, 'ms' => $ms];
        }
        curl_multi_close($multi);
        return $out;
    }

    protected static function probeUrl(array $site)
    {
        $tpl = (string)($site['template'] ?? ($site['url'] ?? ''));
        if ($tpl === '') { return ''; }
        $tpl = str_replace(['%u', '%U', '%t', '%T'], '', $tpl);
        $tpl = str_replace(['%s', '%S'], '', $tpl);
        $tpl = str_replace('%p', '1', $tpl);
        return $tpl;
    }

    protected static function makeHandle(string $url, int $timeout)
    {
        $ch = curl_init($url);
        curl_setopt_array($ch, [
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_TIMEOUT        => $timeout,
            CURLOPT_CONNECTTIMEOUT => min(5, $timeout),
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_MAXREDIRS      => 3,
            CURLOPT_SSL_VERIFYPEER => false,
            CURLOPT_SSL_VERIFYHOST => false,
            CURLOPT_USERAGENT      => 'MX2-Health/1.0',
        ]);
        return $ch;
    }
}
