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
    <link rel="stylesheet" href="tcplayer.min.css">
</head>
<body>
    <div id="video"></div>

    <script type="text/javascript" src="../hls.min.js"></script>
    <script type="text/javascript" src="../flv.min.js"></script>
    <script type="text/javascript" src="tcplayer.min.js"></script>
    <script type="text/javascript" src="../_core.js"></script>
    <script type="text/javascript">
        // 腾讯云 TcPlayer 引擎（需先引入全局 Hls / flvjs，TcPlayer 在加载时捕获这两个全局）
        XYPlayer.start({
            needHls: false,
            needFlv: false,
            needDash: false,
            create: function (o, h) {
                var box = document.createElement('div');
                box.id = 'xy-tc';
                box.style.width = '100%';
                box.style.height = '100%';
                o.container.appendChild(box);

                var cfg = {
                    autoplay: !!o.autoplay,
                    width: '100%',
                    height: '100%',
                    live: !!o.live,
                    playsinline: true,
                    x5_type: 'h5',
                    x5_fullscreen: true,
                    controls: 'default',
                    preload: 'auto'
                };
                if (o.type === 'hls') cfg.m3u8 = o.url;
                else if (o.type === 'flv') cfg.flv = o.url;
                else cfg.mp4 = o.url;

                var tp = new TCPlayer('xy-tc', cfg);
                tp.on('loadedmetadata', function () { h.ready(); });
                tp.on('ended', function () { h.ended(); });
                tp.on('error', function () { h.error(); });
                tp.on('timeupdate', function () { h.timeupdate(); });

                return {
                    play: function () { tp.play(); },
                    pause: function () { tp.pause(); },
                    seek: function (t) { tp.currentTime = t; },
                    currentTime: function () { return tp.currentTime || 0; },
                    switchTo: function (url, type) {
                        if ("undefined" !== typeof tp.loadVideoByUrl) { tp.loadVideoByUrl(url); tp.play(); }
                        else { window.location.href = window.location.pathname + '?url=' + encodeURIComponent(url); }
                    },
                    destroy: function () { if (tp && tp.dispose) tp.dispose(); }
                };
            }
        });
    </script>
</body>
</html>
