<?php
@header("Content-type: application/json;charset=utf-8");
error_reporting(0);
ini_set('display_errors', 0);
set_time_limit(60);

define('SELF', pathinfo(__FILE__, PATHINFO_BASENAME));
define('FCPATH', str_replace("\\", "/", str_replace(SELF, '', __FILE__)));
define('VOD_PIC_ENABLED', true);//开启抓取图片。关闭不抓取

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $callback = isset($_GET['callback']) ? $_GET['callback'] : '';

    if (stristr($id, ".com") !== false) {
        $id = extract_id_from_url($id);
    }

    if (!is_numeric($id)) {
        echo $callback . '({"code":103,"msg":"Invalid ID"});';
        exit;
    }

    $url = 'https://movie.douban.com/subject/' . $id . '/';
    $data = fetch_douban_safe($url);

    if (empty($data)) {
        echo $callback . '({"code":104,"msg":"Failed to fetch data"});';
        exit;
    }

    $vod_info = parse_douban_page($data);
    $info = build_response_data($vod_info, $id);
    $json_info = json_encode($info, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
    $json_info = format_json_output($json_info);

    $vurl = '({
  "code": 1,
  "msg": "OneDream 2026-5-8 17:00:53 修复",
  "data": ' . $json_info . '
});';

    echo $callback . $vurl;
} else {
    $callback = isset($_GET['callback']) ? $_GET['callback'] : '';
    echo $callback . '({
  "code": 102,
  "msg": "OneDream 2026-5-8 17:00:53 修复"
});';
}

function fetch_douban_safe($targetUrl) {
    $userAgent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36';

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $targetUrl);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
    curl_setopt($ch, CURLOPT_USERAGENT, $userAgent);
    curl_setopt($ch, CURLOPT_REFERER, 'https://movie.douban.com/');
    curl_setopt($ch, CURLOPT_COOKIEFILE, '');
    curl_setopt($ch, CURLOPT_TIMEOUT, 30);

    $html = curl_exec($ch);
    $info = curl_getinfo($ch);
    $effectiveUrl = $info['url'];

    if (strpos($html, 'id="tok"') === false || strpos($html, 'id="cha"') === false) {
        curl_close($ch);
        return $html;
    }

    preg_match('/id="tok" name="tok" value="([^"]+)"/', $html, $tokMatch);
    preg_match('/id="cha" name="cha" value="([^"]+)"/', $html, $chaMatch);
    preg_match('/id="red" name="red" value="([^"]+)"/', $html, $redMatch);

    $tok = isset($tokMatch[1]) ? $tokMatch[1] : '';
    $cha = isset($chaMatch[1]) ? $chaMatch[1] : '';
    $red = isset($redMatch[1]) ? $redMatch[1] : '';

    $nonce = 0;
    $target = str_repeat('0', 4);
    while (true) {
        $nonce++;
        $hash = hash('sha512', $cha . $nonce);
        if (substr($hash, 0, 4) === $target) {
            break;
        }
    }

    $postData = http_build_query(array(
        'tok' => $tok,
        'cha' => $cha,
        'sol' => $nonce,
        'red' => $red
    ));

    curl_setopt($ch, CURLOPT_URL, $effectiveUrl);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $postData);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'Content-Type: application/x-www-form-urlencoded',
        'Origin: https://movie.douban.com',
        'Referer: ' . $targetUrl,
        'User-Agent: ' . $userAgent
    ));

    $realHtml = curl_exec($ch);
    curl_close($ch);

    return $realHtml;
}

function extract_id_from_url($url) {
    return str_substr('subject/', '/', $url);
}

