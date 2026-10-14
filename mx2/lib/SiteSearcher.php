<?php
/**
 * 官替算法 算法2 (mx2) - 多线程资源站搜索
 *
 * 使用 PHP cURL 并发向后台配置的所有资源站同时搜索同一部剧对应集数，
 * 并在命中结果中优先返回分辨率更高的 m3u8 地址。
 */

class SiteSearcher
{
    public static function searchWithFallback(
        array $sites,
        string $title,
        int $episode,
        int $timeout = 15,
        array $fallbackCfg = []
    ) {
        $fallbackEnable = !empty($fallbackCfg['enable']);

        $primaryPool = mx2_sites_by_role($sites, 'primary');
        $result = self::search($primaryPool, $title, $episode, $timeout);
        $result['from_fallback'] = false;
        $result['from_pool']     = 'primary';

        if (($result['code'] ?? 0) === 200 && !empty($result['url'])) {
            return $result;
        }

        if (!$fallbackEnable) {
            return $result;
        }

        $fallbackPool = mx2_sites_by_role($sites, 'fallback');
        if ($fallbackPool === []) {
            $result['msg'] = ($result['msg'] ?? '') . '（平替已启用但未配置任何平替资源站）';
            return $result;
        }

        Logger::log(
            'search',
            '主池未命中，启动平替池搜索：《' . $title . '》第' . $episode . '集',
            'info',
            ['pool_count' => count($fallbackPool)]
        );

        $fbResult = self::search($fallbackPool, $title, $episode, $timeout);
        if (($fbResult['code'] ?? 0) === 200 && !empty($fbResult['url'])) {
            $fbResult['from_fallback'] = true;
            $fbResult['from_pool']     = 'fallback';
            $fbResult['msg']           = 'success (from fallback)';
            return $fbResult;
        }

        return $result;
    }

    public static function search(array $sites, string $title, int $episode, int $timeout = 15)
    {
        $title   = trim($title ?? '');
        $episode = max(0, (int)$episode);
        $errors  = [];

        if ($sites === []) {
            return ['code' => 501, 'url' => '', 'site' => '', 'msg' => '后台尚未配置任何资源站', 'episode' => $episode];
        }
        if ($title === '') {
            return ['code' => 502, 'url' => '', 'site' => '', 'msg' => '无法识别该链接对应的剧名', 'episode' => $episode];
        }

        $pool = SiteHealth::usable($sites, $timeout);
        if ($pool === []) {
            return ['code' => 503, 'url' => '', 'site' => '', 'msg' => '所有资源站当前均不可用/在冷却期/被节流', 'episode' => $episode];
        }

        $handles = [];
        foreach ($pool as $item) {
            $site = $item['site'];
            $req  = self::buildRequest($site, $title, $episode);
            if ($req['url'] === '') {
                continue;
            }
            $handles[] = [
                'ch'    => self::makeHandle($req['url'], $timeout, $req),
                'site'  => $site,
                'key'   => $item['key'],
                't0'    => microtime(true),
                'url'   => $req['url'],
                'parse' => $req['parse'],
            ];
        }

        if ($handles === []) {
            return ['code' => 503, 'url' => '', 'site' => '', 'msg' => '资源站 URL 模板无法生成', 'episode' => $episode];
        }

        $multi = curl_multi_init();
        foreach ($handles as $h) {
            curl_multi_add_handle($multi, $h['ch']);
        }
        $running = null;
        do {
            $status = curl_multi_exec($multi, $running);
            if ($running > 0) {
                curl_multi_select($multi, 0.3);
            }
        } while ($running > 0 && $status === CURLM_OK);

        $candidates = [];
        foreach ($handles as $h) {
            $body = curl_multi_getcontent($h['ch']);
            $err  = curl_error($h['ch']);
            $ms   = (int)((microtime(true) - $h['t0']) * 1000);
            $ok   = false;
            if ($err !== '') {
                $errors[] = ($h['site']['name'] ?? $h['url']) . '：' . $err;
            }
            if ($body !== false && $body !== '') {
                $parsed = self::parseBody($body, $episode, (string)($h['parse'] ?? ''));
                if ($parsed['url'] !== '') {
                    $parsed['site']       = $h['site']['name'] ?? $h['url'];
                    $parsed['raw_url']    = $parsed['url'];
                    $parsed['url']        = self::finalizeUrl($parsed['url'], $h['site']);
                    $parsed['w']          = (int)($parsed['w'] ?? 0);
                    $parsed['site_special'] = !empty($h['site']['is_special']);
                    $candidates[]         = $parsed;
                    $ok = true;
                } elseif ($parsed['msg'] !== '') {
                    $errors[] = ($h['site']['name'] ?? $h['url']) . '：' . $parsed['msg'];
                }
            }
            curl_multi_remove_handle($multi, $h['ch']);
            @curl_close($h['ch']);
            SiteHealth::record($ok, $h['key'], $ms);
        }
        curl_multi_close($multi);

        if ($candidates === []) {
            return [
                'code'    => 404,
                'url'     => '',
                'site'    => '',
                'msg'     => '未找到《' . $title . '》第' . $episode . '集资源'
                          . ($errors ? '，详情：' . implode('；', array_slice($errors, 0, 3)) : ''),
                'episode' => $episode,
            ];
        }

        usort($candidates, function ($a, $b) {
            return ($b['w'] ?? 0) <=> ($a['w'] ?? 0);
        });
        $best = $candidates[0];

        return [
            'code'          => 200,
            'url'           => $best['url'],
            'site'          => $best['site'],
            'msg'           => 'success',
            'episode'       => $episode,
            'site_special'  => !empty($best['site_special']),
            'raw_url'       => $best['raw_url'] ?? '',
        ];
    }

