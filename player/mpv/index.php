<!DOCTYPE html>
<html lang="zh-cmn-Hans">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta name="x5-fullscreen" content="true">
    <meta name="x5-page-mode" content="app">
    <meta name="full-screen" content="yes">
    <meta name="browsermode" content="application">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <title>在线播放 - MXXM</title>
    <!-- 通用工具（Base64 等） -->
    <script type="text/javascript" src="../../include/class.main.js"></script>
    <!-- 播放器样式与内核（本地化，均在本目录内） -->
    <link rel="stylesheet" href="DPlayer.min.css">
    <script type="text/javascript" src="DPlayer.min.js"></script>
    <style type="text/css">
        html, body {
            background-color: #000;
            padding: 0;
            margin: 0;
            height: 100%;
            width: 100%;
            color: #999;
            overflow: hidden;
        }
        #video {
            height: 100% !important;
            width: 100% !important;
        }
        #tips {
            position: absolute;
            left: 0;
            right: 0;
            top: 50%;
            transform: translateY(-50%);
            text-align: center;
            color: #aaa;
            font: 14px/1.8 -apple-system, "Microsoft YaHei", sans-serif;
            padding: 0 24px;
            z-index: 10;
        }
        #tips b { color: #50b2c8; }
    </style>
</head>

<body>
    <div id="video"></div>

    <script type="text/javascript">
        // 读取 URL 参数（isurl=true 允许参数值本身包含 & ）
        function _GET(name, isurl) {
            isurl = isurl || false;
            var word = "(^|&)" + name + "=([^&]*)(&|$)";
            if (isurl) { word = "(^|&)" + name + "=(.*?)$"; }
            var reg = new RegExp(word, "i");
            var r = window.location.search.substr(1).match(reg);
            if (r !== null) { return decodeURI(r[2]); }
            return "";
        }

        // 解析视频地址：兼容 base64 与 url-encoded 两种传参
        function parseUrl() {
            var raw = _GET("url", true);
            if (!raw) { return ""; }
            var url = "";
            try {
                var d = Base64.decode(raw);
                if (/^https?:\/\//i.test(d) || /^magnet:/i.test(d)) { url = d; }
            } catch (e) { }
            if (!url) {
                try { url = decodeURIComponent(raw); } catch (e2) { url = raw; }
            }
            return url;
        }

        // 根据地址后缀判断媒体类型（兼容地址后还带其他参数的情况）
        function getType(url) {
            if (/^magnet:/i.test(url)) { return "webtorrent"; }
            if (/\.m3u8([?#&]|$)/i.test(url)) { return "hls"; }
            if (/\.flv([?#&]|$)/i.test(url)) { return "flv"; }
            if (/\.mpd([?#&]|$)/i.test(url)) { return "dash"; }
            return "normal";
        }

        // 按需加载对应的解码库
        function loadLib(type, cb) {
            var libs = {
                hls: "hls.min.js",
                flv: "flv.min.js",
                dash: "dash.all.min.js",
                webtorrent: "webtorrent.min.js"
            };
            var src = libs[type];
            if (!src) { cb(); return; }
            var s = document.createElement("script");
            s.src = src;
            s.onload = cb;
            s.onerror = cb;
            document.body.appendChild(s);
        }

        var videoUrl = parseUrl();

        if (!videoUrl) {
            document.getElementById("video").innerHTML =
                '<div id="tips">未获取到视频地址<br>请在网址后追加 <b>?url=</b> 视频地址，例如：<br>' +
                '<b>/player/mpv/?url=https://example.com/video.m3u8</b></div>';
        } else {
            var type = getType(videoUrl);
            loadLib(type, function () {
                var player = new DPlayer({
                    container: document.getElementById("video"),
                    autoplay: true,
                    theme: "#50b2c8",
                    hotkey: true,
                    screenshot: true,
                    mutex: true,
                    logo: "../../source/images/logo.png",
                    video: {
                        url: videoUrl,
                        type: type,
                        pic: ""
                    }
                });

                // 移动端内联播放兼容
                var v = document.querySelector("#video video");
                if (v) {
                    v.setAttribute("playsinline", "");
                    v.setAttribute("x5-playsinline", "");
                    v.setAttribute("webkit-playsinline", "");
                    v.setAttribute("x-webkit-airplay", "allow");
                }

                // 播放出错时给出提示
                player.on("error", function () {
                    document.getElementById("video").innerHTML =
                        '<div id="tips" style="color:#e74c3c">播放失败，可能是地址失效或格式不受支持<br>请刷新重试或更换视频源</div>';
                });
            });
        }
    </script>
</body>

</html>
