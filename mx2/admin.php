<?php
/**
 * 官替算法 算法2 (mx2) - 资源站管理后台
 *
 * 独立后台，URL 形如：域名/mx2/admin.php?tab=sites
 * 登录密码默认 moxi123（存在 mx2/config/settings.json 的 admin_password 字段）
 *
 * 参考 MXGJ 沫兮官替系统 admin.php 风格，简化为 sites / mapping / settings 三个 tab
 */

error_reporting(E_ALL); ini_set("display_errors", "1"); ini_set("log_errors", "1");
require_once __DIR__ . "/bootstrap.php";

error_reporting(E_ALL); ini_set("display_errors", "1"); ini_set("log_errors", "1");

session_start();

$ACTION = $_POST['action'] ?? ($_GET['action'] ?? '');
$TAB    = $_GET['tab'] ?? 'sites';
$SAVED  = isset($_GET['saved']) ? 1 : 0;
$ERROR  = $_GET['error'] ?? '';

function isLoggedIn() {
    return !empty($_SESSION['mx2_admin']);
}

/* ---------------- ACTION ---------------- */

if ($ACTION === 'login') {
    $pwd = $_POST['password'] ?? '';
    if ($pwd !== '' && $pwd === mx2_admin_password()) {
        $_SESSION['mx2_admin'] = true;
        Logger::log('login', '后台登录成功', 'success', ['ip' => $_SERVER['REMOTE_ADDR'] ?? '']);
        header('Location: admin.php');
        exit;
    }
    Logger::log('login', '后台登录失败（密码错误）', 'error', ['ip' => $_SERVER['REMOTE_ADDR'] ?? '']);
    echo '<script>alert("密码错误");location.href="admin.php";</script>';
    exit;
}

if ($ACTION === 'logout') {
    $_SESSION = [];
    session_destroy();
    header('Location: admin.php');
    exit;
}

if (!isLoggedIn()) {
    renderLogin();
    exit;
}

// ---- save_sites ----
if ($ACTION === 'save_sites') {
    $list  = isset($_POST['sites']) && is_array($_POST['sites']) ? array_values($_POST['sites']) : [];
    $clean = [];
    foreach ($list as $s) {
        $name = trim($s['name'] ?? '');
        $url  = trim($s['template'] ?? ($s['url'] ?? ''));
        if ($name === '' || $url === '') continue;
        $method = strtolower(trim($s['method'] ?? ''));
        if (!in_array($method, ['post'], true)) $method = 'get';
        $parse  = strtolower(trim($s['parse'] ?? ''));
        if (!in_array($parse, ['json', 'text', 'apple'], true)) $parse = '';
        $role   = strtolower(trim($s['role'] ?? 'primary'));
        if (!in_array($role, ['primary', 'fallback'], true)) $role = 'primary';
        $clean[] = [
            'name'       => $name,
            'url'        => $url,
            'template'   => $url,
            'proxy'      => trim($s['proxy'] ?? ''),
            'enabled'    => array_key_exists('enabled', $s) ? !empty($s['enabled']) : true,
            'is_special' => array_key_exists('is_special', $s) ? !empty($s['is_special']) : false,
            'role'       => $role,
            'method'     => $method,
            'headers'    => trim($s['headers'] ?? ''),
            'post'       => trim($s['post'] ?? ''),
            'parse'      => $parse,
        ];
    }
    if (!mx2_write_json(MX2_CONFIG . '/sites.json', $clean)) {
        mx2_admin_save_fail(MX2_CONFIG . '/sites.json');
    }
    Logger::log('operation', '保存资源站列表（共 ' . count($clean) . ' 个）', 'success');
    mx2_admin_save_ok('sites', '已保存 ' . count($clean) . ' 个资源站');
}

// ---- save_mapping ----
if ($ACTION === 'save_mapping') {
    $oldMap = mx2_mapping_data();
    $mapping = ['title' => [], 'cid' => [], 'episode' => []];
    if (!empty($oldMap['stock']))    $mapping['stock']    = $oldMap['stock'];
    if (!empty($oldMap['disabled'])) $mapping['disabled'] = $oldMap['disabled'];

    $titles  = $_POST['map_title']  ?? [];
    $targets = $_POST['map_target'] ?? [];
    if (is_array($titles)) {
        foreach ($titles as $i => $t) {
            $t  = trim($t ?? '');
            $ta = trim($targets[$i] ?? '');
            if ($t === '' || $ta === '') continue;
            $mapping['title'][$t] = $ta;
        }
    }
    $cids   = $_POST['map_cid']       ?? [];
    $ctargs = $_POST['map_cid_target'] ?? [];
    if (is_array($cids)) {
        foreach ($cids as $i => $c) {
            $c  = trim($c ?? '');
            $ct = trim($ctargs[$i] ?? '');
            if ($c === '' || $ct === '') continue;
            $mapping['cid'][$c] = $ct;
        }
    }
    if (!mx2_write_json(MX2_CONFIG . '/mapping.json', $mapping)) {
        mx2_admin_save_fail(MX2_CONFIG . '/mapping.json');
    }
    Logger::log('operation', '保存映射表（title ' . count($mapping['title']) . ' / cid ' . count($mapping['cid']) . '）', 'success');
    mx2_admin_save_ok('mapping', '已保存映射表');
}

// ---- save_settings ----
if ($ACTION === 'save_settings') {
    $st = mx2_settings();
    $pwd = trim($_POST['admin_password'] ?? '');
    if ($pwd !== '') { $st['admin_password'] = $pwd; }
    $st['off']       = (!empty($_POST['off'])) ? '1' : '0';
    $st['timeout']   = max(1, (int)($_POST['timeout']   ?? 15));
    $st['cache_ttl'] = max(0, (int)($_POST['cache_ttl'] ?? 600));
    $st['replace_domain'] = trim($_POST['replace_domain'] ?? '');
    if (!mx2_write_json(MX2_CONFIG . '/settings.json', $st)) {
        mx2_admin_save_fail(MX2_CONFIG . '/settings.json');
    }
    Logger::log('operation', '保存算法2 全局设置', 'success');
    mx2_admin_save_ok('settings', '已保存全局设置');
}

