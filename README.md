# MXXM

> PHP 智能影视解析系统 - 基于 XyPlayer X3 v3.7 内核

## 📋 版本记录

| 版本 | 日期时间 | 说明 |
|------|----------|------|
| v.0.0.30 | 2026-10-22 00:20 (202610220020) | **广告设置新增「解析页去广告」**：可开启屏蔽解析接口页面自带的弹窗广告与劫持跳转（iframe 通过 `sandbox` 限制，严格模式禁弹窗+禁顶层跳转，兼容模式仅禁跳转），支持在解析接口地址后追加自定义去广告参数（如 `&ad=0`）；配置项 `block / block_mode / block_param` 存入 `save/ad.config.php`，前台 `v.php` 与 `xyplay` 内核的解析 iframe 均生效 |
| v.0.0.29 | 2026-10-22 00:10 (202610220010) | **新增 5 条沫兮解析线路**（沫兮主线 / 备1 / 备2 / 备3 / 备4，位于线路列表头部）+ **解析线路接口检测**（后台「系统设置 → 解析设置」内新增「接口检测」区域，可自定义测试视频地址，一键批量检测全部线路，逐条返回可用状态 / HTTP 状态码 / 响应耗时）+ **后台新增「广告设置」菜单**（侧边栏位于「防火墙设置」下方）：可开启/关闭、设置展示时长与是否允许跳过，并分别填写电脑端 / 移动端广告代码；前台调用解析接口前自动识别设备并展示对应广告（`v.php` 与 `xyplay` 内核双端生效），配置存于 `save/ad.config.php` |
| v.0.0.28 | 2026-10-15 14:39 (202610151439) | 算法1（mx1）数据库连接支持独立端口：后台新增 `db_port` 输入框，`mx1/mysql.php` 读取该配置，同时兼容 `host:port` 老格式 |
| v.0.0.17 | 2026-10-15 12:45 (202610151245) | **算法2 (mx2) 新增独立资源站管理后台** `mx2/admin.php?tab=sites`（参考 MXGJ admin.php 风格，默认登录密码 `moxi123`，存于 `mx2/config/settings.json` 的 `admin_password` 字段，登录后可改）。独立 session 登录态 + 三个 tab：`sites`（资源站列表表格，每行字段=站点名/搜索模板/跟随播放代理/HTTP方法+解析模式+自定义Header+POST体/角色主用平替/特殊站开关/启用开关，支持➕添加/删除/即时开关/保存自动清缓存）、`mapping`（剧名/cid 映射表增删）、`settings`（全局开关/超时/缓存/管理密码）；字段名和 MXGJ 原版一致（`template / parse / headers / post / proxy / role / is_special / enabled`），与 `mx2/lib/SiteSearcher.php` 里 `$h['parse']` 等读取天然兼容。`mx2/bootstrap.php` 新增 admin 辅助函数（`mx2_admin_is_ajax / mx2_admin_save_ok / mx2_admin_save_fail / mx2_purge_cache / mx2_admin_password`），首次访问自动补默认密码到 `settings.json`。MXXM 主 admin 的「算法2」设置页增加紫色引导条，一键新窗口打开资源站管理后台 |
| v.0.0.16 | 2026-10-15 12:30 (202610151230) | **修复算法2 (mx2) 两处关键 bug**：① `mx2/bootstrap.php` 里 `MX2_ROOT` 定义为 `dirname(__DIR__)` 算成了站点根目录 `/workspace`，导致 `spl_autoload_register` 找 `/workspace/lib/LinkParser.php`、配置读 `/workspace/config/settings.json`，**类加载失败 + 配置全部读不到**；改为 `__DIR__`（即 mx2 自身目录）后整条链路恢复正常。② 页面抓取（PageResolver）返回的标题未过 `mx2_is_garbage_title` 过滤，垃圾标题（如「那条视频不见了」）一路带到资源站搜索，导致浪费请求且无法命中；修复：缓存写入前、主流程赋值前均过垃圾校验，垃圾页标题按「未识别」处理，走 cid/vid 兜底返回 |
| v.0.0.15 | 2026-10-15 12:00 (202610151200) | **官替算法重构为双算法架构**：原「官替算法」更名为**算法1 (mx1)**（原数据库匹配法，目录 `SF/` → `mx1/`，配置 `save/sf.config.php` → `save/mx1.config.php`，后台页 `admin_sf.htm` → `admin_mx1.htm`）；新增**算法2 (mx2)**，移植自 `ssmhdssmhd/MXGJ` 沫兮官替系统核心算法（**无需数据库**：官方链接解析 → 映射表 → 页面抓取 → 多线程资源站搜索），目录 `mx2/`（`index.php` / `bootstrap.php` / `lib/{LinkParser,PageResolver,SiteSearcher,Cache,SiteHealth,Logger}.php` / `config/{settings,sites,mapping}.json`），调用方式与算法1一致：`域名/mx2/?url=官方视频地址`；后台「官替算法」侧边栏拆分为「算法1 (mx1)」「算法2 (mx2)」两个子菜单，分别管理各自配置 |
| v.0.0.14 | 2026-10-14 06:58 (202610140658) | 后台侧边栏「系统设置」中**「云播设置」前面新增「资源站设置」**菜单（`admin/html/admin_ziyuan.htm`）：可设置资源站官网、采集接口、播放器编码、播放器 URL 等；支持**实时更新站点列表**（数据源 `https://blog.ksdiy.cn/dh/`，拉取 `resources.json`）、**单站/一键解析详情**（自动填入该站 m3u8 采集接口、从 `/from/xxx` 提取播放器编码、从详情页提取 `/play/?url=` 播放器地址）、启用开关、**一键同步到云播设置资源列表**（按接口地址去重，追加/覆盖可选）；数据存于 `save/ziyuan.config.php`，无需打开文件夹改任何文件 |
| v.0.0.13 | 2026-10-14 06:30 (202610140630) | 补齐 `player/mpv/` 依赖：新增 `images/` 目录（pront / next / line / list），对应 `DPlayer.min.css` 引用的 4 个按钮图标；经 md5 校验，mpv 目录内 6 个 JS/CSS 库与 `player/dplayer/` 完全一致，现依赖已全部齐备 |
| v.0.0.12 | 2026-10-14 06:27 (202610140627) | `player/mpv/` **播放器库本地化**：将 DPlayer 内核及 HLS / FLV / DASH / WebTorrent 解码库复制至 `player/mpv/` 目录内，页面不再依赖 `player/dplayer/`，可独立、离线运行 |
| v.0.0.11 | 2026-10-13 21:05 (202610132105) | 新增 9 款 WEB 播放器（本地离线打包，`player/` 目录）：**Artplayer / Video.js / MuiPlayer / Plyr / Aliplayer(阿里云) / TCPlayer(腾讯云) / XGPlayer(西瓜) / NPlayer / MediaElement.js**；新增通用对接核心 `player/_core.js`（统一接入 xyplay：播放列表切换、记忆播放、自定义右键、上下一集、格式识别 m3u8/flv/mp4/dash、播放出错自动回退 h5）；后台「播放器设置」下拉自动列出全部 15 款播放器 |
| v.0.0.10 | 2026-10-13 20:34 (202610132034) | 后台「系统设置」中**「基本设置」前面新增「播放器设置」**菜单，独立页面（`admin_player.htm`）：可选择电脑端/移动端默认播放器（自动读取 `player/` 目录，ckplayer、ckplayerx、dplayer、h5、mpv、p2p-dplayer 及自定义）、自定义播放器地址、自动播放，以及记忆播放 / P2P加速 / 弹幕 / 全屏点击 / LOGO / 自定义右键 / 自动播放器选择规则；原「播放设置」中重复的播放器标签页已移除，避免两处维护 |
| v.0.0.9 | 2026-10-13 20:20 (202610132020) | 新增 `GZ/` 云播放规则库：规则文件（`yun.match.php` / `yun.ver.js`）纳入仓库，随在线更新实时自动同步，免维护；系统运行时**优先加载 GZ/ 规则**（缺失回退 `save/yun.match.php`）；后台「云播放设置 → 更新规则」改为从当前仓库 GZ/ 实时拉取（替换已停运的第三方源 `server.baidu.cn`）；「当前规则」版本与规则编辑均以 GZ/ 为准 |
| v.0.0.8 | 2026-10-13 17:48 (202610131748) | 新增**官替算法 v0.1**：后台侧边栏「在线更新」上方新增「官替算法」→「算法设置」；算法代码置于仓库根目录 `SF/`（index.php / ziyuan.php / mysql.php / md5.php）；全部参数（算法目录、启用开关、CMS 地址、播放器编码、电影/综艺分类、解析接口、去广告接口、数据表、数据库连接）均可在后台配置，保存后生成 `save/sf.config.php`，**无需打开文件夹修改任何文件**；算法目录变更时后台自动同步算法文件到该目录 |
| v.0.0.7 | 2026-10-13 14:56 (202610131456) | `player/mpv/` 改为直接可用的**网页播放器**，无需下载任何软件：访问 `域名/player/mpv/?url=视频地址` 即可在线播放，自动识别 m3u8 / flv / mpd / magnet 等格式（基于 DPlayer + HLS / FLV / DASH / WebTorrent），兼容 base64 与 url-encoded 传参，适配移动端内联播放 |
| v.0.0.6 | 2026-10-13 14:43 (202610131443) | 修复缺失 `cache/` 目录：新增 `cache/.gitkeep` 占位并调整 `.gitignore`（保留目录、忽略运行时缓存文件），确保克隆 / 在线更新后缓存目录始终存在；`Main_Cache` 构造函数与 `api.php` 写入前自动创建缓存目录，避免写入/读取/清理失败 |
| v.0.0.5 | 2026-10-13 13:15 (202610131315) | 修复在线更新与缓存清理：`admin.php` 统一显式声明 `Content-Type: application/json`，规避中间层注入导致的 JSON 解析异常；移除在线更新页面临时调试代码，功能定型 |
| v.0.0.4 | 2026-10-13 13:30 (202610131330) | 后台新增「在线更新」功能：实时对比当前版本与远程仓库版本并显示最新提交，一键从仓库拉取最新代码（自动跳过 `save/` 用户配置）；后台顶栏新增「清理缓存」，一键清除服务器缓存 + 浏览器缓存并强制刷新，确保前台加载最新内容 |
| v.0.0.3 | 2026-10-12 23:58 (202610122358) | 新增 MPV 桌面播放器支持；提供 `player/mpv/` 播放页（M3U 列表 / 直链复制）与 `source/mpv/` 优化配置（mpv.conf / input.conf），整合 Duke Enhanced + MPV_lazy 最佳实践，支持 uosc / thumbfast / mpv360 / uosc_danmaku 脚本 |
| v.0.0.2 | 2026-10-12 23:39 (202610122339) | 集成 XyPlayer X3 v3.7 智能解析内核；上线完整视频解析、播放器、后台管理、多模板体系；全站 Logo / Favicon 替换为 MXLOGO 资产库资源 |
| v.0.0.1 | 2026-10-13 | 项目重建，搭建基础 PHP 框架 |

