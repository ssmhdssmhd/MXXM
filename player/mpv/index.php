<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>MPV 播放器 - MXXM</title>
    <script type="text/javascript" src="../../include/class.main.js"></script>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body {
            font-family: -apple-system, "Microsoft YaHei", sans-serif;
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%);
            color: #e8e8e8;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .container {
            max-width: 720px;
            width: 100%;
            background: rgba(255,255,255,0.06);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255,255,255,0.12);
            border-radius: 16px;
            padding: 36px 32px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.4);
        }
        .logo {
            display: block;
            max-width: 200px;
            margin: 0 auto 20px;
        }
        h1 {
            text-align: center;
            font-size: 26px;
            font-weight: 600;
            margin-bottom: 8px;
            background: linear-gradient(90deg, #50b2c8, #7c5cff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .subtitle {
            text-align: center;
            color: #9aa4b2;
            font-size: 13px;
            margin-bottom: 28px;
        }
        .url-box {
            background: rgba(0,0,0,0.35);
            border: 1px solid rgba(255,255,255,0.1);
            border-radius: 10px;
            padding: 12px 14px;
            font-family: "Consolas", monospace;
            font-size: 12px;
            word-break: break-all;
            max-height: 80px;
            overflow-y: auto;
            margin-bottom: 20px;
            color: #7ee0ff;
        }
        .btn-group {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
            margin-bottom: 24px;
        }
        .btn {
            flex: 1;
            min-width: 140px;
            padding: 13px 16px;
            border: none;
            border-radius: 10px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: transform .15s, box-shadow .15s, opacity .15s;
            color: #fff;
        }
        .btn:active { transform: scale(0.97); }
        .btn-primary {
            background: linear-gradient(135deg, #50b2c8, #3d8b9e);
            box-shadow: 0 4px 14px rgba(80,178,200,0.35);
        }
        .btn-primary:hover { box-shadow: 0 6px 20px rgba(80,178,200,0.5); }
        .btn-secondary {
            background: linear-gradient(135deg, #7c5cff, #5a3fd6);
            box-shadow: 0 4px 14px rgba(124,92,255,0.35);
        }
        .btn-secondary:hover { box-shadow: 0 6px 20px rgba(124,92,255,0.5); }
        .btn-ghost {
            background: rgba(255,255,255,0.08);
            border: 1px solid rgba(255,255,255,0.18);
        }
        .btn-ghost:hover { background: rgba(255,255,255,0.14); }
        .toast {
            position: fixed;
            top: 24px;
            left: 50%;
            transform: translateX(-50%) translateY(-20px);
            background: rgba(46,204,113,0.95);
            color: #fff;
            padding: 10px 22px;
            border-radius: 8px;
            font-size: 13px;
            opacity: 0;
            transition: all .3s;
            pointer-events: none;
            z-index: 999;
        }
        .toast.show { opacity: 1; transform: translateX(-50%) translateY(0); }
        .help {
            border-top: 1px solid rgba(255,255,255,0.1);
            padding-top: 20px;
        }
        .help h3 {
            font-size: 14px;
            margin-bottom: 10px;
            color: #50b2c8;
        }
        .help ol {
            padding-left: 20px;
            font-size: 13px;
            line-height: 2;
            color: #b8c0cc;
        }
        .help a { color: #7ee0ff; text-decoration: none; }
        .help a:hover { text-decoration: underline; }
        .tip {
            background: rgba(80,178,200,0.1);
            border-left: 3px solid #50b2c8;
            padding: 10px 14px;
            border-radius: 6px;
            font-size: 12px;
            color: #9fd5e0;
            margin-top: 12px;
        }
    </style>
</head>
<body>
    <div class="toast" id="toast"></div>
    <div class="container">
        <img src="../../source/images/logo.png" alt="MXXM" class="logo" onerror="this.style.display='none'">
        <h1>MPV 桌面播放器</h1>
        <p class="subtitle">解析完成，请使用 MPV 桌面播放器播放本视频</p>

        <div class="url-box" id="urlBox">正在获取视频地址...</div>

        <div class="btn-group">
            <button class="btn btn-primary" onclick="downloadM3U()">下载 M3U 播放列表</button>
            <button class="btn btn-secondary" onclick="copyUrl()">复制视频直链</button>
            <button class="btn btn-ghost" onclick="openMpvGuide()">MPV 安装说明</button>
        </div>

        <div class="help">
            <h3>使用步骤</h3>
            <ol>
                <li>点击「下载 M3U 播放列表」，得到 <code>.m3u</code> 文件</li>
                <li>用 <a href="https://github.com/zhongfly/mpv-winbuild/releases" target="_blank">MPV</a> 打开该文件即可播放</li>
                <li>或点击「复制视频直链」，在 MPV 中按 <code>Ctrl+V</code> 粘贴播放</li>
                <li>推荐使用本站提供的 <a href="../../source/mpv/README.md" target="_blank">MPV 优化配置</a>，画质与体验更佳</li>
            </ol>
            <div class="tip">
                提示：若未安装 MPV，可前往 <a href="https://github.com/zhongfly/mpv-winbuild/releases" target="_blank">zhongfly/mpv-winbuild</a> 下载最新版，
                或将本站 <code>source/mpv/</code> 中的 <code>mpv.conf</code>、<code>input.conf</code> 复制到 MPV 的 <code>portable_config</code> 目录。
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function _GET(name, isurl) {
            isurl = isurl || false;
            var word = "(^|&)" + name + "=([^&]*)(&|$)";
            if (isurl) { word = "(^|&)" + name + "=(.*?)$"; }
            var reg = new RegExp(word, "i");
            var r = window.location.search.substr(1).match(reg);
            if (r !== null) { return decodeURI(r[2]); }
            return "";
        }

        // 兼容 base64 / url-encoded 两种传参
        var rawUrl = _GET("url", true);
        var videoUrl = "";
        try {
            videoUrl = Base64.decode(rawUrl);
            if (!/^https?:\/\//i.test(videoUrl)) { videoUrl = ""; }
        } catch (e) {}
        if (!videoUrl) {
            try { videoUrl = decodeURIComponent(rawUrl); } catch (e2) { videoUrl = rawUrl; }
        }

        document.getElementById("urlBox").textContent = videoUrl || "未获取到视频地址";

        function showToast(msg, ok) {
            var t = document.getElementById("toast");
            t.textContent = msg;
            t.style.background = ok ? "rgba(46,204,113,0.95)" : "rgba(231,76,60,0.95)";
            t.classList.add("show");
            setTimeout(function(){ t.classList.remove("show"); }, 1800);
        }

        function downloadM3U() {
            if (!videoUrl) { showToast("无视频地址", false); return; }
            var content = "#EXTM3U\n#EXTINF:-1,MXXM 视频\n" + videoUrl + "\n";
            var blob = new Blob([content], { type: "audio/x-mpegurl" });
            var a = document.createElement("a");
            a.href = URL.createObjectURL(blob);
            a.download = "MXXM.m3u";
            document.body.appendChild(a);
            a.click();
            document.body.removeChild(a);
            URL.revokeObjectURL(a.href);
            showToast("M3U 播放列表已下载", true);
        }

        function copyUrl() {
            if (!videoUrl) { showToast("无视频地址", false); return; }
            var ta = document.createElement("textarea");
            ta.value = videoUrl;
            document.body.appendChild(ta);
            ta.select();
            try {
                document.execCommand("copy");
                showToast("视频直链已复制", true);
            } catch (e) {
                showToast("复制失败，请手动复制", false);
            }
            document.body.removeChild(ta);
        }

        function openMpvGuide() {
            window.open("../../source/mpv/README.md", "_blank");
        }
    </script>
</body>
</html>
