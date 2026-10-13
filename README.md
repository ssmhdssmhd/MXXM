# MXXM

> PHP 智能影视解析系统 - 基于 XyPlayer X3 v3.7 内核

## 📋 版本记录

| 版本 | 日期时间 | 说明 |
|------|----------|------|
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

## 🎬 MPV 桌面播放器

项目集成了 MPV 桌面播放器支持，适用于追求高画质与强大功能的用户。

- **播放页**：`player/mpv/` — 解析完成后自动生成 M3U 播放列表 / 复制视频直链
- **配置文件**：`source/mpv/mpv.conf`、`source/mpv/input.conf`
- **安装说明**：[`source/mpv/README.md`](./source/mpv/README.md)

核心画质方案（整合 Duke Enhanced + MPV_lazy）：

- 视频输出：`gpu-next` + `d3d11` + `d3d11va` 硬解
- 缩放：`ewa_lanczossharp`（缩小）/ `lanczos`（放大）/ `spline36`（色度）
- 时间插值：`mitchell`，色彩：`bt.1886`
- 可选脚本：uosc（界面）、thumbfast（缩略图）、mpv360（VR）、uosc_danmaku（弹幕）

MPV 主程序推荐下载：[zhongfly/mpv-winbuild](https://github.com/zhongfly/mpv-winbuild/releases)

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
