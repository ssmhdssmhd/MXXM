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
    <link rel="stylesheet" href="mediaelementplayer.min.css">
</head>
<body>
    <div id="video"></div>

    <script type="text/javascript" src="mediaelement-and-player.min.js"></script>
    <script type="text/javascript" src="../_core.js"></script>
    <script type="text/javascript">
        // MediaElement.js 引擎（原生 <video>，m3u8 仅 Safari 原生支持，其余回退 h5）
        XYPlayer.start({
            needHls: false,
            needFlv: false,
            needDash: false,
            create: function (o, h) {
                var video = document.createElement('video');
                video.setAttribute('playsinline', '');
                video.style.width = '100%';
                video.style.height = '100%';
                o.container.appendChild(video);

                var mp = new MediaElementPlayer(video, {
                    autoplay: !!o.autoplay,
                    stretching: 'fill',
                    features: ['playpause', 'current', 'progress', 'duration', 'volume', 'fullscreen'],
                    success: function (media) {
                        media.setSrc(o.url);
                        media.load();
                        if (o.autoplay) { media.play(); }
                        media.addEventListener('ended', function () { h.ended(); });
                        media.addEventListener('error', function () { h.error(); });
                        media.addEventListener('timeupdate', function () { h.timeupdate(); });
                        h.ready();
                    }
                });

                return {
                    play: function () { mp.play(); },
                    pause: function () { mp.pause(); },
                    seek: function (t) { mp.currentTime = t; },
                    currentTime: function () { return mp.currentTime || 0; },
                    switchTo: function (url, type) { mp.setSrc(url); mp.load(); mp.play(); },
                    destroy: function () { if (mp.remove) mp.remove(); }
                };
            }
        });
    </script>
</body>
</html>
