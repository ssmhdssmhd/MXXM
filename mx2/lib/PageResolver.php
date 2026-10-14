<?php
/**
 * 官替算法 算法2 (mx2) - 官方页面抓取解析
 *
 * 当从链接字符串中解析不出剧名/集数时，直接访问官方播放页抓取信息。
 */

class PageResolver
{
    public const SITE_WORDS = [
        '爱奇艺', '腾讯视频', 'v.qq.com', '优酷', '芒果TV', '芒果tv', 'hunantv',
        '哔哩哔哩', 'bilibili', 'pptv', '搜狐视频', '土豆视频',
        '在线观看', '完整版', '在线视频', '手机在线', '手机版', '高清全集',
        '全集', '高清', '正版', '电视剧', '电影', '综艺', '动漫', 'MV',
        '预告片', '花絮', '独播', 'BD版', 'DVD版',
    ];

    public const REJECT_WORDS = [
        '页面不存在', '不存在', '未找到', '找不到', '错误', '出错了', '404', 'not found',
        '回首页', '首页', '网站维护', '加载失败', '请求失败', '获取失败', '无权',
        '无法访问', '信息不存在', '该内容', '已下线', '在线视频网站', '网络电视',
        '视频网站', '播放器', '登录', '注册',
    ];

    public static function resolve(string $url, int $fallbackEpisode = 0, int $timeout = 15)
    {
        $attempts = [$url];
        $m = self::mobileVariant($url);
        if ($m !== null && $m !== $url) {
            $attempts[] = $m;
        }

        foreach ($attempts as $u) {
            $html = self::fetch($u, $timeout);
            if ($html === '') {
                continue;
            }
            $title = self::extractTitle($html);
            if ($title === '' || self::isRejected($title)) {
                continue;
            }
            $episode = 0;
            $cleaned = self::clean($title, $episode);
            if ($cleaned === '' || in_array($cleaned, self::SITE_WORDS, true)) {
                continue;
            }
            return [
                'title' => $cleaned,
                'episode' => $episode > 0 ? $episode : $fallbackEpisode,
                'from' => 'page',
            ];
        }
        return ['title' => '', 'episode' => 0, 'from' => ''];
    }

    protected static function mobileVariant(string $url): ?string
    {
        $parts = parse_url($url);
        if (!isset($parts['host'])) {
            return null;
        }
        $host = strtolower($parts['host']);
        static $map = [
            'iqiyi.com'      => 'm.iqiyi.com',
            'www.iqiyi.com'  => 'm.iqiyi.com',
            'youku.com'      => 'm.youku.com',
            'www.youku.com'  => 'm.youku.com',
            'v.youku.com'    => 'm.youku.com',
            'mgtv.com'       => 'm.mgtv.com',
            'www.mgtv.com'   => 'm.mgtv.com',
            'bilibili.com'   => 'm.bilibili.com',
            'www.bilibili.com' => 'm.bilibili.com',
            'v.qq.com'       => 'm.v.qq.com',
            'qq.com'         => 'm.v.qq.com',
            'tv.sohu.com'    => 'm.tv.sohu.com',
            'www.sohu.com'   => 'm.tv.sohu.com',
            'sohu.com'       => 'm.tv.sohu.com',
        ];
        if (!isset($map[$host])) {
            return null;
        }
        $parts['host'] = $map[$host];
        $scheme = isset($parts['scheme']) ? $parts['scheme'] . '://' : '//';
        $auth = '';
        if (isset($parts['user'])) {
            $auth = $parts['user'] . (isset($parts['pass']) ? ':' . $parts['pass'] : '') . '@';
        }
        $url2 = $scheme . $auth . $parts['host'];
        $url2 .= isset($parts['port']) ? ':' . $parts['port'] : '';
        $url2 .= $parts['path'] ?? '';
        if (isset($parts['query'])) {
            $url2 .= '?' . $parts['query'];
        }
        if (isset($parts['fragment'])) {
            $url2 .= '#' . $parts['fragment'];
        }
        return $url2;
    }

    protected static function isRejected(string $title)
    {
        $low = mx2_lower($title);
        foreach (self::REJECT_WORDS as $w) {
            if (strpos($low, mx2_lower($w)) !== false) {
                return true;
            }
        }
        return false;
    }

    protected static function fetch(string $url, int $timeout)
    {
        $ch = curl_init($url);
        curl_setopt_array($ch, [
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_TIMEOUT        => $timeout,
            CURLOPT_CONNECTTIMEOUT => min(8, $timeout),
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_MAXREDIRS      => 4,
            CURLOPT_SSL_VERIFYPEER => false,
            CURLOPT_SSL_VERIFYHOST => false,
            CURLOPT_USERAGENT      => 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Mobile/15E148 Safari/604.1',
            CURLOPT_HTTPHEADER     => ['Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'],
        ]);
        $body = curl_exec($ch);
        $err  = curl_error($ch);
        curl_close($ch);
        if ($err !== '' || !is_string($body)) {
            return '';
        }
        return $body;
    }

    protected static function extractTitle(string $html)
    {
        if (preg_match('~<title[^>]*>(.*?)</title>~is', $html, $m)) {
            $title = trim(html_entity_decode($m[1] ?? '', ENT_QUOTES | ENT_HTML5, 'UTF-8'));
            $title = preg_replace('/\s+/u', ' ', $title) ?? $title;
            return trim($title, " \t\r\n-|") ?: '';
        }
        return '';
    }

    protected static function clean(string $raw, int &$episode)
    {
        $s = $raw;

        if (preg_match('~第\s*(\d{1,4})\s*[集话期回场]~u', $s, $m)) {
            $episode = (int)$m[1];
            $s = str_replace($m[0], '', $s);
        } elseif (preg_match('~(?:EP|ep|E)\s*(\d{1,4})~', $s, $m2)) {
            $episode = (int)$m2[1];
            $s = str_replace($m2[0], '', $s);
        }

        $segments = preg_split('#[-_|,，、&~()\[\]【】\s]+#u', $s, -1, PREG_SPLIT_NO_EMPTY);
        foreach ($segments as $seg) {
            $seg = trim($seg ?? '');
            if ($seg === '') {
                continue;
            }
            if (in_array($seg, self::SITE_WORDS, true)) {
                continue;
            }
            if (preg_match('/\p{Han}/u', $seg)) {
                $clean = self::stripTailWords($seg);
                if ($clean !== '' && preg_match('/\p{Han}/u', $clean)) {
                    return mb_substr($clean, 0, 60);
                }
            }
        }

        $s = trim(preg_replace('#[-_|,，、&~\s]+#u', '', $s));
        return mb_substr($s, 0, 60);
    }

    protected static function stripTailWords(string $seg)
    {
        $tails = ['视频', '全集', '高清', '完整版', '完整', '在线', '剧场版', '国语版', '粤语版', '国语', '粤语', '超清', '会员版', '官方', '中字', '无水印', '蓝光', 'HD版'];
        $prev = '';
        while ($seg !== $prev) {
            $prev = $seg;
            foreach ($tails as $tw) {
                if ($seg !== '' && mb_strlen($seg) > mb_strlen($tw) && mb_substr($seg, -mb_strlen($tw)) === $tw) {
                    $seg = mb_substr($seg, 0, -mb_strlen($tw));
                }
            }
        }
        return trim($seg, " \t\r\n-|,，、&");
    }
}
