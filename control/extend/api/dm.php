<?php
/*
 Name:将弹幕信息入库
 Version:1.0
*/
//if(!isset($app_res) or !is_array($app_res))out(100);//如果需要调用应用配置请先判断是否加载app配置
$a = isset($_GET['a']) ? $_GET['a'] : 'list';
$key = '0cac62a921271e19ed0f4db36686559';
if (!in_array($a, ['list', 'add'])) out(100, '参数错误');

if ($a == 'add') {
	($sec = isset($_GET['sec']) ? $_GET['sec'] : 0) or out(100, '请输入秒数');
	($content = isset($_GET['content']) ? $_GET['content'] : '') or out(100, '请输入弹幕内容');
	$appid = isset($_GET['appid']) ? $_GET['appid'] : 10000;
	($url = isset($_GET['url']) ? $_GET['url'] : '') or out(100, '请输入视频地址');

	$ret = [];
	$data = [
		'url' => $url,
		'sec' => $sec,
		'content' => $content,
		'data' => json_encode([$sec, 'right', '#ffd4ff', '', $content, '', '', '24px'], JSON_UNESCAPED_UNICODE),
		'appid' => $appid,
		'addtime' => time()
	];

	$res = Db::table('dm')->add($data); //将弹幕信息入库
	if ($res) {
		out(200, '弹幕发送成功');
	} else {
		out(100, '弹幕发送失败');
	}
} else {
	($url = isset($_GET['url']) ? $_GET['url'] : '') or out(100, '请输入视频地址');
	$appid = isset($_GET['appid']) ? $_GET['appid'] : 10000;
	//先取出数据库中的数据
	$res = Db::table('dm')->where('appid', $appid)->where('url', $url)->select(); //获取弹幕列表
	// var_dump($res);die;

	if (is_array($res)) {
		$ret = [];
		$arrDmData = [];
		foreach ($res as $k => $v) {
			$rows = $res[$k];
			$ret[] = [
				'data' => $rows['data']
			];
			$arrDmData[] =  json_decode($rows['data'], true);
		}
		
		//如果弹幕关闭，就不取接口数据
		if ($res[0]['status_off'] == 1) {
			$resData = ['code' => 23, 'name' => $url, 'danum' => count($res), 'danmuku' => $arrDmData];
			// var_dump($resData);die;
			echo $arrResult = json_encode($resData, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);die;
			// out(200, $arrResult);
		} else {
			$dmConfig = Db::table('dm_config')->where('appid', $appid)->find();

			//再拿出接口获取的数据
			// $fullUrl = 'http://dm.cfysoft.cc/?ac=dm&key=cZnJNoHzbm&url=' . $url;
			$fullUrl = $dmConfig['url'] . $url;

			$apiContent = curl($fullUrl);

			$jsonContent = empty($apiContent['body']) ? json_encode([]) :  $apiContent['body'];
			// var_dump($fullUrl, $jsonContent);
			// die;
			$arrApiContent = json_decode($jsonContent, true);
			// var_dump($arrApiContent);die;
			if(empty($arrApiContent['code'])) {
				$arrApiContent['code'] = 201;
			}
			$arrDMContent = empty($arrApiContent['danmuku']) ? [] : $arrApiContent['danmuku'];
			// var_dump($arrDMContent);die;
			// var_dump($arrDmData);die;
			//合并数据
			$arrMerge = array_merge($arrDmData, $arrDMContent);
			// var_dump($arrMerge);die;
			$arrApiContent['danum'] = count($res) + intval($arrApiContent['danum']);
			$arrApiContent['danmuku'] = $arrMerge;
			echo $arrResult = json_encode($arrApiContent, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);die;
			//out(200, $arrResult);

		}

		if (empty($ret)) {
			// out(201, $ret, $app_res);
			out(201, $ret);
		} else {
			// out(200, rawurlencode($rows['content']), $app_res);
			out(200, $arrMerge);
		}
	}
	out(201, '弹幕列表加载失败');
}

