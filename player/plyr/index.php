<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta name="x5-fullscreen" content="true"><meta name="x5-page-mode" content="app">
    <meta name="full-screen" content="yes"><meta name="browsermode" content="application">
    <meta name="apple-mobile-web-app-capable" content="yes"><meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <script type="text/javascript" src="../../include/jquery.min.js"></script>
    <script type="text/javascript" src="../../include/class.main.js"></script>
    <?php include '../../save/config.php'; if ($CONFIG["play"]['style']['off'] == 1) { echo '<link rel="stylesheet" href="../../save/play.css">'; } ?>
    <link rel="stylesheet" href="plyr.css">
</head>
<body>
    <div id="video"></div>

    <script type="text/javascript" src="plyr.js"></script>
    <script type="text/javascript" src="../_core.js"></script>
    <script type="text/javascript">
        // Plyr 引擎（m3u8/flv 依赖 hls.js / flv.js，由核心按需加载）
        XYPlayer.start({
            create: function (o, h) {
                var video = document.createElement('video');
                video.setAttribute('playsinline', '');
                video.setAttribute('controls', '');
                video.crossOrigin = 'anonymous';
                o.container.appendChild(video);

                var hls = null, fp = null;
                if (o.type === 'hls' && window.Hls && Hls.isSupported()) {
                    hls = new Hls();
                    hls.loadSource(o.url);
                    hls.attachMedia(video);
                } else if (o.type === 'flv' && window.flvjs && flvjs.isSupported()) {
                    fp = flvjs.createPlayer({ type: 'flv', url: o.url });
                    fp.attachMediaElement(video);
                    fp.load();
                } else {
                    video.src = o.url;
                }

                var p = new Plyr(video, {
                    controls: ['play-large', 'play', 'progress', 'current-time', 'duration', 'mute', 'volume', 'settings', 'pip', 'airplay', 'fullscreen'],
                    autoplay: !!o.autoplay,
                    clickToPlay: true,
                    keyboard: { focused: true, global: true },
                    ratio: '16:9',
                    fullscreen: { enabled: true, fallback: true, iosNative: true },
                    settings: ['captions', 'quality', 'speed']
                });
                p.on('ready', function () { h.ready(); });
                p.on('ended', function () { h.ended(); });
                p.on('error', function () { h.error(); });
                p.on('timeupdate', function () { h.timeupdate(); });

                return {
                    play: function () { p.play(); },
                    pause: function () { p.pause(); },
                    seek: function (t) { p.currentTime = t; },
                    currentTime: function () { return p.currentTime || 0; },
                    switchTo: function (url, type) {
                        if (hls) { hls.loadSource(url); hls.attachMedia(video); }
                        else { video.src = url; }
                        p.play();
                    },
                    destroy: function () { if (hls) hls.destroy(); if (fp) fp.destroy(); p.destroy(); }
                };
            }
        });
    </script>
</body>
</html>