function parse_douban_page($data) {
    $vod_info = array();
    $dom = new DOMDocument();
    libxml_use_internal_errors(true);
    $dom->loadHTML(mb_convert_encoding($data, 'HTML-ENTITIES', 'UTF-8'));
    libxml_clear_errors();
    $xpath = new DOMXPath($dom);

    $getMeta = function($p) use ($xpath) {
        $n = $xpath->query("//meta[@property='$p']/@content");
        return $n->length > 0 ? trim($n->item(0)->nodeValue) : '';
    };

    $getMultiMeta = function($p) use ($xpath) {
        $r = array();
        foreach ($xpath->query("//meta[@property='$p']/@content") as $node) {
            $r[] = trim($node->nodeValue);
        }
        return implode('，', $r);
    };

    $meta = array(
        'og:title' => $getMeta('og:title'),
        'og:description' => $getMeta('og:description'),
        'og:image' => $getMeta('og:image'),
        'og:url' => $getMeta('og:url'),
        'video:actor' => $getMultiMeta('video:actor'),
        'video:director' => $getMultiMeta('video:director'),
        'video:duration' => $getMeta('video:duration')
    );

    $vod_info['score'] = str_substr('<strong class="ll rating_num" property="v:average">', '</strong>', $data);
    $vod_info['reurl'] = str_substr('data-url="', '"', $data);
    $vod_info['name'] = str_substr('<span property="v:itemreviewed">', '</span>', $data);
    $vod_info['year'] = str_substr('<span class="year">(', ')</span>', $data);
    $vod_info['director'] = clean_html(str_substr("导演</span>: <span class='attrs'>", "</a></span></span><br/>", $data));
    $vod_info['actor'] = clean_html(str_substr("主演</span>: <span class='attrs'>", "</span></span><br/>", $data));
    $vod_info['writer'] = clean_html(str_substr("编剧</span>: <span class='attrs'>", "</span></span><br/>", $data));
    $vod_info['class'] = clean_html(str_substr("类型:</span> ", "<br/>", $data));
    $vod_info['area'] = clean_html(str_substr("制片国家/地区:</span> ", "<br/>", $data));
    $vod_info['lang'] = clean_html(str_substr("语言:</span> ", "<br/>", $data));
    $vod_info['sub'] = clean_html(str_substr("又名:</span> ", "<br/>", $data));

    $pubdate = str_substr('<span class="pl">首播:</span> <span property="v:initialReleaseDate" content="', '">', $data);
    if (empty($pubdate)) {
        $pubdate = clean_html(str_substr("上映日期:</span> ", "<br/>", $data));
    }
    $vod_info['pubdate'] = extract_yyyy_mm_dd($pubdate);

    $duration = str_substr('片长:</span> <span property="v:runtime" content="', '">', $data);
    if (empty($duration)) {
        $duration = str_substr('单集片长:</span> ', '<br/>', $data);
    }
    $vod_info['duration'] = extract_duration_number($duration);
    $vod_info['total'] = str_substr('<span class="pl">集数:</span> ', '<br/>', $data);
    if (empty($vod_info['total'])) $vod_info['total'] = '';

    if (VOD_PIC_ENABLED) {
        $vod_info['pic'] = $meta['og:image'] ? $meta['og:image'] : str_substr('"image": "', '"', $data);
    } else {
        $vod_info['pic'] = '';
    }

    $vod_info['content'] = clean_html(str_substr('<span class="all hidden">', '</span>', $data));
    if (empty($vod_info['content'])) {
        $vod_info['content'] = clean_html(str_substr('<span property="v:summary">', '</span>', $data));
    }
    if (empty($vod_info['content'])) {
        $vod_info['content'] = $meta['og:description'] ? $meta['og:description'] : '暂无详细剧情介绍';
    }

    $vod_info['name'] = $vod_info['name'] ? $vod_info['name'] : $meta['og:title'];
    $vod_info['reurl'] = $vod_info['reurl'] ? $vod_info['reurl'] : $meta['og:url'];
    $vod_info['actor'] = $vod_info['actor'] ? $vod_info['actor'] : $meta['video:actor'];
    $vod_info['director'] = $vod_info['director'] ? $vod_info['director'] : $meta['video:director'];
    $vod_info['duration'] = $vod_info['duration'] ? $vod_info['duration'] : $meta['video:duration'];

    return $vod_info;
}

function extract_yyyy_mm_dd($str) {
    preg_match('/\d{4}-\d{2}-\d{2}/', $str, $m);
    return isset($m[0]) ? $m[0] : $str;
}

function extract_duration_number($str) {
    preg_match('/\d+/', $str, $m);
    return isset($m[0]) ? $m[0] : $str;
}

function build_response_data($vod, $id) {
    $replace = function($s) {
        return str_replace('/', ',', $s);
    };

    return array(
        'vod_name' => $vod['name'],
        'vod_sub' => $replace($vod['sub']),
        'vod_year' => $vod['year'],
        'vod_lang' => $replace($vod['lang']),
        'vod_area' => $replace($vod['area']),
        'vod_pic' => $vod['pic'],
        'vod_total' => $vod['total'],
        'vod_serial' => '',
        'vod_isend' => 1,
        'vod_class' => $replace($vod['class']),
        'vod_tag' => '',
        'vod_actor' => $replace($vod['actor']),
        'vod_director' => $replace($vod['director']),
        'vod_pubdate' => $replace($vod['pubdate']),
        'vod_writer' => $replace($vod['writer']),
        'vod_score' => $vod['score'] ? $vod['score'] : rand(1,4).'.'.rand(0,9),
        'vod_score_num' => rand(100,1000),
        'vod_score_all' => rand(200,500),
        'vod_douban_score' => $vod['score'] ? $vod['score'] : rand(1,4).'.'.rand(0,9),
        'vod_duration' => strip_tags($vod['duration']),
        'vod_reurl' => $vod['reurl'],
        'vod_author' => '',
        'vod_content' => $vod['content'],
        'vod_douban_id' => $id
    );
}

function format_json_output($json) {
    $json = str_replace('    ', '  ', $json);
    return '  '.str_replace("\n", "\n  ", $json);
}

function str_substr($start, $end, $str) {
    if (!$start || !$end || !$str) return '';
    $a = explode($start, $str, 2);
    if (count($a) < 2) return '';
    $b = explode($end, $a[1], 2);
    return html_entity_decode(trim(isset($b[0]) ? $b[0] : ''), ENT_QUOTES, 'UTF-8');
}

function clean_html($s) {
    $s = strip_tags($s);
    $s = str_replace(array("\t","\r\n","\r","\n","　"), ' ', $s);
    return preg_replace('/\s+/', ' ', trim($s));
}
?>