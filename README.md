<p align="center">
  <img src="https://raw.githubusercontent.com/ssmhdssmhd/MXLOGO/main/app/app-icon-512.png" width="120" alt="MXXM Logo"/>
</p>

<h1 align="center">MXXM</h1>

<p align="center">
  基于 <a href="https://github.com/lightpanda-io/browser">Lightpanda</a> 无头浏览器的网页内容提取工具（Go 编写）
</p>

<p align="center">
  <img alt="版本" src="https://img.shields.io/badge/版本-v.0.0.4-blue"/>
  <img alt="语言" src="https://img.shields.io/badge/语言-Go-00ADD8"/>
  <img alt="浏览器" src="https://img.shields.io/badge/浏览器-Lightpanda-6C5CE7"/>
</p>

## 简介

MXXM 是一个用 Go 开发的命令行工具，输入一个或多个链接后，自动使用 Lightpanda 无头浏览器打开页面，
提取页面标题、正文（Markdown）、链接和图片，保存为 Markdown 文件，并在终端输出摘要。
支持视频页面（如腾讯视频）自动识别剧名、集数，支持多线程并发抓取。

## 特性

- 交互模式：运行后提示输入链接（支持多个）
- 命令行模式：`-url` 直接指定链接（多个用逗号分隔）
- 自动提取：标题、正文、全部链接、全部图片
- 视频页面自动识别：剧名、集数、更新至、总集数（标题优先，正文补充）
- 多线程并发抓取：`-threads` 控制并发数
- 相对链接自动解析为绝对链接，去重排序
- 自动识别系统 HTTP/HTTPS 代理，亦可用 `-proxy` 指定
- 尊重 `robots.txt`（可用 `-no-robots` 关闭）
- 零第三方依赖（仅标准库）

## 平台兼容性

使用真实播放链接测试结果（2026-10-04）：

| 平台 | 链接格式 | 结果 |
| --- | --- | --- |
| 腾讯视频 | `m.v.qq.com/x/m/play?cid=...&vid=...` | 成功 |
| 优酷 | `v.youku.com/v_nextstage/id_xxx.html` | 成功 |
| 芒果TV | `m.mgtv.com/b/xxx/xxx.html` | 成功 |
| 哔哩哔哩 | `bilibili.com/bangumi/play/epxxx` / `ssxxx` | 成功 |
| 搜狐视频 | `tv.sohu.com/v/xxx.html` | 成功 |
| 爱奇艺 | `iqiyi.com/v_xxx.html` | 受限（对海外/数据中心 IP 返回首页，国内网络可正常提取） |
| 咪咕视频 | `miguvideo.com/.../detail.html?cid=xxx` | 受限（SPA 纯 JS 渲染，无头浏览器拿不到数据） |

> 说明：爱奇艺在沙箱/海外网络被 IP 限制（服务端直接返回首页），其页面标题格式与优酷相似
> （"剧名 第X集-..."），在国内网络下可正常提取。咪咕视频详情页为纯前端 SPA，
> 数据来自带签名的内部接口，无头浏览器无法获取。

示例：`./MXXM -url "腾讯链接,优酷链接,芒果链接" -threads 4 -wait-ms 5000`

## 环境要求

- Linux / macOS（Lightpanda 无 Windows 原生版本，可用 WSL2）
- Go 1.21+
- Lightpanda 无头浏览器

## 安装

1. 安装 Lightpanda（Linux x86_64）：

```bash
mkdir -p ~/bin
curl -L -o ~/bin/lightpanda https://github.com/lightpanda-io/browser/releases/download/nightly/lightpanda-x86_64-linux
chmod +x ~/bin/lightpanda
export LIGHTPANDA_BIN=~/bin/lightpanda
```

2. 构建 MXXM：

```bash
go build -o MXXM .
```

## 使用方法

### 交互模式

```bash
./MXXM
# 按提示输入链接后回车
```

### 命令行模式

```bash
./MXXM -url https://example.com
```

### 完整参数

| 参数 | 说明 | 默认值 |
| --- | --- | --- |
| `-url` | 要抓取的链接，多个用逗号分隔；不填则交互输入 | 空 |
| `-out` | 输出目录 | `output` |
| `-wait-ms` | 页面加载完成后额外等待的毫秒数（适合 JS 动态页面） | `0` |
| `-proxy` | HTTP 代理地址，不填则自动使用环境变量 | 自动 |
| `-threads` | 并发抓取线程数 | `4` |
| `-no-robots` | 忽略 `robots.txt` 限制 | 关闭 |
| `-version` | 显示版本号 | - |

### 示例

```bash
# 抓取并等待 3 秒让 JS 渲染完成
./MXXM -url https://example.com -wait-ms 3000

# 多个链接并发抓取（腾讯视频自动识别剧名与集数）
./MXXM -url "https://m.v.qq.com/x/m/play?cid=mzc00200aaogpgh&vid=r0047gdjpw6,https://v.qq.com/x/cover/xxx.html" -threads 4

# 指定输出目录与代理
./MXXM -url https://example.com -out ./data -proxy http://127.0.0.1:7890
```

## 输出说明

抓取结果保存为 `output/MXXM.<时间戳>.md`，内容包含：

- 标题、来源链接、抓取时间
- 正文（Markdown 格式）
- 链接列表（去重、绝对地址）
- 图片列表（去重、绝对地址）

同时终端会输出提取摘要：标题、正文字符数、链接数、图片数。

## 版本历史

### v.0.0.4（2026-10-04）

- 页面内容不足时自动重试一次（更长等待），帮助 JS 慢渲染页面
- 标题提取回退 `og:title` / `twitter:title`
- 失败时按平台给出针对性提示（爱奇艺 IP 限制、咪咕 SPA 等）

### v.0.0.3（2026-10-04）

- 视频信息识别改为标题优先、正文补充，兼容各平台标题格式
- 过滤"选集"等噪词，避免误识别
- 新增 `-no-robots` 选项与抓取失败提示
- 实测 7 大视频平台：腾讯/优酷/芒果/B站/搜狐 5 家成功识别剧名与集数

### v.0.0.2（2026-10-04）

- 支持视频页面自动识别剧名、集数、更新至、总集数（腾讯视频等）
- 支持多个链接并发抓取（`-threads` 控制并发数）

### v.0.0.1（2026-10-04）

- 首个版本：输入链接，用 Lightpanda 无头浏览器打开页面
- 支持提取标题、正文（Markdown）、链接、图片
- 支持交互/命令行两种模式
- 支持代理透传与 robots.txt
