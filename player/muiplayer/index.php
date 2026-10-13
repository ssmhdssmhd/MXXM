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
    <link rel="stylesheet" href="mui-player.min.css">
</head>
<body>
    <div id="video"></div>

    <script type="text/javascript" src="mui-player.min.js"></script>
    <script type="text/javascript" src="../_core.js"></script>
    <script type="text/javascript">
        // MuiPlayer 引擎
        function muiType(t) {
            if (t === 'hls') return 'm3u8';
            if (t === 'flv') return 'flv';
            return 'auto';
        }
        XYPlayer.start({
            create: function (o, h) {
                var mp = new MuiPlayer({
                    container: o.container,
                    autoplay: !!o.autoplay,
                    width: '100%',
                    height: '100%',
                    themeColor: '#23ade5',
                    video: {
                        url: o.url,
                        type: muiType(o.type),
                        autoPlay: !!o.autoplay,
                        playsinline: true
                    }
                });
                mp.on('loadedmetadata', function () { h.ready(); });
                mp.on('ended', function () { h.ended(); });
                mp.on('error', function () { h.error(); });
                mp.on('timeupdate', function () { h.timeupdate(); });

                return {
                    play: function () { mp.play(); },
                    pause: function () { mp.pause(); },
                    seek: function (t) { mp.seek(t); },
                    currentTime: function () { return (mp.video && mp.video.currentTime) || 0; },
                    switchTo: function (url, type) {
                        mp.video.url = url;
                        if ("undefined" !== typeof mp.reloadUrl) { mp.reloadUrl(url); } else { mp.pause(); mp.video.currentTime = 0; }
                        mp.play();
                    },
                    destroy: function () { if ("undefined" !== typeof mp.destroy) mp.destroy(); }
                };
            }
        });
    </script>
</body>
</html>