// function curl_get(string $url): string
// {
// 	$ch = curl_init($url);
// 	curl_setopt_array($ch, [
// 		CURLOPT_RETURNTRANSFER => true,
// 		CURLOPT_TIMEOUT        => 5,
// 		CURLOPT_USERAGENT      => 'PHP Bot 1.0',
// 		CURLOPT_FOLLOWLOCATION => true,
// 	]);
// 	$result = curl_exec($ch);
// 	curl_close($ch);
// 	return $result ?: '';
// }

/**
 * 通用 cURL 封装
 *
 * @param string $url     请求地址
 * @param array  $options 可选参数
 *   - method  : GET | POST | PUT | DELETE ...（默认 GET）
 *   - data    : 请求体（数组或字符串，POST/PUT 时自动转成 http_build_query）
 *   - headers : 数组，例：['Accept: application/json', 'Authorization: Bearer xxx']
 *   - timeout : 超时秒数（默认 10）
 *   - ssl     : 是否验证 SSL 证书（默认 false，测试环境可关闭）
 *   - follow  : 是否跟随 30x 重定向（默认 true）
 *   - cookie  : cookie 文件路径或 true（true 时自动在脚本目录创建临时 cookie）
 *   - ua      : User-Agent 字符串
 * @return array  ['body'=>string, 'header'=>string, 'http_code'=>int, 'error'=>string]
 */
function curl(string $url, array $options = []): array
{
	// 默认值
	$defaults = [
		'method'  => 'GET',
		'data'    => '',
		'headers' => [],
		'timeout' => 1000,
		'ssl'     => false,
		'follow'  => true,
		'cookie'  => false,
		'ua'      => 'Mozilla/5.0 (compatible; cURL-Wrapper/1.0)',
	];
	$opt = array_merge($defaults, $options);

	$ch = curl_init($url);

	// 通用设置
	curl_setopt_array($ch, [
		CURLOPT_RETURNTRANSFER => true,
		CURLOPT_HEADER         => true,
		CURLOPT_TIMEOUT        => $opt['timeout'],
		CURLOPT_CONNECTTIMEOUT => $opt['timeout'],
		CURLOPT_USERAGENT      => $opt['ua'],
		CURLOPT_FOLLOWLOCATION => $opt['follow'],
		CURLOPT_SSL_VERIFYPEER => $opt['ssl'],
		CURLOPT_SSL_VERIFYHOST => $opt['ssl'] ? 2 : 0,
	]);

	// Cookie
	if ($opt['cookie']) {
		$cookieFile = is_string($opt['cookie']) ? $opt['cookie'] : tempnam(sys_get_temp_dir(), 'cookie_');
		curl_setopt($ch, CURLOPT_COOKIEJAR,  $cookieFile);
		curl_setopt($ch, CURLOPT_COOKIEFILE, $cookieFile);
	}

	// 自定义头
	if ($opt['headers']) {
		curl_setopt($ch, CURLOPT_HTTPHEADER, $opt['headers']);
	}

	// 请求方法 & 数据
	$method = strtoupper($opt['method']);
	if ($method === 'POST') {
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, is_array($opt['data']) ? http_build_query($opt['data']) : $opt['data']);
	} elseif ($method !== 'GET') {
		curl_setopt($ch, CURLOPT_CUSTOMREQUEST, $method);
		if ($opt['data']) {
			curl_setopt($ch, CURLOPT_POSTFIELDS, is_array($opt['data']) ? http_build_query($opt['data']) : $opt['data']);
		}
	}

	$response = curl_exec($ch);
	$error    = curl_error($ch);
	$info     = curl_getinfo($ch);
	curl_close($ch);

	// 分离 header / body
	$headerSize = $info['header_size'] ?? 0;
	$header     = substr($response, 0, $headerSize);
	$body       = substr($response, $headerSize);

	return [
		'body'      => $body,
		'header'    => $header,
		'http_code' => $info['http_code'] ?? 0,
		'error'     => $error,
	];
}
