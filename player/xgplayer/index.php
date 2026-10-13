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
    <link rel="stylesheet" href="xgplayer.min.css">
</head>
<body>
    <div id="video"></div>

    <script type="text/javascript" src="xgplayer.min.js"></script>
    <script type="text/javascript" src="xgplayer-hls.js"></script>
    <script type="text/javascript" src="../_core.js"></script>
    <script type="text/javascript">
        // 西瓜播放器 XGplayer 引擎（m3u8 由 xgplayer-hls 插件提供）
        XYPlayer.start({
            needHls: false,
            needFlv: false,
            needDash: false,
            create: function (o, h) {
                var box = document.createElement('div');
                box.id = 'xy-xg';
                box.style.width = '100%';
                box.style.height = '100%';
                o.container.appendChild(box);

                var opt = {
                    id: 'xy-xg',
                    url: o.url,
                    autoplay: !!o.autoplay,
                    isLive: !!o.live,
                    playsinline: true,
                    width: '100%',
                    height: '100%',
                    fluid: false,
                    playbackRate: true,
                    volume: 0.7,
                    controls: {
                        rotate: true, download: false, pip: true, playbackRate: true,
                        fullscreen: true, volume: true, screenShot: false, cssFullscreen: false
                    },
                    marginControls: false,
                    screenShot: false,
                    keyShortcut: 'on',
                    lang: 'zh-cn'
                };
                if (o.type === 'hls' && window.HlsPlayer) { opt.plugins = [window.HlsPlayer]; }

                var xg = new Player(opt);
                xg.on('ready', function () { h.ready(); });
                xg.on('ended', function () { h.ended(); });
                xg.on('error', function () { h.error(); });
                xg.on('timeupdate', function () { h.timeupdate(); });

                return {
                    play: function () { xg.play(); },
                    pause: function () { xg.pause(); },
                    seek: function (t) { xg.seek(t); },
                    currentTime: function () { return xg.currentTime || 0; },
                    switchTo: function (url, type) {
                        if ("undefined" !== typeof xg.changeDefinition) { xg.changeDefinition({ url: url, isLive: false }); xg.play(); }
                        else { window.location.href = window.location.pathname + '?url=' + encodeURIComponent(url); }
                    },
                    destroy: function () { if (xg.destroy) xg.destroy(); }
                };
            }
        });
    </script>
</body>
</html>
