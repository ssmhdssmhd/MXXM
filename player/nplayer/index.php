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
</head>
<body>
    <div id="video"></div>

    <script type="text/javascript" src="nplayer.min.js"></script>
    <script type="text/javascript" src="../_core.js"></script>
    <script type="text/javascript">
        // NPlayer 引擎（NPlayer 内置解析 m3u8 / mpd / flv）
        XYPlayer.start({
            needHls: false,
            needFlv: false,
            needDash: false,
            create: function (o, h) {
                var np = new NPlayer({
                    container: o.container,
                    src: o.url,
                    autoplay: !!o.autoplay,
                    live: !!o.live,
                    playsinline: true,
                    volume: 0.7,
                    controls: ['play', 'volume', 'progress', 'current', 'duration', 'setting', 'fullscreen'],
                    settings: ['speed', 'mirror', 'pip'],
                    themeColor: '#23ade5'
                });
                np.on('loadedmetadata', function () { h.ready(); });
                np.on('ended', function () { h.ended(); });
                np.on('error', function () { h.error(); });

                return {
                    play: function () { np.play(); },
                    pause: function () { np.pause(); },
                    seek: function (t) { np.currentTime = t; },
                    currentTime: function () { return np.currentTime || 0; },
                    switchTo: function (url, type) {
                        if ("undefined" !== typeof np.switchVideo) { np.switchVideo({ src: url }); np.play(); }
                        else { window.location.href = window.location.pathname + '?url=' + encodeURIComponent(url); }
                    },
                    destroy: function () { if (np.destroy) np.destroy(); }
                };
            }
        });
    </script>
</body>
</html>
