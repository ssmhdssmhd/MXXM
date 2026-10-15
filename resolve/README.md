# 官替算法 · 统一解析调度入口

对外唯一入口，内部并行调 mx1 / mx2，**谁先出结果用谁**（不缓存）。

## 用法

```
域名/resolve/?url=https://www.iqiyi.com/v_xu2nlnxuac.html
```

## 配置

后台 → **系统设置** → **解析设置** → 「官替算法 统一解析调度」fieldset

配置文件：`save/resolve.config.php`

### 模式

| mode | 行为 |
|------|------|
| `auto`（推荐） | 并行 curl_multi 请求 mx1 + mx2，**首个 code=200 立即返回**，另一个立刻 cancel |
| `mx1` | 只用算法 1 |
| `mx2` | 只用算法 2 |

### 接口 URL 填什么

- **留空** = 自动拼本地：`{当前站点}/mx1/index.php` 和 `{当前站点}/mx2/index.php`
- **填绝对 URL** = 可以指向另一台服务器（比如多台机器各跑一个算法，resolve 统一对外）

## 返回格式（与 mx1 / mx2 一致）

```json
{
  "code": 200,
  "msg": "解析成功",
  "url": "https://lgvideo.xyz/player/sRXaH408",
  "link": "https://www.iqiyi.com/v_xu2nlnxuac.html",
  "name": "猛攻【第1集】",
  "from": "resolve (mx2, mode=auto, ms=123)"
}
```

## 暂不缓存

当前版本为速度优先，不做磁盘/内存缓存。
