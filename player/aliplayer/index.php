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
    <link rel="stylesheet" href="aliplayer-min.css">
</head>
<body>
    <div id="video"></div>

    <script type="text/javascript" src="aliplayer-min.js"></script>
    <script type="text/javascript" src="../_core.js"></script>
    <script type="text/javascript">
        // 阿里云 Aliplayer 引擎（内置 HLS/FLV/MP4；DASH 不支持则回退 h5）
        XYPlayer.start({
            needHls: false,
            needFlv: false,
            needDash: false,
            create: function (o, h) {
                var box = document.createElement('div');
                box.id = 'xy-ali';
                box.style.width = '100%';
                box.style.height = '100%';
                o.container.appendChild(box);

                var ap = null;
                ap = new Aliplayer({
                    id: 'xy-ali',
                    source: o.url,
                    autoplay: !!o.autoplay,
                    isLive: !!o.live,
                    width: '100%',
                    height: '100%',
                    playsinline: true,
                    useH5Prism: true,
                    useFlashPrism: false,
                    rePlay: false,
                    preload: true,
                    controlBarVisibility: 'hover',
                    showBarTime: true,
                    cover: ''
                }, function (player) {
                    player.on('error', function () { h.error(); });
                    player.on('ended', function () { h.ended(); });
                    player.on('timeupdate', function () { h.timeupdate(); });
                    h.ready();
                });

                return {
                    play: function () { ap.play(); },
                    pause: function () { ap.pause(); },
                    seek: function (t) { ap.seek(t); },
                    currentTime: function () { return (ap.getCurrentTime && ap.getCurrentTime()) || 0; },
                    switchTo: function (url, type) {
                        if ("undefined" !== typeof ap.loadByUrl) { ap.loadByUrl(url); ap.play(); }
                        else { window.location.href = window.location.pathname + '?url=' + encodeURIComponent(url); }
                    },
                    destroy: function () { if (ap && ap.dispose) ap.dispose(); }
                };
            }
        });
    </script>
</body>
</html>
