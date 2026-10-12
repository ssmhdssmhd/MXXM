# MXXM

> PHP 智能影视解析系统 - 基于 XyPlayer X3 v3.7 内核

## 📋 版本记录

| 版本 | 日期时间 | 说明 |
|------|----------|------|
| v.0.0.3 | 2026-10-12 23:58 (202610122358) | 新增 MPV 桌面播放器支持；提供 `player/mpv/` 播放页（M3U 列表 / 直链复制）与 `source/mpv/` 优化配置（mpv.conf / input.conf），整合 Duke Enhanced + MPV_lazy 最佳实践，支持 uosc / thumbfast / mpv360 / uosc_danmaku 脚本 |
| v.0.0.2 | 2026-10-12 23:39 (202610122339) | 集成 XyPlayer X3 v3.7 智能解析内核；上线完整视频解析、播放器、后台管理、多模板体系；全站 Logo / Favicon 替换为 MXLOGO 资产库资源 |
| v.0.0.1 | 2026-10-13 | 项目重建，搭建基础 PHP 框架 |

## 🚀 快速开始

### 环境要求

- PHP >= 7.4（需开启 curl、openssl、mbstring 扩展）
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

## 📝 开发规范

- 版本号格式：`v.主.次.修`（如 v.0.0.1 → v.0.0.99 → v.0.1.0，百位进一）
- 每次更新代码必须同步更新版本号与 README 版本记录
- 版本文件命名：`项目名.版本号 时间戳`，例如 `MXXM.v.0.0.3 202610122358`
- 文件名使用 `.` 分隔，编译产物不得出现 `-`
- 所有 Logo / Favicon 统一使用 MXLOGO 仓库资源
- 上传代码前必须审查，禁止包含本地污染代码与敏感凭据

## 🔒 安全提示

- 首次部署请修改 `save/config.php` 中的后台账号密码
- 生产环境建议通过 `.htaccess` 或 Nginx 规则禁止直接访问 `save/` 目录
- 缓存目录 `cache/` 已加入 `.gitignore`，请勿提交运行时缓存

## 📄 License

MIT
