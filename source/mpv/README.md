# MPV 播放器安装与配置指南

> MXXM 推荐的 MPV 桌面播放器配置方案，整合 **Duke Enhanced** 与 **MPV_lazy** 最佳实践。

## 一、方案选型（为什么选这套）

| 组件 | 来源 | 说明 |
|------|------|------|
| MPV 主程序 | [zhongfly/mpv-winbuild](https://github.com/zhongfly/mpv-winbuild/releases) | 持续更新的 Windows 构建，含 libmpv / yt-dlp 等依赖 |
| 现代界面 OSC | [uosc](https://github.com/tomasklaen/uosc) | 替代默认 OSC，界面美观、功能丰富 |
| 快进缩略图 | [thumbfast](https://github.com/po5/thumbfast) | 高性能进度条缩略图 |
| 弹幕支持 | [uosc_danmaku](https://github.com/Tony15246/uosc_danmaku) | 在线/本地弹幕 |
| VR / 360° | [mpv360](https://github.com/kasper93/mpv360) | 360 度全景视频播放 |
| 配置参考 | [Duke Enhanced](https://blog.dukefox.com/p/1cc9.html) / [MPV_lazy](https://github.com/hooke007/MPV_lazy) | 画质与体验调优 |

**核心画质参数**：`gpu-next` 输出 + `d3d11` 后端 + `d3d11va` 硬解 + `ewa_lanczossharp` 缩小 + `mitchell` 时间插值。

## 二、安装步骤

### 1. 下载 MPV 主程序

前往 [zhongfly/mpv-winbuild Releases](https://github.com/zhongfly/mpv-winbuild/releases) 下载最新版：

- 普通 CPU：`mpv-x86_64-YYYYMMDD-git-xxxxxxx.7z`
- 较新 CPU（Haswell+）：`mpv-x86_64-v3-YYYYMMDD-git-xxxxxxx.7z`（性能更好）

解压到任意目录，例如 `D:\MPV\`，目录结构：

```
D:\MPV\
├── mpv.exe
├── mpv.com
├── libmpv-2.dll
└── ...
```

### 2. 应用本站配置

在 MPV 目录下创建 `portable_config` 文件夹，将本目录的两个文件复制进去：

```
D:\MPV\
└── portable_config\
    ├── mpv.conf      ← 来自 source/mpv/mpv.conf
    └── input.conf    ← 来自 source/mpv/input.conf
```

### 3. 安装增强脚本（可选，推荐）

在 `portable_config` 下创建 `scripts` 文件夹，下载以下脚本放入：

| 脚本 | 下载地址 | 功能 |
|------|----------|------|
| `uosc.lua` | [uosc releases](https://github.com/tomasklaen/uosc/releases) | 现代界面 |
| `thumbfast.lua` | [thumbfast releases](https://github.com/po5/thumbfast/releases) | 缩略图 |
| `mpv360.lua` | [mpv360 releases](https://github.com/kasper93/mpv360/releases) | VR 视频 |
| `uosc_danmaku.lua` | [uosc_danmaku releases](https://github.com/Tony15246/uosc_danmaku/releases) | 弹幕 |

```
D:\MPV\portable_config\
├── mpv.conf
├── input.conf
└── scripts\
    ├── uosc.lua
    ├── thumbfast.lua
    ├── mpv360.lua
    └── uosc_danmaku.lua
```

> `mpv.conf` 中对应脚本的 `scripts=` 行默认已注释，放入脚本后会自动加载，无需取消注释。

### 4. 关联视频格式

双击 `mpv.exe` 启动一次，然后在「设置 → 应用 → 默认应用」中将常用视频格式（mp4、mkv、m3u8、flv、webm 等）关联到 mpv。

## 三、在 MXXM 中使用 MPV 播放

1. 在 MXXM 解析页面选择播放器为 **MPV**
2. 解析完成后会跳转到 MPV 播放页
3. 点击「下载 M3U 播放列表」得到 `MXXM.m3u` 文件
4. 双击该文件（或拖入 MPV 窗口）即可播放
5. 也可点击「复制视频直链」，在 MPV 中按 `Ctrl+V` 粘贴播放

## 四、常用快捷键

| 按键 | 功能 |
|------|------|
| `r` | 从头播放 |
| `f` / `F` | 水平 / 垂直翻转 |
| `d` | 切换 2 倍速 |
| `Ctrl+f` / `Ctrl+d` | 放大 / 缩小画面 |
| `Alt+i` | 显示 / 关闭 MediaInfo |
| `Alt+e` | 开启 VR 视频模式 |
| `b` | 弹幕开关 |
| `s` | 截图 |
| `F11` | 全屏 |
| `←` `→` | 后退 / 前进 5 秒 |

更多快捷键见 [input.conf](./input.conf)。

## 五、画质进阶（可选）

如需进一步提升画质，可下载 GLSL 着色器放入 `portable_config/shaders/`，并取消 `mpv.conf` 中对应注释行：

- **QCOM_SGEDS_ms_RT**：高通放大着色器，画质极佳
- **CfL_Prediction**：色度预测，提升色彩细节
- **hdeband**：高质量去色带

着色器可在 [mpv-prescalers](https://github.com/igv/mpv-prescalers) 等仓库获取。

## 六、文件清单

```
source/mpv/
├── mpv.conf      # MPV 主配置（画质/音频/字幕/界面）
├── input.conf    # 快捷键绑定
└── README.md     # 本说明文档
```
