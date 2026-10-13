# MXXM

> PHP 智能影视解析系统 - 基于 XyPlayer X3 v3.7 内核

## 📋 版本记录

| 版本 | 日期时间 | 说明 |
|------|----------|------|
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
├── player/                # 播放器（ckplayer / dplayer / p2p-dplayer / h5 / mpv）
├── SF/                    # 官替算法（资源站替换算法 v0.1）
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

## 🧩 官替算法 v0.1

将官方平台（VIP）地址替换为你的资源站（自定义 CMS）地址，免去手动寻找资源。

- **入口**：后台侧边栏「官替算法」→「算法设置」（`admin/html/admin_sf.htm`），位于「在线更新」上方
- **算法目录**：仓库根目录 `SF/`（`index.php` 解析入口 / `ziyuan.php` 资源替换核心 / `mysql.php` 数据库连接池 / `md5.php` 调试图）
- **调用方式**：`域名/SF/?url=官方视频地址`
- **后台可配置**（保存后生成 `save/sf.config.php`，脚本自动读取，无需打开文件夹改文件）：
  - 算法目录、启用开关
  - CMS 地址、播放器编码、电影分类ID、综艺分类ID、解析接口、去广告接口
  - 数据表、数据库地址 / 用户名 / 密码 / 库名
- **目录自适应**：修改「算法目录」后，保存时后台会自动把算法文件复制到该目录，免手动操作文件夹

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