## 🚀 快速开始

### 环境要求

- PHP >= 7.4（需开启 curl、openssl、mbstring 扩展）
- 在线更新功能额外需要 `ZipArchive` 扩展
- Apache（启用 mod_rewrite）/ Nginx
- 可选：MySQL（用于高级数据存储，默认使用文件配置）

### 本地运行

```bash
cd MXXM
php -S localhost:8080
```

浏览器访问 `http://localhost:8080`

### 后台管理

- 后台地址：`/admin/`
- 默认账号：`admin`
- 默认密码：`admin`
- 登录后请立即修改密码，并在后台「系统设置」中配置站点信息
- 侧边栏「在线更新」→「版本管理」：实时对比当前版本与远程仓库版本，一键拉取最新代码
- 顶栏「清理缓存」：一键清除服务器缓存与浏览器缓存并强制刷新，确保前台加载最新内容

## 📁 项目结构

```
MXXM/
├── index.php              # 前台入口
├── api.php                # 解析 API 入口
├── v.php                  # 播放页入口
├── so.php                 # 搜索页入口
├── 404.html               # 404 页面
├── play.html              # 播放页模板
├── crossdomain.xml        # Flash 跨域策略
├── favicon.ico            # 站点图标（MXLOGO）
├── version.php            # 版本元数据（在线更新对比依据）
├── include/               # 核心类库（class.main.php / class.db.php）
├── video/                 # 各视频源解析类
├── player/                # 播放器（15 款）与通用对接核心 _core.js
│   ├── _core.js           # 通用对接核心（xyplay：列表/记忆/右键/上下集/回退）
│   ├── ckplayer|ckplayerx|dplayer|p2p-dplayer|h5|mpv
│   ├── artplayer|videojs|muiplayer|plyr   # Artplayer/Video.js/MuiPlayer/Plyr
│   └── aliplayer|tcplayer|xgplayer|nplayer|mediaelement  # 阿里/腾讯/西瓜/NPlayer/MediaElement
├── mx1/                   # 官替算法 算法1（数据库匹配法，原 SF/）
├── mx2/                   # 官替算法 算法2（MXGJ 核心算法，无需数据库）
├── GZ/                    # 云播放规则库（GZ 规则，随仓库实时自动更新）
├── plus/                  # 插件（微信 / sea_parse / parse）
├── templets/              # 前台模板（byg / default）
├── source/                # 静态资源（图片 / 视频 / 备份 / mpv 配置）
├── save/                  # 运行时配置（config.php 等）
├── admin/                 # 后台管理系统
├── .htaccess              # Apache 重写规则
├── .gitignore             # Git 忽略规则
└── README.md              # 项目说明
```

