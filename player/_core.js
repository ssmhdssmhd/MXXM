/**
 * MXXM 通用播放器对接核心 (player/_core.js)
 * ---------------------------------------------------------------
 * 作用：把不同 WEB 播放器统一接入本项目 xyplay 生态（播放列表 / 记忆播放 /
 *       自定义右键 / 上下一集 / 弹幕参数 / 播放出错自动回退 h5 播放器）。
 *
 * 用法（在各播放器页面中）：
 *   XYPlayer.start({
 *       create: function (opt, h) { ... 返回引擎 api ... }
 *   });
 *
 * opt  -> { container, url, type, autoplay, live, danmaku, isMobile, xyplay }
 *         type 取值: normal | hls | flv | dash | webtorrent
 * h    -> 引擎需回调的事件:
 *         h.ready()       就绪
 *         h.ended()       播放结束
 *         h.error()       播放出错
 *         h.timeupdate()  进度更新
 * api  -> 引擎需返回的能力（缺省项由核心做兜底）:
 *         play() / pause() / seek(秒) / currentTime() / switchTo(url,type) / destroy()
 *
 * 依赖：jquery.min.js、class.main.js（提供 _GET / getCookie / setCookie / is_mobile / Base64）
 */
(function () {
    var XYPlayer = {
        url: decodeURIComponent(_GET('url')),
        autoplay: _GET('autoplay') === "0" ? 0 : 1,
        seektime: _GET('seektime') === "0" ? 0 : 1,
        live: _GET('live') === "1" ? 1 : 0,
        danmaku: _GET('danmaku') === "1" ? 1 : 0,
        logo_off: _GET('logo_off') === "1" ? 1 : 0,
        xyplay: ("undefined" !== typeof parent.xyplay) ? parent.xyplay
            : (("undefined" !== typeof parent.parent && "undefined" !== typeof parent.parent.xyplay) ? parent.parent.xyplay : undefined),
        api: null,
        part: 0,
        headtime: 0,

        /* ---------------- 基础工具 ---------------- */
        detect: function (u) {
            if (u.indexOf('.m3u8') > -1) return 'hls';
            if (u.indexOf('magnet:') > -1) return 'webtorrent';
            if (u.indexOf('.flv') > -1) return 'flv';
            if (u.indexOf('.mpd') > -1) return 'dash';
            return 'normal';
        },
        loadScript: function (src) {
            return new Promise(function (resolve) {
                var s = document.createElement('script');
                s.src = src;
                s.onload = function () { resolve(true); };
                s.onerror = function () { resolve(false); };
                document.head.appendChild(s);
            });
        },
        // 各引擎可声明 needHls / needFlv / needDash / needWebtorrent = false 来关闭自动加载
        _need: { hls: true, flv: true, dash: true, webtorrent: true },
        ensureLibs: function (type) {
            var need = [];
            if (type === 'hls' && this._need.hls && !window.Hls) need.push('../hls.min.js');
            if (type === 'flv' && this._need.flv && !window.flvjs) need.push('../flv.min.js');
            if (type === 'dash' && this._need.dash && !window.dashjs) need.push('../dash.all.min.js');
            if (type === 'webtorrent' && this._need.webtorrent && !window.WebTorrent) need.push('../webtorrent.min.js');
            return Promise.all(need.map(this.loadScript));
        },
        notice: function (msg) {
            var el = document.getElementById('xy-notice');
            if (!el) return;
            el.innerHTML = msg;
            el.style.display = 'block';
            clearTimeout(this._noticeTimer);
            this._noticeTimer = setTimeout(function () { el.style.display = 'none'; }, 3000);
        },
        _style: function () {
            var css = ''
                + 'html,body{background-color:#000;padding:0;margin:0;height:100%;width:100%;color:#999;overflow:hidden;}'
                + '#video{position:absolute;left:0;top:0;z-index:1;height:100% !important;width:100% !important;}'
                + '#video>.dplayer-video-wrap, #video video{height:100% !important;width:100% !important;}'
                + '#xy-notice{position:absolute;z-index:2147483646;left:50%;top:50%;transform:translate(-50%,-50%);'
                + 'padding:6px 14px;background:rgba(0,0,0,.7);color:#fff;border-radius:4px;font-size:13px;display:none;pointer-events:none;}'
                + '#list{position:absolute;z-index:2147483647;display:none;bottom:0;top:40px;right:0;overflow-x:hidden;overflow-y:auto;'
                + 'width:130px;right:-25px;max-width:230px;max-height:calc(100% - 100px);text-align:center;}'
                + '@media screen and (max-width:650px){#list{width:100%;left:0;max-width:100%;min-width:auto;}}'
                + '#flaglist li,#playlist li{display:inline-table;color:#2693FF;border:1px solid #2693FF;width:80px;padding:5px;margin:5px;'
                + 'font-size:12px;text-align:center;border-radius:5px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;'
                + '-o-text-overflow:ellipsis;text-decoration:none;table-layout:fixed;cursor:pointer;}'
                + '#flaglist li:hover,#playlist li:hover{background-color:red;}'
                + '#stats{display:none;right:10px;text-align:center;top:3px;font-size:12px;color:#fdfdfd;text-shadow:1px 1px 1px #000;'
                + 'position:fixed;z-index:2147483645;}';
            var st = document.createElement('style');
            st.type = 'text/css';
            st.innerHTML = css;
            document.head.appendChild(st);
        },

        /* ---------------- 启动入口 ---------------- */
        start: function (engine) {
            var self = this;
            // 引擎可选声明：是否禁用某类格式库的自动加载（例如播放器自带 HLS 时）
            this._need = {
                hls: engine.needHls !== false,
                flv: engine.needFlv !== false,
                dash: engine.needDash !== false,
                webtorrent: engine.needWebtorrent !== false
            };
            this._style();
            this.headtime = Number(getCookie("time_" + this.url) || _GET('headtime'));
            this.part = (this.xyplay && this.xyplay.part !== undefined) ? Number(this.xyplay.part) : 0;

            // 播放出错统一回退到 h5 播放器（含脚本级错误）
            window.addEventListener('error', function () {
                window.location.href = "../h5/" + window.location.search;
            });

            var box = document.getElementById('video');
            // 提示控件
            if (!document.getElementById('xy-notice')) {
                var nd = document.createElement('div');
                nd.id = 'xy-notice';
                box.appendChild(nd);
            }
            // 信息控件
            if (!$('#stats').length) { $("#video").append("<div id='stats'></div>"); }
            // 播放列表控件
            if (!$('#list').length) {
                $("#video").append('<div id="list"><div id="flaglist"></div><div id="playlist"></div></div>');
            }

            var type = this.detect(this.url);
            this.ensureLibs(type).then(function () {
                try {
                    self.api = engine.create({
                        container: box,
                        url: self.url,
                        type: type,
                        autoplay: self.autoplay,
                        live: self.live,
                        danmaku: self.danmaku,
                        isMobile: is_mobile(),
                        xyplay: self.xyplay
                    }, {
                        ready: function () { self.onReady(); },
                        ended: function () { self.onEnded(); },
                        error: function () {
                            if (self.xyplay && "undefined" !== typeof self.xyplay.errorHandler) { self.xyplay.errorHandler(); }
                            else { window.location.href = "../h5/" + window.location.search; }
                        },
                        timeupdate: function () { self.onTimeupdate(); }
                    });
                } catch (e) {
                    window.location.href = "../h5/" + window.location.search;
                    return;
                }
                self.onListReady();
                self.timeUpdate();
            });
        },

        onListReady: function () {
            if ("undefined" !== typeof this.xyplay && "undefined" !== typeof this.xyplay.list_array) {
                this.control();
            }
        },

        /* ---------------- 事件 ---------------- */
        onReady: function () {
            var cur = this.api && this.api.currentTime ? this.api.currentTime() : 0;
            if (this.seektime === 1 && !this.live && this.headtime > 0 && cur < this.headtime) {
                this.api.seek(this.headtime);
                this.notice("继续上次播放");
            } else {
                this.notice("视频已就绪");
            }
        },
        onTimeupdate: function () {
            var cur = this.api && this.api.currentTime ? this.api.currentTime() : 0;
            setCookie("time_" + this.url, cur, 24);
        },
        onEnded: function () {
            setCookie("time_" + this.url, "", -1);
            if (this.xyplay && this.xyplay.playlist_array && this.xyplay.playlist_array.length > Number(this.part)) {
                this.notice("视频已结束,为您跳到下一集");
                setTimeout(function () { video_next(); }, 500);
            } else {
                this.notice("视频播放已结束");
            }
        },

        /* ---------------- 播放控制 ---------------- */
        myplay: function (url) {
            this.url = url;
            this.headtime = Number(getCookie("time_" + url));
            if (this.api && this.api.switchTo) {
                this.api.switchTo(url, this.detect(url));
                this.api.play();
            } else {
                // 兜底：重新加载本页
                window.location.href = window.location.pathname + '?url=' + encodeURIComponent(url);
                return;
            }
            if (this.xyplay && this.xyplay.title && !this.live) {
                parent.document.title = "正在播放:【" + this.xyplay.title + "】part " + (Number(this.part) + 1) + "-- " + this.xyplay.mytitle;
            }
        },
        video_next: function () {
            if ("undefined" !== typeof this.xyplay && "undefined" !== typeof this.xyplay.playlist_array) {
                if (Number(this.part) + 1 >= this.xyplay.playlist_array.length) { return false; }
            }
            this.part++;
            this.xyplay.part++;
            this.myplay(this.xyplay.playlist_array[this.part]);
        },
        video_front: function () {
            if ("undefined" !== typeof this.xyplay && "undefined" !== typeof this.xyplay.playlist_array) {
                if (Number(this.part) <= 0) { return false; }
            }
            this.part--;
            this.xyplay.part--;
            this.myplay(this.xyplay.playlist_array[this.part]);
        },
        video_onlist: function () {
            if ($('#list').css("display") === "none") {
                this.relist();
                $('#list').show();
                if (this.xyplay && this.xyplay.lswap) { $(this.xyplay.player).hide(); }
            } else {
                $('#list').hide();
                if (this.xyplay && this.xyplay.lswap) { $(this.xyplay.player).show(); }
            }
        },

        /* ---------------- 播放列表 ---------------- */
        relist: function (autoflag) {
            this.reflaglist();
            this.replaylist(null, autoflag);
        },
        reflaglist: function () {
            var self = this;
            $('#flaglist').empty();
            this.xyplay.flaglist_array = [];
            for (var i = 0, len = this.xyplay.list_array.length; i < len; i++) {
                this.xyplay.flaglist_array.push(this.xyplay.list_array[i].flag);
                var flag_name = this.xyplay.list_array[i].flag_name ? this.xyplay.list_array[i].flag_name : this.xyplay.list_array[i].flag;
                if (i === this.xyplay.pflag) {
                    $('#flaglist').append('<li class="click_work" type="flag" val="' + this.xyplay.list_array[i].flag + '" num="' + i + '" style="' + this.xyplay.play.style.play_on + '">' + flag_name + '</li>');
                } else {
                    $('#flaglist').append('<li class="click_work" type="flag" val="' + this.xyplay.list_array[i].flag + '" num="' + i + '">' + flag_name + '</li>');
                }
            }
        },
        replaylist: function (flag, autoflag) {
            if (!flag) {
                flag = this.xyplay.pflag;
                if (this.xyplay.play.off.autoflag === "1" && autoflag === true) {
                    flag = getCookie("pflag");
                    if (flag === "") { flag = 0; } else { flag++; }
                    if (flag + 1 > this.xyplay.list_array.length) { flag = 0; }
                    setCookie("pflag", flag, this.xyplay.timeout);
                    this.xyplay.pflag = flag;
                }
            }
            if ("undefined" !== typeof this.xyplay.list_array[flag] && "undefined" !== typeof this.xyplay.list_array[flag].video) {
                $('#playlist').empty();
                this.xyplay.playlist_array = [];
                this.xyplay.namelist_array = [];
                var list = this.xyplay.list_array[flag].video;
                for (var i = 0, len = list.length; i < len; i++) {
                    var array = list[i].split("$");
                    var pat = new RegExp(this.xyplay.play.match.video);
                    if (!this.xyplay.play.video_match || !pat.test(array[0])) {
                        this.xyplay.namelist_array.push(array[0]);
                        this.xyplay.playlist_array.push(array[1]);
                        if (i === Number(this.part)) {
                            $('#playlist').append('<li class="click_work" type="list" num="' + i + '" style="' + this.xyplay.play.style.play_on + '">' + array[0] + '√</li>');
                        } else {
                            $('#playlist').append('<li class="click_work" type="list" num="' + i + '">' + array[0] + '</li>');
                        }
                    }
                }
            }
        },
        control: function () {
            var self = this;
            $(document).ready(function () {
                $(document).bind("contextmenu", function (e) { return false; });
            });
            $(document).on('click', '.click_work', function () {
                var num = $(this).attr("num");
                var type = $(this).attr("type");
                if (type === "list") {
                    self.part = Number(num);
                    self.xyplay.part = Number(num);
                    self.myplay(self.xyplay.playlist_array[self.part]);
                    $("#list").hide();
                    self.replaylist();
                } else if (type === "flag") {
                    self.xyplay.pflag = Number(num);
                    self.reflaglist();
                    self.replaylist(self.xyplay.pflag);
                }
            });
        },

        /* ---------------- 时间显示 ---------------- */
        timeUpdate: function () {
            var date = new Date();
            var hour = ("00" + date.getHours()); hour = hour.substr(hour.length - 2);
            var minute = ("00" + date.getMinutes()); minute = minute.substr(minute.length - 2);
            var second = ("00" + date.getSeconds()); second = second.substr(second.length - 2);
            $("#stats").html(hour + ":" + minute + ":" + second);
            setTimeout("XYPlayer.timeUpdate()", 1000);
        }
    };

    window.XYPlayer = XYPlayer;

    /* 兼容父页调用（与各播放器页面保持一致的全局函数） */
    window.myplay = function (url) { return XYPlayer.myplay(url); };
    window.video_next = function () { return XYPlayer.video_next(); };
    window.video_front = function () { return XYPlayer.video_front(); };
    window.video_onlist = function () { return XYPlayer.video_onlist(); };
    window.relist = function (a) { return XYPlayer.relist(a); };
    window.reflaglist = function () { return XYPlayer.reflaglist(); };
    window.replaylist = function (f, a) { return XYPlayer.replaylist(f, a); };
})();