    protected static function buildUrl(array $site, string $title, int $episode)
    {
        $tpl = $site['template'] ?? ($site['url'] ?? '');
        if (!is_string($tpl) || $tpl === '') {
            return '';
        }
        if (strpos($tpl, '%u') !== false || strpos($tpl, '%t') !== false || strpos($tpl, '%U') !== false || strpos($tpl, '%T') !== false) {
            $tpl = str_replace(['%U', '%T'], [rawurlencode($title), $title], $tpl);
            $tpl = str_replace(['%u', '%t'], [urlencode($title), $title], $tpl);
        }
        $tpl = str_replace(['%s', '%S', '%p'], [$title, $title, $episode], $tpl);
        return $tpl;
    }

    protected static function buildRequest(array $site, string $title, int $episode)
    {
        $method = mx2_lower(trim((string)($site['method'] ?? '')));
        if (!in_array($method, ['post'], true)) { $method = 'get'; }

        // 兼容 parser / parse 两种字段名
        $parseField = $site['parse'] ?? ($site['parser'] ?? '');
        $parse = mx2_lower(trim((string)$parseField));
        if (!in_array($parse, ['json', 'text', 'apple'], true)) { $parse = ''; }

        $url  = self::buildUrl($site, $title, $episode);

        // 兼容 post / post_body 两种字段名
        $postField = $site['post'] ?? ($site['post_body'] ?? '');
        $post = trim((string)$postField);
        if ($method === 'post' && $post === '') {
            $post = 'wd=%u&ep=%p';
        }
        if ($post !== '') {
            $post = str_replace(['%U', '%T'], [rawurlencode($title), $title], $post);
            $post = str_replace(['%u', '%t'], [urlencode($title), $title], $post);
            $post = str_replace(['%s', '%S', '%p'], [$title, $title, $episode], $post);
        }

        return [
            'url'    => $url,
            'method' => $method,
            'headers'=> self::normalizeHeaders($site),
            'post'   => $post,
            'parse'  => $parse,
        ];
    }

    protected static function normalizeHeaders(array $site)
    {
        $h = $site['headers'] ?? '';
        $out = [];
        if (is_array($h)) {
            foreach ($h as $k => $v) {
                if ($k !== '' && !is_int($k)) { $out[$k] = (string)$v; }
            }
            return $out;
        }
        $h = trim((string)$h);
        if ($h === '') { return []; }
        foreach (preg_split('/\r\n|\r|\n/', $h) as $line) {
            $line = trim($line ?? '');
            if ($line === '') { continue; }
            $p = strpos($line, ':');
            if ($p === false) { continue; }
            $k = trim(substr($line, 0, $p));
            $v = trim(substr($line, $p + 1));
            if ($k !== '') { $out[$k] = $v; }
        }
        return $out;
    }

    protected static function makeHandle(string $url, int $timeout, array $req = [])
    {
        $headers = ['Accept: application/json, text/plain, */*', 'Referer: ' . self::origin($url)];
        $custom  = (isset($req['headers']) && is_array($req['headers'])) ? $req['headers'] : [];
        foreach ($custom as $k => $v) {
            $headers[] = $k . ': ' . $v;
        }
        if (($req['method'] ?? 'get') === 'post') {
            $headers[] = 'Content-Type: application/x-www-form-urlencoded';
        }
        $opts = [
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_TIMEOUT        => $timeout,
            CURLOPT_CONNECTTIMEOUT => min(8, $timeout),
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_MAXREDIRS      => 5,
            CURLOPT_SSL_VERIFYPEER => false,
            CURLOPT_SSL_VERIFYHOST => false,
            CURLOPT_USERAGENT      => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36',
            CURLOPT_HTTPHEADER     => $headers,
        ];
        if (($req['method'] ?? 'get') === 'post') {
            $opts[CURLOPT_POST]  = true;
            $opts[CURLOPT_POSTFIELDS] = (string)($req['post'] ?? '');
        }
        $ch = curl_init($url);
        mx2_apply_proxy($ch, $url);
        curl_setopt_array($ch, $opts);
        return $ch;
    }