## 🎨 Logo 资产

站点 Logo 与 Favicon 均来自 [MXLOGO](https://github.com/ssmhdssmhd/MXLOGO) 资产库：

- 主 Logo：`source/images/logo.png`
- 站点图标：`favicon.ico` / `source/images/logo.ico`
- 模板与播放器 Logo：`templets/byg/images/logo.png`、`player/*/logo.png`

## 🎬 在线网页播放器

打开即用，**无需下载任何软件**，直接在浏览器中播放：

```
域名/player/mpv/?url=视频地址
```

- 自动识别媒体类型并按需加载解码器（基于 DPlayer）：
  - `.m3u8` → HLS（hls.js）
  - `.flv` → FLV（flv.js）
  - `.mpd` → DASH（dash.js）
  - `magnet:` → WebTorrent
  - 其他 → 浏览器原生播放（如直链 mp4）
- `url` 参数兼容 **明文** 与 **base64** 两种传参
- 支持 PC / 移动端内联播放，播放出错时给出提示

> 桌面端 MPV 优化配置（可选，追求极致画质时使用）：`source/mpv/mpv.conf`、`source/mpv/input.conf`，
> 安装与用法见 [`source/mpv/README.md`](./source/mpv/README.md)；
> 主程序推荐 [zhongfly/mpv-winbuild](https://github.com/zhongfly/mpv-winbuild/releases)。

### 支持的播放器（15 款，本地离线打包）

任意播放器均可直接以 `域名/player/<名称>/?url=视频地址` 访问；后台「播放器设置」下拉会自动列出全部。

| 目录 | 播放器 | HLS(m3u8) | FLV | DASH | 说明 |
|------|--------|:---:|:---:|:---:|------|
| `dplayer` / `p2p-dplayer` | DPlayer | ✅ | ✅ | ✅ | 自带弹幕，P2P 版本支持 CDNBye |
| `ckplayer` / `ckplayerx` | CKplayer | ✅ | — | — | 老牌 H5 播放器 |
| `h5` | 原生 H5 | ✅ | — | — | 出错回退的兜底播放器 |
| `artplayer` | Artplayer | ✅ | ✅ | ✅ | 自定义类型接入 hls/flv/dash |
| `videojs` | Video.js | ✅ | — | ✅ | 内置 http-streaming |
| `muiplayer` | MuiPlayer | ✅ | ✅ | — | 简约风格 |
| `plyr` | Plyr | ✅ | ✅ | — | 轻量、UI 好看 |
| `aliplayer` | 阿里云 Aliplayer | ✅ | ✅ | — | 内置解析 |
| `tcplayer` | 腾讯云 TCPlayer | ✅ | ✅ | — | 需先加载全局 hls.js/flv.js |
| `xgplayer` | 西瓜播放器 | ✅ | — | — | m3u8 由 xgplayer-hls 插件提供 |
| `nplayer` | NPlayer | ✅ | ✅ | ✅ | 轻量弹幕播放器 |
| `mediaelement` | MediaElement.js | Safari | — | — | 经典老牌播放器 |
| `mpv` | 网页播放器(基于 DPlayer) | ✅ | ✅ | ✅ | 库已本地化至本目录，可独立离线运行 |

- 全部接入 `player/_core.js` 通用核心：线路/剧集列表切换、记忆播放（cookie）、自定义右键、上下一集、格式自动识别、**播放出错自动回退 `h5` 播放器**
- 库文件全部**本地打包**（对应 `player/<名称>/` 内），无外链依赖，可离线运行
- 新增播放器目录后，后台「播放器设置」下拉会自动出现，无需改代码

## 🧩 官替算法（双算法架构）

将官方平台（VIP）地址替换为你的资源站地址，免去手动寻找资源。后台侧边栏「官替算法」下提供两套算法，调用方式一致：

### 算法1 (mx1) — 数据库匹配法

- **入口**：后台「官替算法」→「算法1 (mx1)」（`admin/html/admin_mx1.htm`）
- **算法目录**：仓库根目录 `mx1/`（`index.php` 解析入口 / `ziyuan.php` 资源替换核心 / `mysql.php` 数据库连接池 / `md5.php` 调试图）
- **调用方式**：`域名/mx1/?url=官方视频地址`
- **原理**：通过数据库匹配官方 URL 与 CMS `vod_play_url`，再从 CMS API 取真实播放地址
- **后台可配置**（保存后生成 `save/mx1.config.php`）：算法目录、启用开关、CMS 地址、播放器编码、电影/综艺分类ID、解析接口、去广告接口、数据表、数据库连接
- **目录自适应**：修改「算法目录」后，保存时后台自动把算法文件复制到该目录

### 算法2 (mx2) — MXGJ 多线程搜索法（无需数据库）

- **入口**：后台「官替算法」→「算法2 (mx2)」（`admin/html/admin_mx2.htm`）
- **算法目录**：仓库根目录 `mx2/`（`index.php` / `bootstrap.php` / `lib/{LinkParser,PageResolver,SiteSearcher,Cache,SiteHealth,Logger}.php` / `config/{settings,sites,mapping}.json`）
- **调用方式**：`域名/mx2/?url=官方视频地址`（支持腾讯/爱奇艺/优酷/芒果TV/哔哩哔哩/PPTV/搜狐）
- **原理**（移植自 [MXGJ](https://github.com/ssmhdssmhd/MXGJ) 沫兮官替系统核心算法）：
  1. 解析官方链接 → 平台 / vid / cid / 集数
  2. 命中本地映射表（`config/mapping.json`）→ 剧名 + 集数
  3. 映射未命中时自动抓取官方页面识别剧名+集数并固化映射
  4. 多线程（curl_multi）并发搜索全部资源站，按集数提取 m3u8
- **后台可配置**（保存到 `mx2/config/` 下的 JSON 文件）：启用开关、超时、缓存时长、域名替换、频率控制、平替池、资源站列表、cid 映射表

## 🎯 资源站设置（数据源：blog.ksdiy.cn/dh）

在后台「系统设置 → 资源站设置」（`admin/html/admin_ziyuan.htm`，位于「云播设置」前面）集中管理资源站，一键把 m3u8 采集接口同步到云播。

- **入口**：后台侧边栏「系统设置」→「资源站设置」
- **数据源（实时）**：`https://blog.ksdiy.cn/dh/`，实时拉取其 `resources.json` 站点列表
- **可设置字段**：资源站官网、采集接口（默认取该站 **m3u8** 采集接口）、播放器编码（从接口 `/from/xxx` 自动提取）、播放器 URL（详情页 `/play/?url=`）、启用开关
- **操作流程**：①「实时更新站点列表」拉取全部资源站 → ②「一键解析详情」自动填入采集接口 / 播放器编码 / 播放器 URL（可手动修正）→ ③勾选「启用」并「保存设置」→ ④「同步到云播设置」写入云播资源列表
- **同步规则**：仅同步「已启用且有采集接口」的站点，按接口地址去重，支持**追加**（默认）或**覆盖**云播现有资源列表
- **数据存放**：`save/ziyuan.config.php`（资源站列表）、`save/yun.config.php`（云播资源列表）
- **免维护**：全部操作均在后台完成，**无需打开文件夹修改任何文件**

## 📐 云播放规则（GZ 规则库 v0.1）

云播放的站点匹配规则集中存放于仓库根目录 `GZ/`，随仓库实时自动更新，**免维护**。

- **规则文件**：[`GZ/yun.match.php`](./GZ/yun.match.php)（标题/集数/URL/类型匹配规则）、[`GZ/yun.ver.js`](./GZ/yun.ver.js)（规则版本显示）
- **加载优先级**：系统运行时优先加载 `GZ/` 规则；`GZ/` 缺失时回退 `save/yun.match.php`
- **实时自动更新**：后台「云播放设置 → 更新规则」从当前仓库 `raw.githubusercontent.com/<repo>/<branch>/GZ/` 拉取最新规则并写入（替换已停运的第三方源），点一下即同步
- **随在线更新同步**：`GZ/` 不位于受保护的 `save/` 下，因此「在线更新」拉取仓库代码时会一并更新规则
- **可视化编辑**：后台「云播放设置 → 规则设置」可直接编辑，保存即写入当前生效的 GZ/ 规则文件

## 🔄 在线更新与缓存清理

后台内置免维护的在线更新能力，无需手动下载覆盖：

- **入口**：后台侧边栏「在线更新」→「版本管理」（`admin/html/admin_update.htm`）
- **版本对比**：实时读取本地 `version.php` 与远程仓库 `version.php`，展示当前版本、远程版本、远程仓库与最新提交
- **一键更新**：从 `codeload.github.com` 下载仓库最新代码并覆盖本地代码，**自动跳过 `save/` 目录**，不影响用户配置与数据
- **缓存清理**：后台顶栏「清理缓存」，一键清除服务器缓存（`cache/`）与浏览器缓存（LocalStorage / SessionStorage），并带时间戳强制刷新，确保前台加载到最新内容

> 在线更新依赖服务器能够访问 `github.com` / `codeload.github.com` / `raw.githubusercontent.com`，并需开启 `ZipArchive` 扩展与根目录写入权限。

## 📝 开发规范

- 版本号格式：`v.主.次.修`（如 v.0.0.1 → v.0.0.99 → v.0.1.0，百位进一）
- 每次更新代码必须同步更新版本号与 README 版本记录
- 版本文件命名：`项目名.版本号 时间戳`，例如 `MXXM.v.0.0.4 202610131330`
- 文件名使用 `.` 分隔，编译产物不得出现 `-`
- 所有 Logo / Favicon 统一使用 MXLOGO 仓库资源
- 上传代码前必须审查，禁止包含本地污染代码与敏感凭据

## 🔒 安全提示

- 首次部署请修改 `save/config.php` 中的后台账号密码
- 生产环境建议通过 `.htaccess` 或 Nginx 规则禁止直接访问 `save/` 目录
- 缓存目录 `cache/` 已加入 `.gitignore`，请勿提交运行时缓存

## 📄 License

MIT