// ---- test_site：单条资源站测试（前端 fetch 调）----
if ($ACTION === 'test_site') {
    header('Content-Type: application/json; charset=utf-8');
    $title    = trim((string)($_POST['title']   ?? ''));
    $episode  = max(1, (int)($_POST['episode']  ?? 1));
    $template = trim((string)($_POST['template'] ?? ''));
    if ($title === '' || $template === '') {
        echo json_encode(['ok' => false, 'msg' => '请填写剧名和模板'], JSON_UNESCAPED_UNICODE);
        exit;
    }
    $timeout = (int)(mx2_settings()['timeout'] ?? 15);
    // 临时 site 数组：用用户给的模板，走 SiteSearcher::search 一次
    $site = [
        'name'       => '测试站',
        'template'   => $template,
        'url'        => $template,
        'method'     => 'get',
        'parse'      => '',
        'headers'    => '',
        'post'       => '',
        'proxy'      => '',
        'role'       => 'primary',
        'enabled'    => true,
        'is_special' => false,
    ];
    // 用反射直接调 SiteSearcher::search
    $res = SiteSearcher::search([$site], $title, $episode, $timeout);
    echo json_encode([
        'ok'    => (int)($res['code'] ?? 0) === 200 && !empty($res['url']),
        'title' => $title,
        'ep'    => $episode,
        'result' => $res,
        'time'   => round((microtime(true) - ($_SERVER['REQUEST_TIME_FLOAT'] ?? microtime(true))) * 1000, 1) . 'ms',
    ], JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
    exit;
}

// ---- detect_site：粘贴采集接口 → 自动识别格式 + 生成搜索模板 ----
if ($ACTION === 'detect_site') {
    header('Content-Type: application/json; charset=utf-8');
    $url = trim((string)($_POST['url'] ?? ''));
    if ($url === '') {
        echo json_encode(['ok' => false, 'msg' => '请输入采集接口地址'], JSON_UNESCAPED_UNICODE);
        exit;
    }

    // 去掉所有已有参数，只保留 scheme + host + path
    $parts = parse_url($url);
    if (!$parts || empty($parts['scheme']) || empty($parts['host'])) {
        echo json_encode(['ok' => false, 'msg' => '无法解析该 URL'], JSON_UNESCAPED_UNICODE);
        exit;
    }
    $base = $parts['scheme'] . '://' . $parts['host'];
    if (!empty($parts['port'])) { $base .= ':' . $parts['port']; }
    $path = $parts['path'] ?? '';

    // 苹果CMS10 采集接口常见路径：/api.php/provide/vod/
    // 生成搜索模板：强制 ac=list（搜索列表）+ wd=%u（剧名URL编码）+ pg=%p（页码/集数）
    $tpl = rtrim($base . $path, '/');
    $nameFromPath = '自定义资源站';
    $typeGuess = 'apple'; // 苹果CMS JSON/XML 最常见

    // 尝试从 path 里抽出名字（api.jjzyapi.com → jjzyapi / caiji.xxx.com → xxx）
    if (preg_match('/api\.([a-z0-9]+)/i', $parts['host'], $m)) {
        $nameFromPath = strtoupper($m[1]);
    } elseif (preg_match('/^([a-z0-9]+)\./i', $parts['host'], $m)) {
        $nameFromPath = strtoupper($m[1]) . '资源站';
    }

    // 构造探测 URL —— 强制 ac=list，去掉所有 from/at 等筛选参数
    $probeBase = $tpl;
    // 如果原始路径带 /provide/vod/，构造完整搜索接口
    if (strpos($path, '/provide/vod') !== false) {
        // 苹果CMS 标准搜索接口
        $probeUrl = $base . '/api.php/provide/vod/?ac=list&wd=%E6%B5%8B%E8%AF%95&pg=1';
        $tpl      = $base . '/api.php/provide/vod/?ac=list&wd=%u&pg=%p';
        $typeGuess = 'apple';
    } else {
        // 普通搜索接口
        $probeUrl = $probeBase . (strpos($probeBase, '?') === false ? '?' : '&') . 'wd=%E6%B5%8B%E8%AF%95';
        $tpl      = $probeBase . (strpos($probeBase, '?') === false ? '?' : '&') . 'wd=%u&page=%p';
    }

    // 请求一次探测格式
    $ch = curl_init($probeUrl);
    curl_setopt_array($ch, [
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_TIMEOUT        => 8,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_SSL_VERIFYPEER => false,
        CURLOPT_USERAGENT      => 'Mozilla/5.0 (mx2 detect)',
    ]);
    $body = curl_exec($ch);
    $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
    $ct = curl_getinfo($ch, CURLINFO_CONTENT_TYPE);
    curl_close($ch);

    if (!$body || $httpCode === 0 || $httpCode >= 400) {
        echo json_encode([
            'ok' => false,
            'msg' => "探测失败（HTTP {$httpCode}）：接口超时或拒绝访问",
        ], JSON_UNESCAPED_UNICODE);
        exit;
    }

    // 分析返回格式
    $bodyTrim = trim($body);
    if ($bodyTrim !== '' && $bodyTrim[0] === '{') {
        $typeGuess = 'apple'; // 苹果CMS 也是 JSON
        $decoded = json_decode($bodyTrim, true);
        if (is_array($decoded) && !empty($decoded['list']) && is_array($decoded['list'])) {
            // 标准苹果CMS：{"list":[{vod_name:"..."}]}
            $typeGuess = 'apple';
        }
    } elseif ($bodyTrim !== '' && stripos($bodyTrim, '<?xml') === 0) {
        $typeGuess = 'apple'; // XML 也是苹果CMS 一种格式
    } else {
        $typeGuess = 'text'; // HTML列表页
    }

    // 尝试找样本（vod_name 字段）
    $sampleName = '';
    $sampleUrl  = '';
    if ($typeGuess === 'apple') {
        $arr = json_decode($bodyTrim, true);
        if (is_array($arr) && !empty($arr['list'][0])) {
            $sampleName = $arr['list'][0]['vod_name'] ?? '';
            $firstPlay  = $arr['list'][0]['vod_play_url'] ?? '';
            // 取第一个剧集的 URL
            if ($firstPlay && preg_match('/https?:\/\/[^\s$#]+/', $firstPlay, $mm)) {
                $sampleUrl = $mm[0];
            }
        }
    }

    echo json_encode([
        'ok'       => true,
        'type'     => $typeGuess,
        'name'     => $nameFromPath,
        'template' => $tpl,
        'parse'    => $typeGuess, // apple / text / json
        'sample'   => ['name' => $sampleName, 'url' => $sampleUrl],
        'hint'     => '自动探测完成，模板已生成，可微调后点「确认保存」入库。',
    ], JSON_UNESCAPED_UNICODE);
    exit;
}

// ---- save_site_one：单条新增（配合 detect_site）----
if ($ACTION === 'save_site_one') {
    header('Content-Type: application/json; charset=utf-8');
    $name = trim((string)($_POST['name']     ?? ''));
    $tpl  = trim((string)($_POST['template'] ?? ''));
    if ($name === '' || $tpl === '') {
        echo json_encode(['ok' => false, 'msg' => '站点名称和模板都必填'], JSON_UNESCAPED_UNICODE);
        exit;
    }
    $sites = mx2_sites();
    $newSite = [
        'name'       => $name,
        'template'   => $tpl,
        'url'        => $tpl,
        'proxy'      => '',
        'method'     => 'get',
        'parse'      => '',
        'headers'    => '',
        'post'       => '',
        'role'       => 'primary',
        'enabled'    => true,
        'is_special' => false,
    ];
    // 去重：同 template 不重复加
    foreach ($sites as $s) {
        if (($s['template'] ?? '') === $tpl) {
            echo json_encode(['ok' => false, 'msg' => '该资源站模板已存在（请直接编辑原记录）'], JSON_UNESCAPED_UNICODE);
            exit;
        }
    }
    $sites[] = $newSite;
    $ok = mx2_write_json(MX2_CONFIG . '/sites.json', $sites);
    if (!$ok) {
        echo json_encode(['ok' => false, 'msg' => '写入 sites.json 失败，请检查 config/ 目录权限'], JSON_UNESCAPED_UNICODE);
        exit;
    }
    mx2_purge_cache();
    Logger::log('operation', "自动添加资源站：{$name}", 'success');
    echo json_encode(['ok' => true, 'msg' => "已添加「{$name}」，缓存已清理"], JSON_UNESCAPED_UNICODE);
    exit;
}

/* ---------------- 渲染 ---------------- */

renderDashboard();

/* ============ 函数定义 ============ */

function renderLogin() {
    $cur = $_SERVER['REQUEST_URI'] ?? '';
    ?>
    <!doctype html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width">
    <title>算法2 资源站管理后台 - 登录</title>
    <style>
        *{box-sizing:border-box;margin:0;padding:0}
        body{min-height:100vh;display:flex;align-items:center;justify-content:center;background:linear-gradient(135deg,#0f172a 0%,#1e1b4b 50%,#312e81 100%);font-family:-apple-system,BlinkMacSystemFont,Segoe UI,sans-serif;color:#e2e8f0}
        .box{width:380px;background:rgba(15,23,42,0.7);backdrop-filter:blur(20px);border:1px solid rgba(99,102,241,0.3);border-radius:16px;padding:40px 32px;box-shadow:0 20px 60px rgba(0,0,0,0.4)}
        h1{font-size:20px;margin-bottom:8px;background:linear-gradient(135deg,#a5b4fc,#c4b5fd);-webkit-background-clip:text;background-clip:text;color:transparent}
        p.sub{font-size:12px;color:#64748b;margin-bottom:28px}
        label{display:block;font-size:12px;color:#94a3b8;margin-bottom:8px}
        input[type=password]{width:100%;padding:12px 14px;background:rgba(30,41,59,0.8);border:1px solid #334155;border-radius:8px;color:#e2e8f0;font-size:14px;outline:none;transition:border-color 0.2s}
        input[type=password]:focus{border-color:#6366f1}
        button{width:100%;margin-top:20px;padding:12px;background:linear-gradient(135deg,#6366f1,#8b5cf6);border:none;border-radius:8px;color:#fff;font-size:14px;font-weight:600;cursor:pointer;transition:transform 0.15s,box-shadow 0.2s;box-shadow:0 4px 14px rgba(99,102,241,0.3)}
        button:hover{transform:translateY(-1px);box-shadow:0 6px 20px rgba(99,102,241,0.5)}
        .tip{margin-top:18px;font-size:11px;color:#475569;text-align:center}
    </style></head><body>
    <div class="box">
        <h1>🔐 官替算法 算法2 (mx2)</h1>
        <p class="sub">资源站管理后台 · 默认密码 <code style="color:#a5b4fc">moxi123</code></p>
        <form method="post">
            <input type="hidden" name="action" value="login">
            <label>登录密码</label>
            <input type="password" name="password" autofocus placeholder="输入管理密码">
            <button type="submit">登 录</button>
        </form>
        <div class="tip">首次访问请使用默认密码，登录后到「设置」页修改</div>
    </div></body></html>
    <?php exit;
}

function renderDashboard() {
    global $TAB, $SAVED, $ERROR;

    $sites   = mx2_sites();
    $mapping = mx2_mapping_data();
    $st      = mx2_settings();

    $tabs = [
        'sites'    => '🛰️ 资源站列表',
        'mapping'  => '🗺️ 剧名 / cid 映射',
        'settings' => '⚙️ 全局设置',
        'logout'   => '🚪 退出',
    ];
    ?>
    <!doctype html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width">
    <title>算法2 (mx2) 资源站管理后台</title>
    <?php mx2_admin_css(); ?>
    </head><body>
    <div class="layout">
        <aside class="sidebar">
            <div class="brand">
                <div class="logo">MX2</div>
                <div class="brand-title">官替算法</div>
                <div class="brand-sub">算法2 · MXGJ 移植</div>
            </div>
            <nav>
                <?php foreach ($tabs as $k => $label): ?>
                    <?php if ($k === 'logout'): ?>
                        <a href="admin.php?action=logout" class="nav-item nav-logout">🚪 退出登录</a>
                    <?php else: ?>
                        <a href="admin.php?tab=<?= $k ?>" class="nav-item <?= $TAB === $k ? 'active' : '' ?>"><?= $label ?></a>
                    <?php endif; ?>
                <?php endforeach; ?>
            </nav>
            <div class="links">
                <a href="../../" target="_blank">← 主后台</a>
                <span class="sep">|</span>
                <a href="../" target="_blank">站点根</a>
            </div>
        </aside>

        <main class="main">
            <?php if ($SAVED): ?>
                <div class="flash flash-ok">✅ 已保存并清理缓存</div>
            <?php endif; ?>
            <?php if ($ERROR !== ''): ?>
                <div class="flash flash-err">⚠️ <?= htmlspecialchars($ERROR) ?></div>
            <?php endif; ?>

            <?php
            switch ($TAB) {
                case 'mapping':  renderMapping($mapping); break;
                case 'settings': renderSettings($st); break;
                case 'sites':
                default:         renderSites($sites); break;
            }
            ?>
        </main>
    </div>
    <script>
    var rowIndex = <?= count($sites) ?>;
    function addRow(){
        var tbl = document.getElementById('site-tbl');
        if(!tbl) return;
        var tr = document.createElement('tr');
        tr.innerHTML =
            '<td><input type="text" name="sites['+rowIndex+'][name]" placeholder="站点"></td>'+
            '<td><input type="text" name="sites['+rowIndex+'][template]" placeholder="http://api.example.com/vod?wd=%u&ep=%p" onclick="this.select()"></td>'+
            '<td><input type="text" name="sites['+rowIndex+'][proxy]" placeholder="如 https://vv00.xyz?url="></td>'+
            '<td class="site-special">'+
                '<select name="sites['+rowIndex+'][method]"><option value="get" selected>GET</option><option value="post">POST</option></select>'+
                '<select name="sites['+rowIndex+'][parse]"><option value="">自动</option><option value="json">JSON</option><option value="text">纯文本</option><option value="apple">苹果CMS</option></select>'+
                '<input type="text" name="sites['+rowIndex+'][headers]" placeholder="自定义Header（每行 Key: Value）">'+
                '<input type="text" name="sites['+rowIndex+'][post]" placeholder="POST体（如 wd=%u&ep=%p）">'+
            '</td>'+
            '<td><select name="sites['+rowIndex+'][role]"><option value="primary" selected>主用</option><option value="fallback">平替</option></select></td>'+
            '<td class="center"><label class="toggle"><input type="checkbox" name="sites['+rowIndex+'][is_special]" value="1"><span class="slider"></span></label></td>'+
            '<td class="center"><label class="toggle"><input type="checkbox" checked disabled><span class="slider"></span></label></td>'+
            '<td><button type="button" class="btn btn-danger" onclick="this.closest(\'tr\').remove()">删除</button></td>';
        tbl.appendChild(tr); rowIndex++;
    }
    function testSite(){
        var title = document.getElementById('tt-title').value;
        var ep    = document.getElementById('tt-ep').value;
        var tpl   = document.getElementById('tt-tpl').value;
        if(!title||!tpl){alert('请填写剧名和模板');return;}
        var out=document.getElementById('tt-out');out.style.display='block';out.textContent='测试中...';
        var fd=new FormData();
        fd.append('action','test_site');
        fd.append('title',title);
        fd.append('episode',ep);
        fd.append('template',tpl);
        fetch('admin.php',{method:'POST',body:fd})
            .then(function(r){return r.json();})
            .then(function(d){
                var ok = d.ok ? '✅ 命中' : '❌ 未命中';
                var r = d.result || {};
                out.textContent = ok + ' | 耗时 ' + (d.time||'?') + '\n'
                    + 'code=' + (r.code||'-') + '  msg=' + (r.msg||'-') + '\n'
                    + 'site=' + (r.site||'-') + '\n'
                    + (r.url ? 'URL=' + r.url + '\n' : '')
                    + '--- 完整返回 ---\n' + JSON.stringify(r,null,2);
                out.style.color = d.ok ? '#4ade80' : '#fca5a5';
            })
            .catch(function(e){
                out.textContent='请求失败：'+e;
                out.style.color='#fca5a5';
            });
    }
    /* ---- 苹果CMS采集接口 检测 / 自动添加 ---- */
    function openDetect(){
        document.getElementById('dd-url').value='';
        document.getElementById('dd-name').value='';
        document.getElementById('dd-tpl').value='';
        document.getElementById('dd-msg').textContent='粘贴苹果CMS10采集接口地址（如 http://caiji.xxx.com/api.php/provide/vod/from/xxx/at/xml/ ），点「检测」自动生成模板与名称。';
        document.getElementById('dd-msg').style.color='';
        document.getElementById('dd-hint').style.display='none';
        document.getElementById('dd-modal').style.display='flex';
    }
    function closeDetect(){ document.getElementById('dd-modal').style.display='none'; }
    function detectSite(){
        var url=document.getElementById('dd-url').value.trim();
        if(!url){alert('请先填写采集接口地址');return;}
        var msg=document.getElementById('dd-msg');
        msg.textContent='检测中...';msg.style.color='#e2b93b';
        document.getElementById('dd-hint').style.display='none';
        var fd=new FormData();fd.append('action','detect_site');fd.append('url',url);
        fetch('admin.php',{method:'POST',body:fd}).then(r=>r.json()).then(function(d){
            if(d.ok){
                document.getElementById('dd-name').value=d.name||'';
                document.getElementById('dd-tpl').value=d.template||'';
                document.getElementById('dd-hint').style.display='block';
                var smp=d.sample||{};
                document.getElementById('dd-hint-name').textContent=smp.name||'(无)';
                document.getElementById('dd-hint-url').textContent=smp.url||'';
                msg.textContent='✔ 检测成功（'+d.type+'）：可获取真实资源，模板已生成，可修改后保存。';
                msg.style.color='#2ecc71';
            }else{
                msg.textContent='✘ 检测失败：'+(d.msg||'未知错误');
                msg.style.color='#e74c3c';
            }
        }).catch(function(e){msg.textContent='请求失败:'+e;msg.style.color='#e74c3c';});
    }
    function saveSiteOne(){
        var name=document.getElementById('dd-name').value.trim();
        var tpl=document.getElementById('dd-tpl').value.trim();
        if(!name||!tpl){alert('请填写站点名称和模板');return;}
        var msg=document.getElementById('dd-msg');
        var fd=new FormData();fd.append('action','save_site_one');fd.append('name',name);fd.append('template',tpl);
        fetch('admin.php',{method:'POST',body:fd}).then(r=>r.json()).then(function(d){
            if(d.ok){
                msg.textContent='✔ '+d.msg+'，正在刷新...';msg.style.color='#2ecc71';
                setTimeout(function(){location.href='admin.php?tab=sites&saved=1';},500);
            }else{
                msg.textContent='✘ '+(d.msg||'保存失败');msg.style.color='#e74c3c';
            }
        }).catch(function(e){alert('请求失败:'+e);});
    }
    </script>
    </body></html>
    <?php exit;
}

/* ---- tab=sites ---- */
function renderSites($sites) {
    ?>
    <div class="panel">
        <h2>🛰️ 资源站列表</h2>
        <div class="note">
            <b>模板占位符</b>：<code>%s</code>=剧名（原样）、<code>%u</code>/<code>%t</code>=剧名（URL编码）、<code>%p</code>=集数<br>
            <b>示例 JSON 源</b>：<code>http://api.example.com/vod?wd=%u&ep=%p</code>
            <b>示例列表页</b>：<code>http://your.site/search?wd=%s&page=%p</code><br>
            <b>跟随播放链接</b>（中转前缀）：仅该站命中时拼接，如 <code>https://vv00.xyz?url=</code> → 返回 <code>https://vv00.xyz?url=真实地址</code>。留空直接返回原地址。<br>
            <b>特殊调用</b>：资源站要求 POST / 自定义 Header / 特殊返回格式时启用。默认 GET + 自动识别解析。
        </div>

        <form method="post" id="form-sites">
            <input type="hidden" name="action" value="save_sites">
            <div class="toolbar">
                <span class="status">
                    <span class="dot"></span>
                    <span>共 <b><?= count($sites) ?></b> 个资源站</span>
                </span>
                <div>
                    <button type="button" class="btn btn-green" style="background:#6366f1;border-color:#6366f1" onclick="openDetect()">⚡ 检测并自动添加</button>
                    <button type="button" class="btn btn-green" onclick="addRow()">➕ 添加资源站</button>
                    <button type="submit" class="btn btn-primary">💾 立即保存</button>
                </div>
            </div>

            <table id="site-tbl" class="tbl">
                <thead>
                    <tr>
                        <th style="width:110px">站点名称</th>
                        <th>搜索地址模板</th>
                        <th style="width:200px">跟随播放</th>
                        <th style="width:240px">方法 · 解析</th>
                        <th style="width:90px">角色</th>
                        <th style="width:70px">特殊站</th>
                        <th style="width:60px">启用</th>
                        <th style="width:100px"></th>
                    </tr>
                </thead>
                <tbody>
                <?php if ($sites): foreach ($sites as $i => $s): ?>
                    <?php
                        $enabled  = array_key_exists('enabled', $s) ? !empty($s['enabled']) : true;
                        $method   = strtolower(trim($s['method'] ?? ''));
                        $parse    = strtolower(trim($s['parse'] ?? ''));
                        $special  = !empty($s['is_special']);
                        $role     = strtolower(trim($s['role'] ?? 'primary'));
                    ?>
                    <tr class="<?= $enabled ? '' : 'row-disabled' ?>">
                        <td><input type="text" name="sites[<?= $i ?>][name]" value="<?= htmlspecialchars($s['name']) ?>" required></td>
                        <td><input type="text" name="sites[<?= $i ?>][template]" value="<?= htmlspecialchars($s['template']) ?>" onclick="this.select()" required></td>
                        <td><input type="text" name="sites[<?= $i ?>][proxy]" value="<?= htmlspecialchars($s['proxy'] ?? '') ?>" placeholder="如 https://vv00.xyz?url="></td>
                        <td class="site-special">
                            <select name="sites[<?= $i ?>][method]">
                                <option value="get"  <?= $method !== 'post' ? 'selected' : '' ?>>GET</option>
                                <option value="post" <?= $method === 'post'  ? 'selected' : '' ?>>POST</option>
                            </select>
                            <select name="sites[<?= $i ?>][parse]">
                                <option value=""      <?= $parse === ''       ? 'selected' : '' ?>>自动</option>
                                <option value="json"  <?= $parse === 'json'   ? 'selected' : '' ?>>JSON</option>
                                <option value="text"  <?= $parse === 'text'   ? 'selected' : '' ?>>纯文本</option>
                                <option value="apple" <?= $parse === 'apple'  ? 'selected' : '' ?>>苹果CMS</option>
                            </select>
                            <input type="text" name="sites[<?= $i ?>][headers]" value="<?= htmlspecialchars($s['headers'] ?? '') ?>" placeholder="自定义Header（每行 Key: Value）">
                            <input type="text" name="sites[<?= $i ?>][post]"     value="<?= htmlspecialchars($s['post'] ?? '') ?>"     placeholder="POST体（如 wd=%u&ep=%p）">
                        </td>
                        <td>
                            <select name="sites[<?= $i ?>][role]">
                                <option value="primary" <?= $role !== 'fallback' ? 'selected' : '' ?>>主用</option>
                                <option value="fallback"<?= $role === 'fallback' ? 'selected' : '' ?>>平替</option>
                            </select>
                        </td>
                        <td class="center">
                            <label class="toggle"><input type="checkbox" name="sites[<?= $i ?>][is_special]" value="1" <?= $special ? 'checked' : '' ?>><span class="slider"></span></label>
                        </td>
                        <td class="center">
                            <label class="toggle"><input type="checkbox" name="sites[<?= $i ?>][enabled]" value="1" <?= $enabled ? 'checked' : '' ?>><span class="slider"></span></label>
                        </td>
                        <td>
                            <button type="button" class="btn btn-danger" onclick="this.closest('tr').remove()">删除</button>
                        </td>
                    </tr>
                <?php endforeach; else: ?>
                    <tr>
                        <td><input type="text" name="sites[0][name]" placeholder="站点A"></td>
                        <td><input type="text" name="sites[0][template]" placeholder="http://api.example.com/vod?wd=%u&ep=%p"></td>
                        <td><input type="text" name="sites[0][proxy]" placeholder="如 https://vv00.xyz?url="></td>
                        <td class="site-special">
                            <select name="sites[0][method]"><option value="get" selected>GET</option><option value="post">POST</option></select>
                            <select name="sites[0][parse]"><option value="">自动</option><option value="json">JSON</option><option value="text">纯文本</option><option value="apple">苹果CMS</option></select>
                            <input type="text" name="sites[0][headers]" placeholder="自定义Header">
                            <input type="text" name="sites[0][post]" placeholder="POST体">
                        </td>
                        <td><select name="sites[0][role]"><option value="primary" selected>主用</option><option value="fallback">平替</option></select></td>
                        <td class="center"><label class="toggle"><input type="checkbox" name="sites[0][is_special]" value="1"><span class="slider"></span></label></td>
                        <td class="center"><label class="toggle"><input type="checkbox" name="sites[0][enabled]" value="1" checked><span class="slider"></span></label></td>
                        <td><button type="button" class="btn btn-danger" onclick="this.closest('tr').remove()">删除</button></td>
                    </tr>
                <?php endif; ?>
                </tbody>
            </table>

            <div style="margin-top:18px;display:flex;gap:10px;justify-content:flex-end">
                <button type="button" class="btn btn-green" onclick="addRow()">➕ 再加一行</button>
                <button type="submit" class="btn btn-primary">💾 保存全部</button>
            </div>
        </form>

        <h3 style="margin-top:32px">🧪 单条资源站测试</h3>
        <div class="note" style="margin-bottom:14px">
            填模板后点「测试」，后台会立刻调一次 <code>SiteSearcher::search</code>，看返回 <code>code/url/msg</code>，判断该模板能否正常搜到资源。
        </div>
        <div class="form-grid">
            <div><label>剧名</label><input type="text" id="tt-title" placeholder="如 庆余年"></div>
            <div><label>集数</label><input type="number" id="tt-ep" value="1" min="1"></div>
            <div class="full">
                <label>选择已有资源站（可选）</label>
                <select id="tt-preset" onchange="if(this.value){document.getElementById('tt-tpl').value=this.value}">
                    <option value="">-- 手动输入 / 选已有 --</option>
                    <?php foreach ($sites as $si => $ss): ?>
                        <?php if (!empty($ss['template'])): ?>
                        <option value="<?= htmlspecialchars($ss['template']) ?>"><?= htmlspecialchars($ss['name'] ?? '未命名') ?> (<?= htmlspecialchars(mb_substr($ss['template'], 0, 50)) ?>...)</option>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="full"><label>搜索模板（%u=剧名URL编码 / %s=剧名原样 / %p=集数）</label>
                <input type="text" id="tt-tpl" placeholder="如 http://api.example.com/vod?wd=%u&ep=%p">
            </div>
        </div>
        <button type="button" class="btn btn-primary" onclick="testSite()">🧪 测试该资源站</button>
        <pre id="tt-out" style="display:none;margin-top:14px;background:#0b1220;border:1px solid #1e293b;border-radius:8px;padding:12px 14px;font-size:12px;color:#c4b5fd;white-space:pre-wrap;word-break:break-all;max-height:400px;overflow:auto"></pre>

        <!-- ===== 检测并自动添加 弹窗 ===== -->
        <div id="dd-modal" style="display:none;position:fixed;inset:0;background:rgba(5,10,20,.7);z-index:9999;align-items:center;justify-content:center">
            <div style="background:#141b2d;border:1px solid #2a3550;border-radius:12px;padding:22px;width:640px;max-width:94vw;box-shadow:0 20px 60px rgba(0,0,0,.5);color:#cbd5e1;font-size:13px">
                <h3 style="margin:0 0 12px;font-size:15px;color:#a5b4fc">⚡ 检测并自动添加资源站（苹果CMS10 采集接口）</h3>
                <div style="font-size:12px;color:#94a3b8;margin-bottom:12px">只需粘贴采集接口地址，系统会自动探测返回格式、生成「搜索模板」与站点名称。</div>
                <div style="margin-bottom:12px">
                    <label style="display:block;font-size:12px;color:#94a3b8;margin-bottom:6px">采集接口地址</label>
                    <input type="text" id="dd-url" placeholder="如 http://caiji.jjzyapi.com/api.php/provide/vod/from/jjm3u8/at/xml/"
                           style="width:100%;padding:10px 12px;background:#0f172a;border:1px solid #334155;border-radius:8px;color:#e2e8f0;font-size:13px;outline:none;box-sizing:border-box">
                </div>
                <div style="margin-top:10px;display:flex;gap:8px">
                    <button type="button" class="btn btn-primary" onclick="detectSite()">🔍 检测</button>
                    <button type="button" class="btn" onclick="closeDetect()">取消</button>
                </div>
                <div id="dd-hint" style="display:none;background:#10172a;border:1px solid #223;border-radius:8px;padding:10px 12px;margin-top:12px;font-size:12px;color:#9aa4bc">
                    样本：<span id="dd-hint-name"></span><br>
                    首条播放地址：<code id="dd-hint-url" style="word-break:break-all;background:#0b1220;padding:2px 6px;border-radius:4px;color:#c4b5fd"></code>
                </div>
                <div id="dd-msg" style="margin-top:12px;font-size:13px;color:#94a3b8">粘贴采集接口地址，点「检测」自动生成模板与名称。</div>
                <div style="margin-top:14px">
                    <div style="margin-bottom:8px">
                        <label style="display:block;font-size:12px;color:#94a3b8;margin-bottom:6px">站点名称</label>
                        <input type="text" id="dd-name" style="width:100%;padding:10px 12px;background:#0f172a;border:1px solid #334155;border-radius:8px;color:#e2e8f0;font-size:13px;outline:none;box-sizing:border-box">
                    </div>
                    <div>
                        <label style="display:block;font-size:12px;color:#94a3b8;margin-bottom:6px">搜索模板（已自动生成，可微调）</label>
                        <input type="text" id="dd-tpl" onclick="this.select()" style="width:100%;padding:10px 12px;background:#0f172a;border:1px solid #334155;border-radius:8px;color:#e2e8f0;font-size:13px;outline:none;box-sizing:border-box">
                    </div>
                </div>
                <div style="margin-top:16px;text-align:right">
                    <button type="button" class="btn" onclick="closeDetect()" style="margin-right:8px">关闭</button>
                    <button type="button" class="btn btn-green" onclick="saveSiteOne()" style="background:#16a34a;border-color:#16a34a;color:#fff">✔ 确认保存入库</button>
                </div>
            </div>
        </div>
    </div>
    <?php
}

/* ---- tab=mapping ---- */
function renderMapping($mapping) {
    $titles = isset($mapping['title']) && is_array($mapping['title']) ? $mapping['title'] : [];
    $cids   = isset($mapping['cid'])   && is_array($mapping['cid'])   ? $mapping['cid']   : [];
    ?>
    <div class="panel">
        <h2>🗺️ 剧名 / cid 映射表</h2>
        <div class="note">
            映射表帮算法把官方链接识别成「剧名 + 集数」。cid 是视频在官方平台的唯一 ID，剧名是你资源库里的真实剧名。<br>
            命中优先级：vid映射 → cid映射 → 剧名映射 → 页面抓取兜底。<br>
            <b>格式</b>：每行一对，左边=key，右边=value。
        </div>

        <form method="post">
            <input type="hidden" name="action" value="save_mapping">

            <h3 style="margin-top:22px">📛 剧名映射（旧名 → 新名）</h3>
            <table class="tbl">
                <thead><tr><th style="width:40%">原剧名</th><th>映射到</th><th style="width:80px"></th></tr></thead>
                <tbody>
                <?php $i = 0; foreach ($titles as $k => $v): ?>
                    <tr>
                        <td><input type="text" name="map_title[<?= $i ?>]" value="<?= htmlspecialchars($k) ?>"></td>
                        <td><input type="text" name="map_target[<?= $i ?>]" value="<?= htmlspecialchars($v) ?>"></td>
                        <td><button type="button" class="btn btn-danger" onclick="this.closest('tr').remove()">删</button></td>
                    </tr>
                    <?php $i++; endforeach; ?>
                </tbody>
            </table>

            <h3 style="margin-top:28px">🆔 cid 映射（官方cid → 剧名）</h3>
            <table class="tbl">
                <thead><tr><th style="width:40%">官方 cid</th><th>剧名</th><th style="width:80px"></th></tr></thead>
                <tbody>
                <?php $i = 0; foreach ($cids as $k => $v): ?>
                    <tr>
                        <td><input type="text" name="map_cid[<?= $i ?>]" value="<?= htmlspecialchars($k) ?>"></td>
                        <td><input type="text" name="map_cid_target[<?= $i ?>]" value="<?= htmlspecialchars($v) ?>"></td>
                        <td><button type="button" class="btn btn-danger" onclick="this.closest('tr').remove()">删</button></td>
                    </tr>
                    <?php $i++; endforeach; ?>
                </tbody>
            </table>

            <div style="margin-top:22px;display:flex;gap:10px;justify-content:flex-end">
                <button type="submit" class="btn btn-primary">💾 保存映射表</button>
            </div>
        </form>
    </div>
    <?php
}

/* ---- tab=settings ---- */
function renderSettings($st) {
    $st += [
        'off'            => '0',
        'timeout'        => 15,
        'cache_ttl'      => 600,
        'replace_domain' => '',
    ];
    $pwd = mx2_admin_password();
    ?>
    <div class="panel">
        <h2>⚙️ 全局设置</h2>

        <form method="post">
            <input type="hidden" name="action" value="save_settings">

            <div class="form-grid">
                <div>
                    <label>启用开关</label>
                    <select name="off">
                        <option value="0" <?= $st['off'] !== '1' ? 'selected' : '' ?>>启用</option>
                        <option value="1" <?= $st['off'] === '1'  ? 'selected' : '' ?>>关闭</option>
                    </select>
                </div>
                <div>
                    <label>搜索超时（秒）</label>
                    <input type="number" name="timeout" value="<?= (int)$st['timeout'] ?>" min="1" max="60">
                </div>
                <div>
                    <label>缓存有效期（秒）</label>
                    <input type="number" name="cache_ttl" value="<?= (int)$st['cache_ttl'] ?>" min="0">
                </div>
                <div class="full">
                    <label>跟随播放链接（中转前缀，全局）</label>
                    <input type="text" name="replace_domain" value="<?= htmlspecialchars($st['replace_domain']) ?>" placeholder="如 https://vv00.xyz?url= （留空直接返回资源站地址）">
                </div>
                <div class="full">
                    <label>后台管理密码（留空保留原密码）</label>
                    <input type="text" name="admin_password" value="" placeholder="当前默认：<?= htmlspecialchars($pwd) ?>；输入新值则替换">
                    <div class="hint">首次访问自动写入默认密码 moxi123，请尽快修改</div>
                </div>
            </div>

            <div style="margin-top:22px;display:flex;gap:10px;justify-content:flex-end">
                <button type="submit" class="btn btn-primary">💾 保存设置</button>
            </div>
        </form>
    </div>
    <?php
}

/* ---- 样式 ---- */
function mx2_admin_css() { ?>
<style>
*{box-sizing:border-box}
body{margin:0;font-family:-apple-system,BlinkMacSystemFont,Segoe UI,Roboto,sans-serif;background:#0b1220;color:#cbd5e1;font-size:14px;line-height:1.6}
a{color:#a5b4fc;text-decoration:none}
a:hover{text-decoration:underline}

.layout{display:flex;min-height:100vh}
.sidebar{width:230px;background:linear-gradient(180deg,#0f172a 0%,#111827 100%);border-right:1px solid rgba(99,102,241,0.15);padding:24px 0;position:sticky;top:0;height:100vh}
.brand{padding:0 24px 24px;border-bottom:1px solid rgba(99,102,241,0.15);margin-bottom:16px}
.logo{width:40px;height:40px;border-radius:10px;background:linear-gradient(135deg,#6366f1,#8b5cf6);display:flex;align-items:center;justify-content:center;font-weight:700;font-size:14px;color:#fff;letter-spacing:1px;margin-bottom:10px}
.brand-title{font-size:15px;font-weight:600;color:#e2e8f0}
.brand-sub{font-size:11px;color:#64748b;margin-top:2px}
nav{display:flex;flex-direction:column;padding:0 12px}
.nav-item{padding:11px 14px;border-radius:8px;font-size:13px;color:#94a3b8;margin-bottom:4px;transition:all 0.15s;display:block}
.nav-item:hover{background:rgba(99,102,241,0.1);color:#cbd5e1;text-decoration:none}
.nav-item.active{background:linear-gradient(135deg,#6366f1,#8b5cf6);color:#fff;font-weight:500}
.nav-logout{margin-top:auto;color:#fca5a5}
.links{margin-top:auto;padding:16px 24px;border-top:1px solid rgba(99,102,241,0.1);font-size:11px;color:#475569}
.links .sep{margin:0 8px}

.main{flex:1;padding:28px 32px;max-width:calc(100vw - 230px);overflow-x:auto}

.flash{padding:12px 18px;border-radius:8px;margin-bottom:20px;font-size:13px}
.flash-ok{background:rgba(34,197,94,0.12);border:1px solid rgba(34,197,94,0.3);color:#86efac}
.flash-err{background:rgba(239,68,68,0.12);border:1px solid rgba(239,68,68,0.3);color:#fca5a5}

.panel{background:#111827;border:1px solid rgba(99,102,241,0.15);border-radius:12px;padding:24px 28px;margin-bottom:24px}
.panel h2{font-size:17px;margin:0 0 14px;color:#e2e8f0;background:linear-gradient(135deg,#a5b4fc,#c4b5fd);-webkit-background-clip:text;background-clip:text;color:transparent}
.panel h3{font-size:14px;color:#cbd5e1;margin:0 0 12px}
.note{background:rgba(99,102,241,0.08);border-left:3px solid #6366f1;padding:12px 16px;border-radius:4px;font-size:12px;color:#94a3b8;margin-bottom:18px}
.note b{color:#a5b4fc}
.note code{background:rgba(30,41,59,0.8);padding:1px 6px;border-radius:4px;font-size:11px;color:#c4b5fd}
.hint{font-size:11px;color:#64748b;margin-top:4px}

.toolbar{display:flex;justify-content:space-between;align-items:center;background:linear-gradient(135deg,#1e293b,#1e1b4b);padding:14px 18px;border-radius:10px;border:1px solid rgba(99,102,241,0.2);margin-bottom:14px}
.toolbar .status{display:flex;align-items:center;gap:10px;font-size:13px;color:#cbd5e1}
.toolbar .dot{width:10px;height:10px;background:#4ade80;border-radius:50%;box-shadow:0 0 8px rgba(74,222,128,0.5)}
.toolbar b{color:#a5b4fc}

.btn{padding:8px 14px;background:#334155;border:1px solid #475569;border-radius:8px;color:#cbd5e1;font-size:12px;cursor:pointer;transition:all 0.15s}
.btn:hover{background:#475569}
.btn-primary{background:linear-gradient(135deg,#6366f1,#8b5cf6);border:none;color:#fff;font-weight:600;padding:10px 22px}
.btn-primary:hover{box-shadow:0 4px 14px rgba(99,102,241,0.4);transform:translateY(-1px)}
.btn-green{background:#16a34a;border-color:#16a34a;color:#fff}
.btn-green:hover{background:#15803d}
.btn-danger{background:#dc2626;border-color:#dc2626;color:#fff;padding:6px 12px;font-size:11px}
.btn-danger:hover{background:#b91c1c}

.tbl{width:100%;border-collapse:collapse;font-size:12px}
.tbl th,.tbl td{padding:8px 6px;border-bottom:1px solid rgba(99,102,241,0.08);text-align:left;vertical-align:top}
.tbl th{background:#0f172a;font-weight:500;color:#94a3b8;font-size:11px;padding:10px 6px}
.tbl input[type=text],.tbl select{width:100%;padding:6px 8px;background:#0f172a;border:1px solid #334155;border-radius:6px;color:#e2e8f0;font-size:12px;outline:none}
.tbl input[type=text]:focus,.tbl select:focus{border-color:#6366f1}
.tbl tbody tr:hover{background:rgba(99,102,241,0.04)}
.tbl tbody tr.row-disabled{opacity:0.5}
.tbl .center{text-align:center}

.site-special{min-width:240px}
.site-special select,.site-special input[type=text]{width:100%;margin-bottom:6px;display:block}
.site-special select:last-of-type,.site-special input:last-of-type{margin-bottom:0}

/* toggle switch */
.toggle{position:relative;display:inline-block;width:36px;height:20px;cursor:pointer}
.toggle input{display:none}
.toggle .slider{position:absolute;inset:0;background:#334155;border-radius:20px;transition:0.2s}
.toggle .slider:before{content:"";position:absolute;width:16px;height:16px;left:2px;top:2px;background:#fff;border-radius:50%;transition:0.2s}
.toggle input:checked+.slider{background:linear-gradient(135deg,#6366f1,#8b5cf6)}
.toggle input:checked+.slider:before{transform:translateX(16px)}

.form-grid{display:grid;grid-template-columns:1fr 1fr;gap:16px}
.form-grid .full{grid-column:1/-1}
.form-grid label{display:block;font-size:12px;color:#94a3b8;margin-bottom:6px}
.form-grid input[type=text],.form-grid input[type=number],.form-grid select{width:100%;padding:10px 12px;background:#0f172a;border:1px solid #334155;border-radius:8px;color:#e2e8f0;font-size:13px;outline:none}
.form-grid input:focus,.form-grid select:focus{border-color:#6366f1}

@media (max-width: 1024px){
    .sidebar{width:180px}
    .main{max-width:calc(100vw - 180px);padding:20px}
    .form-grid{grid-template-columns:1fr}
}
@media (max-width: 768px){
    .layout{flex-direction:column}
    .sidebar{width:100%;height:auto;position:static;padding:16px}
    .main{max-width:100%;padding:16px}
}
</style>
<?php }
