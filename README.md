<p align="center">
  <img src="https://raw.githubusercontent.com/ssmhdssmhd/MXLOGO/main/app/app-icon-512.png" width="120" alt="MXXM Logo"/>
</p>

<h1 align="center">MXXM</h1>

<p align="center">
  基于 <a href="https://github.com/lightpanda-io/browser">Lightpanda</a> 无头浏览器的网页内容提取工具（Go 编写）
</p>

<p align="center">
  <img alt="版本" src="https://img.shields.io/badge/版本-v.0.0.1-blue"/>
  <img alt="语言" src="https://img.shields.io/badge/语言-Go-00ADD8"/>
  <img alt="浏览器" src="https://img.shields.io/badge/浏览器-Lightpanda-6C5CE7"/>
</p>

## 简介

MXXM 是一个用 Go 开发的命令行工具，输入一个链接后，自动使用 Lightpanda 无头浏览器打开页面，
提取页面标题、正文（Markdown）、链接和图片，保存为 Markdown 文件，并在终端输出摘要。

## 特性

- 交互模式：运行后提示输入链接
- 命令行模式：`-url` 直接指定链接
- 自动提取：标题、正文、全部链接、全部图片
- 相对链接自动解析为绝对链接，去重排序
- 自动识别系统 HTTP/HTTPS 代理，亦可用 `-proxy` 指定
- 尊重 `robots.txt`
- 零第三方依赖（仅标准库）

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
| `-url` | 要抓取的链接，不填则交互输入 | 空 |
| `-out` | 输出目录 | `output` |
| `-wait-ms` | 页面加载完成后额外等待的毫秒数（适合 JS 动态页面） | `0` |
| `-proxy` | HTTP 代理地址，不填则自动使用环境变量 | 自动 |
| `-version` | 显示版本号 | - |

### 示例

```bash
# 抓取并等待 3 秒让 JS 渲染完成
./MXXM -url https://example.com -wait-ms 3000

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

### v.0.0.1（2026-10-04）

- 首个版本：输入链接，用 Lightpanda 无头浏览器打开页面
- 支持提取标题、正文（Markdown）、链接、图片
- 支持交互/命令行两种模式
- 支持代理透传与 robots.txt
