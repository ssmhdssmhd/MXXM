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
    <link rel="stylesheet" href="video-js.min.css">
</head>
<body>
    <div id="video"></div>

    <script type="text/javascript" src="video.min.js"></script>
    <script type="text/javascript" src="../_core.js"></script>
    <script type="text/javascript">
        // Video.js 引擎（内置 http-streaming，原生支持 m3u8 / mpd）
        function vjsType(t) {
            if (t === 'hls') return 'application/x-mpegURL';
            if (t === 'dash') return 'application/dash+xml';
            if (t === 'flv') return 'video/x-flv';
            return 'video/mp4';
        }
        XYPlayer.start({
            needHls: false,
            needFlv: false,
            needDash: false,
            create: function (o, h) {
                var el = document.createElement('video-js');
                el.className = 'vjs-default-skin vjs-big-play-centered';
                el.setAttribute('playsinline', '');
                o.container.appendChild(el);
                var p = videojs(el, {
                    controls: true,
                    autoplay: !!o.autoplay,
                    preload: 'auto',
                    fill: true,
                    fluid: false,
                    playsinline: true,
                    playbackRates: [0.5, 1, 1.25, 1.5, 2],
                    html5: { vhs: { overrideNative: true }, nativeVideoTracks: false, nativeAudioTracks: false },
                    sources: [{ src: o.url, type: vjsType(o.type) }]
                });
                p.ready(function () { h.ready(); });
                p.on('ended', function () { h.ended(); });
                p.on('error', function () { h.error(); });
                p.on('timeupdate', function () { h.timeupdate(); });

                return {
                    play: function () { p.play(); },
                    pause: function () { p.pause(); },
                    seek: function (t) { p.currentTime(t); },
                    currentTime: function () { return p.currentTime() || 0; },
                    switchTo: function (url, type) { p.src({ src: url, type: vjsType(type) }); p.play(); },
                    destroy: function () { p.dispose(); }
                };
            }
        });
    </script>
</body>
</html>
