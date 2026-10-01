<p align="center">
  <img src="https://raw.githubusercontent.com/ssmhdssmhd/MXLOGO/main/app/app-icon-512.png" width="120" alt="MXSMCK Logo"/>
</p>

<h1 align="center">MXSMCK 聚合神马 TV 套件</h1>

<p align="center">
  电视端 App + 控制端 + CMS 内容管理 + 数据库 一体化解决方案<br/>
  部署简单、上手快，新手也能 10 分钟完成全流程搭建
</p>

<p align="center">
  <b>当前版本：</b><code>v.0.0.2</code> ·
  <b>更新时间：</b><code>20261001</code> ·
  <b>分支：</b><code>main</code>
</p>

---

## 目录

1. [项目简介](#项目简介)
2. [四大组成部分分析](#四大组成部分分析)
3. [整体架构](#整体架构)
4. [快速部署（新手教程）](#快速部署新手教程)
5. [文件结构总览](#文件结构总览)
6. [页面与功能明细](#页面与功能明细)
7. [版本更新日志](#版本更新日志)

---

## 项目简介

本项目是"聚合神马"TV 点播直播系统的完整套件，包含 4 个核心组成部分：

| 序号 | 组成部分 | 作用 | 说明 |
|------|----------|------|------|
| 1 | 电视端 App（APK） | 用户使用的电视盒子客户端 | 直播、点播、搜索、用户中心 |
| 2 | 聚合神马控制端 | App 的服务端对接后台 | 提供 zk.php 对接接口、支付、用户、管理后台 |
| 3 | 聚合神马 CMS 纯净版 | 视频内容管理系统 | 苹果 CMS（Maccms10）基于 ThinkPHP |
| 4 | 数据库 | 数据存储 | 控制端库（yyys_ 前缀）+ CMS 库（mac_ 前缀） |

Logo 统一使用 [MXLOGO 仓库](https://github.com/ssmhdssmhd/MXLOGO) 资源。

---

## 四大组成部分分析

### 1. 电视端 App（APK）

- **包名体系**：`com.shenma.tvlauncher`（神马电视启动器）
- **核心文件**：`assets/config.properties`、`assets/index.html`、`assets/search.html`
- **核心代码**：`smali_classes2/com/shenma/tvlauncher/Api.smali`
- **对接地址**（需要修改的核心配置）：

```
Api.smali 中三个字段：
- MAIN_JUHETV_URL  = 控制端主接口，填：https://你的域名/zk.php
- CLOUD_JUHETV_URL = 云端接口（可留空）
- JUHEQQ692000321_ID = 应用编号，填控制端数据库 app 表中创建的应用 ID
```

- **主要页面**：SplashActivity（启动页）、HomeActivity2（首页）、VideoPlayerActivity（播放器）、SearchActivity（搜索）、UserActivity（用户中心）、EmpowerActivity（授权）、SettingInvActivity（设置）、TVLivePlayer（直播）
- **播放内核**：IJKPlayer、ExoPlayer、KodiPlayer、阿里云播放器、乐视 P2P
- **编译方式**：使用 GitHub Actions 云端编译 APK（详见部署教程）

### 2. 聚合神马控制端

- **定位**：App 的服务端，即 App 对接的"后端"
- **运行要求**：PHP ≤ 7.3、MySQL
- **数据库**：`smtv`（前缀 `yyys_`，配置在 `include/db.config.php`）
- **核心入口文件**：

| 文件 | 功能 |
|------|------|
| `zk.php` | App 主对接接口（核心！返回配置、验证签名、输出 JSON） |
| `Client.php` | 视频解析客户端（解析线路/嗅探） |
| `api.php` / `api1.php` | 通用 API 入口（带防注入过滤） |
| `app.php` | App 入口 |
| `login.php` | 扫码登录 |
| `order.php` / `pay.php` | 订单管理 / 支付发起 |
| `ali_notify.php` | 支付宝支付回调 |
| `qq_notify.php` | QQ 钱包支付回调 |
| `wx_notify.php` | 微信支付回调 |
| `admin/index.php` | 管理后台登录 |
| `admin/adminer.php` | 在线数据库管理 |
| `admin/userdata.php` | 用户数据管理 |
| `install/index.php` | 安装向导 |
| `Webpage/index.php` | 微信内网页支付跳转 |

### 3. 聚合神马 CMS 纯净版

- **定位**：视频内容管理系统（点播资源管理）
- **内核**：苹果 CMS（Maccms10），基于 ThinkPHP 5
- **数据库**：`mysql_data_e2xzT.sql`（前缀 `mac_`）
- **运行要求**：PHP ≥ 5.5（建议 5.6 ~ 7.3）、MySQL
- **核心入口文件**：

| 文件 | 功能 |
|------|------|
| `index.php` | 前台入口（点播站页面） |
| `_admin.php` | 后台入口（安装后建议改名，防黑客攻击） |
| `install.php` | 安装向导 |
| `api.php` | 数据接口 |
| `api/douban.php` | 豆瓣数据接口（影片信息抓取） |
| `tu.php` / `img.php` | 图片处理 |
| `application/admin/` | 后台管理模块 |
| `application/index/` | 前台展示模块 |
| `application/api/` | 对外接口模块 |
| `template/default/` | 默认模板 |
| `upload/` | 素材上传目录（vod 视频、art 文章、actor 演员等） |

### 4. 数据库

- **控制端数据库** `smtv`（前缀 `yyys_`）：
  - `app` 表：应用管理（App 编号即 App 对接 ID）
  - `main` 表：主配置（广告、设置页、自动换源、UI 样式等）
  - `analysis_set` 表：解析设置
  - 以及用户、订单、日志等表
- **CMS 数据库** `mysql_data_e2xzT.sql`（前缀 `mac_`）：
  - `mac_vod` 表：影片数据
  - `mac_type` 表：分类
  - `mac_user` 表：用户
  - `mac_admin` 表：管理员
  - 以及评论、采集、订单等 20+ 张表

---

## 整体架构

```
┌─────────────────────────────────────────────────┐
│                 电视盒子用户                       │
│               （安装 APK 客户端）                  │
└──────────────────────┬──────────────────────────┘
                       │ 请求 zk.php (app=编号)
                       ▼
┌─────────────────────────────────────────────────┐
│             聚合神马控制端 (PHP 7.3)              │
│   zk.php  Client.php  api.php  login.php         │
│   order.php  pay.php  支付回调(支付宝/QQ/微信)     │
│   admin/ 管理后台   Cloud/ 云端  Webpage/ 网页支付  │
└──────────┬──────────────────────┬───────────────┘
           │                      │
           ▼                      ▼
┌───────────────────┐   ┌─────────────────────────┐
│  控制端数据库 smtv  │   │   CMS 数据库 (mac_)     │
│  (前缀 yyys_)      │   │  mysql_data_e2xzT.sql  │
└───────────────────┘   └───────────┬─────────────┘
                                   │
                                   ▼
                       ┌─────────────────────────┐
                       │ 聚合神马 CMS (苹果CMS)    │
                       │  前台 index.php          │
                       │  后台 _admin.php         │
                       │  豆瓣接口 api/douban.php │
                       └─────────────────────────┘
```

数据流说明：
1. 电视 App 启动 → 请求控制端 `zk.php?app=应用编号` → 返回首页配置、频道、播放列表等 JSON 数据
2. App 播放点播内容 → 通过 `Client.php` 解析真实播放地址
3. 内容资源由 CMS 后台维护（采集/手动添加），CMS 与 App 通过应用编号关联
4. 用户登录、会员开通、支付通过控制端完成

---

## 快速部署（新手教程）

> 详细图文步骤请看 [部署教程](docs/部署教程.md)

### 环境要求（最低配置）

| 项目 | 要求 |
|------|------|
| 服务器 | 1 核 1G 即可（推荐 2 核 2G） |
| 操作系统 | CentOS 7 / Ubuntu / Debian 均可 |
| 面板 | 推荐宝塔面板（新手最快） |
| PHP | 7.3（控制端要求 ≤7.3，CMS 要求 ≥5.5，取交集选 7.3） |
| MySQL | 5.6 或 5.7 |
| 域名 | 一个已解析的域名（可选，可用 IP 先跑通） |

### 部署三步走

```
第 1 步  部署控制端（约 3 分钟）
第 2 步  部署 CMS（约 3 分钟）
第 3 步  打包 App 并修改对接地址（约 4 分钟）
```

#### 第 1 步：部署控制端

1. 把 `control` 目录所有文件上传到服务器网站根目录（如 `/www/wwwroot/mxsmck/control`）
2. 宝塔新建站点 → PHP 选择 **7.3**
3. 创建数据库 `smtv`，数据库账号密码按 `include/db.config.php` 修改（默认 `smtv` / `axa1314@`）
4. 导入控制端数据库（按 zk.php 引用的表：`app`、`main`、`analysis_set` 等，见部署教程附录）
5. 浏览器访问 `http://你的域名/install` 执行安装
6. 访问 `http://你的域名/admin` 进入管理后台，创建应用获取**应用编号**

#### 第 2 步：部署 CMS

1. 把 `cms` 目录所有文件上传到服务器另一站点（如 `/www/wwwroot/mxsmck/cms`）
2. 创建数据库并导入 `mysql_data_e2xzT.sql`
3. 访问 `http://你的域名/install.php` 按向导安装
4. 安装完成后，将后台入口 `_admin.php` 改名为其他文件名（防攻击）
5. 进入 CMS 后台添加/采集影片内容

#### 第 3 步：打包 App 并修改对接

1. 修改 `Api.smali` 三个字段（见上方"对接地址"）
2. 推送代码到 GitHub → 触发 Actions 自动编译 APK（或本地 apktool 重打包）
3. 将 APK 安装到电视盒子即可使用

> 完整步骤、数据库表结构、常见问题请看 [部署教程](docs/部署教程.md)

---

## 文件结构总览

```
MXSMCK/
├── README.md              # 本文件（项目总览）
├── CHANGELOG.md           # 版本更新日志
├── VERSION                # 当前版本号
├── docs/
│   ├── 部署教程.md        # 新手详细部署教程
│   └── 文件结构.md        # 全部文件/页面位置与用途明细
├── control/               # 聚合神马控制端（PHP 7.3）
├── cms/                   # 聚合神马 CMS 纯净版（苹果CMS）
└── app/                   # 电视端 App 源码（smali 反编译工程）
```

每个目录、每个页面的详细说明请查看 [文件结构.md](docs/文件结构.md)。

---

## 页面与功能明细

### 控制端页面

| 访问路径 | 文件 | 页面功能 |
|----------|------|----------|
| `http://域名/` | `index.php` | 控制端首页入口 |
| `http://域名/zk.php?app=编号` | `zk.php` | App 对接主接口（JSON 输出） |
| `http://域名/Client.php?id=1&url=...` | `Client.php` | 视频解析接口 |
| `http://域名/login.php?app=...` | `login.php` | 用户扫码登录 |
| `http://域名/admin` | `admin/index.php` | 管理后台登录 |
| `http://域名/adminer.php` | `admin/adminer.php` | 在线数据库管理 |
| `http://域名/install` | `install/index.php` | 安装向导 |

### CMS 页面

| 访问路径 | 文件 | 页面功能 |
|----------|------|----------|
| `http://域名/` | `index.php` | 点播站前台首页 |
| `http://域名/install.php` | `install.php` | 安装向导 |
| `http://域名/_admin.php` | `_admin.php` | 后台入口（建议改名） |
| `http://域名/api/douban.php?id=...` | `api/douban.php` | 豆瓣影片信息接口 |

### App 页面

| 页面 | 类（smali） | 功能 |
|------|-------------|------|
| 启动页 | `SplashActivity` | 加载配置、检查更新 |
| 首页 | `HomeActivity2` | 频道/推荐/分类导航 |
| 点播播放 | `VideoPlayerActivity` | 影片播放、选集 |
| 直播播放 | `TVLivePlayer` | 电视直播 |
| 搜索 | `SearchActivity` | 影片搜索 |
| 用户中心 | `UserActivity` | 登录/会员/收藏/历史 |
| 授权 | `EmpowerActivity` | 设备授权 |
| 设置 | `SettingInvActivity` | 应用设置 |

---

## 版本更新日志

| 版本 | 日期 | 更新内容 |
|------|------|----------|
| v.0.0.2 | 2026-10-01 | 上传三大组成部分完整源码（control/ 控制端、cms/ CMS、app/ App），清理污染文件 |
| v.0.0.1 | 2026-10-01 | 初始版本：上传四大组成部分源码，编写 README、部署教程、文件结构文档 |

> 版本规则：`v.0.0.1` 起步，百位进一位（`v.0.0.99` 之后为 `v.0.1.0`）。每次更新同步更新本文件。

---

## 免责声明

本项目源码仅供学习交流使用，请遵守当地法律法规，勿用于任何商业侵权用途。