    protected static function origin(string $url)
    {
        $parts = parse_url($url);
        if (!isset($parts['scheme'], $parts['host'])) {
            return $url;
        }
        return $parts['scheme'] . '://' . $parts['host'] . ($parts['port'] ?? '') . '/';
    }

    protected static function parseBody(string $body, int $episode = 0, string $mode = '')
    {
        $body = ltrim($body, "\xEF\xBB\xBF \t\r\n");
        if ($body === '') {
            return ['url' => '', 'msg' => '返回为空', 'w' => 0];
        }
        if ($mode === 'text') {
            $body = trim($body ?? '');
            if (strpos($body, 'http') === 0 || substr($body, -5) === '.m3u8') {
                return ['url' => $body, 'msg' => '', 'w' => 0];
            }
            return ['url' => '', 'msg' => '非标准返回', 'w' => 0];
        }
        if (preg_match('~\{.*\}~s', $body, $m)) {
            $body = $m[0];
        }
        $data = json_decode($body, true);
        if (is_array($data)) {
            if ($mode === 'apple') {
                $src = (isset($data['list']) && is_array($data['list'])) ? $data['list'] : $data;
                return ['url' => self::extractAppleList($src, $episode), 'msg' => '', 'w' => 0];
            }
            $url = $data['url'] ?? $data['m3u8'] ?? ($data['data']['url'] ?? '');
            $w   = $data['w'] ?? $data['width'] ?? ($data['data']['w'] ?? 0);
            $msg = $data['msg'] ?? $data['message'] ?? '';
            if ($url !== '' && $url !== null) {
                return ['url' => (string)$url, 'msg' => '', 'w' => (int)$w];
            }
            if (isset($data['list']) && is_array($data['list'])) {
                $hit = self::extractAppleList($data['list'], $episode);
                if ($hit !== '') {
                    return ['url' => $hit, 'msg' => '', 'w' => 0];
                }
            }
            if ($mode === 'json') {
                return ['url' => '', 'msg' => $msg !== '' ? (string)$msg : '返回JSON但无播放地址', 'w' => (int)$w];
            }
            return ['url' => '', 'msg' => (string)$msg, 'w' => (int)$w];
        }
        if ($mode === 'json') {
            return ['url' => '', 'msg' => '返回内容不是JSON', 'w' => 0];
        }
        $body = trim($body ?? '');
        if (strpos($body, 'http') === 0 || substr($body, -5) === '.m3u8') {
            return ['url' => $body, 'msg' => '', 'w' => 0];
        }
        return ['url' => '', 'msg' => '非标准返回', 'w' => 0];
    }

    protected static function extractAppleList(array $list, int $episode)
    {
        $all    = [];
        $target = '';
        foreach ($list as $item) {
            $playUrl = (string)($item['vod_play_url'] ?? '');
            if ($playUrl === '') {
                continue;
            }
            foreach (explode('#', $playUrl) as $seg) {
                $seg = trim($seg ?? '');
                if ($seg === '') {
                    continue;
                }
                $parts = array_pad(explode('$', $seg, 2), 2, '');
                $label = $parts[0];
                $u     = $parts[1] !== '' ? $parts[1] : $parts[0];
                if (strpos($u, 'http') !== 0) {
                    continue;
                }
                $ep = 0;
                if (preg_match('~第?\s*(\d{1,4})\s*集~u', $label, $m)) {
                    $ep = (int)$m[1];
                }
                if ($ep > 0 && $episode > 0 && $ep === $episode) {
                    $target = $u;
                }
                $all[] = ['ep' => $ep, 'u' => $u];
            }
        }
        if ($target !== '') {
            return $target;
        }
        if ($all !== []) {
            $best = $all[0];
            if ($episode > 0) {
                $bestDiff = PHP_INT_MAX;
                foreach ($all as $c) {
                    $diff = abs($c['ep'] - $episode);
                    if ($c['ep'] > 0 && $diff < $bestDiff) {
                        $bestDiff = $diff;
                        $best     = $c;
                    }
                }
            }
            return $best['u'];
        }
        return '';
    }

    protected static function finalizeUrl(string $url, array $site)
    {
        $replace = mx2_settings()['replace_domain'] ?? '';
        if (is_string($replace) && $replace !== '') {
            $replace = rtrim($replace, '/');
            if (preg_match('~^(https?://[^/]+)~i', $url, $m)) {
                $url = $replace . '/' . ltrim(substr($url, strlen($m[1])), '/');
            }
        }
        $proxy = trim((string)($site['proxy'] ?? ''));
        if ($proxy !== '') {
            if (substr($proxy, -1) === '=') {
                $url = $proxy . $url;
            } else {
                $url = rtrim($proxy, '?&') . '?url=' . $url;
            }
        }
        return $url;
    }
}
