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

    <script type="text/javascript" src="artplayer.js"></script>
    <script type="text/javascript" src="../_core.js"></script>
    <script type="text/javascript">
        // Artplayer 引擎
        XYPlayer.start({
            create: function (o, h) {
                var opt = {
                    container: o.container,
                    url: o.url,
                    autoplay: !!o.autoplay,
                    volume: 0.7,
                    autoSize: false,
                    autoMini: false,
                    setting: true,
                    loop: false,
                    flip: true,
                    playbackRate: true,
                    aspectRatio: true,
                    fullscreen: true,
                    fullscreenWeb: true,
                    pip: true,
                    miniProgressBar: true,
                    autoOrientation: true,
                    airplay: true,
                    theme: '#23ade5',
                    hotkey: true,
                    mutex: true,
                    playsInline: true,
                    autoPlayback: false,
                    lang: 'zh-cn'
                };
                if (o.type === 'hls') opt.type = 'm3u8';
                else if (o.type === 'flv') opt.type = 'flv';
                else if (o.type === 'dash') opt.type = 'mpd';

                if (o.type === 'hls' || o.type === 'flv' || o.type === 'dash') {
                    opt.customType = {};
                    if (o.type === 'hls') {
                        opt.customType.m3u8 = function (video, url, art) {
                            if (window.Hls && Hls.isSupported()) {
                                var hls = new Hls();
                                hls.loadSource(url);
                                hls.attachMedia(video);
                                art.on('destroy', function () { hls.destroy(); });
                            } else if (video.canPlayType('application/vnd.apple.mpegurl')) {
                                video.src = url;
                            }
                        };
                    }
                    if (o.type === 'flv') {
                        opt.customType.flv = function (video, url, art) {
                            if (window.flvjs && flvjs.isSupported()) {
                                var fp = flvjs.createPlayer({ type: 'flv', url: url });
                                fp.attachMediaElement(video);
                                fp.load();
                                art.on('destroy', function () { fp.destroy(); });
                            }
                        };
                    }
                    if (o.type === 'dash') {
                        opt.customType.mpd = function (video, url, art) {
                            if (window.dashjs) {
                                var dp = dashjs.MediaPlayer().create();
                                dp.initialize(video, url, !!o.autoplay);
                                art.on('destroy', function () { dp.reset(); });
                            }
                        };
                    }
                }

                var art = new Artplayer(opt);
                art.on('ready', function () { h.ready(); });
                art.on('video:ended', function () { h.ended(); });
                art.on('video:error', function () { h.error(); });
                art.on('video:timeupdate', function () { h.timeupdate(); });

                return {
                    play: function () { art.play(); },
                    pause: function () { art.pause(); },
                    seek: function (t) { art.currentTime = t; },
                    currentTime: function () { return art.currentTime || 0; },
                    switchTo: function (url) { art.switchUrl(url); },
                    destroy: function () { art.destroy(false); }
                };
            }
        });
    </script>
</body>
</html>
