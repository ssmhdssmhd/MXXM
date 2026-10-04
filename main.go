// MXXM - 基于 Lightpanda 无头浏览器的网页内容提取工具
//
// 用法:
//   交互模式:   MXXM
//   命令行模式: MXXM -url https://example.com
//   并发抓取:   MXXM -url "链接1,链接2,链接3" -threads 4
//   其他选项:   -out 输出目录, -wait-ms 加载后等待毫秒数, -proxy 代理, -version 显示版本
//
// 原理: 调用 Lightpanda 无头浏览器打开用户输入的链接,
// 提取页面标题、正文(Markdown)、链接和图片, 保存为 Markdown 文件。
// 支持视频页面自动识别剧名、集数(如腾讯视频"仙逆 01集")。
package main

import (
	"bufio"
	"flag"
	"fmt"
	"net/url"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"sort"
	"strings"
	"sync"
	"time"
	"unicode/utf8"
)

// Version 版本号, 每次更新维护递增, 百位进一: v.0.0.1 -> v.0.0.99 -> v.0.1.0
const Version = "v.0.0.2"

// 从 HTML 中提取信息的正则
var (
	reTitle = regexp.MustCompile(`(?is)<title[^>]*>(.*?)</title>`)
	reLink  = regexp.MustCompile(`(?is)<a[^>]*href=["']([^"'#][^"']*)["']`)
	reImg   = regexp.MustCompile(`(?is)<img[^>]*src=["']([^"']+)["']`)
	reTag   = regexp.MustCompile(`(?is)<[^>]+>`)
)

// 从正文中识别视频信息的正则
var (
	reEp      = regexp.MustCompile(`(?m)([^\n]{1,40}?)\s*(\d{1,4})\s*集`)
	reTotal   = regexp.MustCompile(`全\s*(\d{1,4})\s*集`)
	reUpdated = regexp.MustCompile(`更新至\s*(\d{1,4})\s*集`)
)

// VideoInfo 视频页面信息
type VideoInfo struct {
	Name    string // 剧名
	Episode string // 集数
	Total   string // 总集数
	Updated string // 更新至
}

// detectVideoInfo 从 Markdown 正文中识别剧名、集数等视频信息
func detectVideoInfo(body string) VideoInfo {
	var vi VideoInfo
	if m := reEp.FindStringSubmatch(body); len(m) > 1 {
		vi.Name = strings.TrimSpace(strings.TrimSuffix(m[1], "第"))
		vi.Episode = strings.TrimSpace(m[2]) + "集"
	}
	if m := reTotal.FindStringSubmatch(body); len(m) > 1 {
		vi.Total = strings.TrimSpace(m[1]) + "集"
	}
	if m := reUpdated.FindStringSubmatch(body); len(m) > 1 {
		vi.Updated = strings.TrimSpace(m[1]) + "集"
	}
	return vi
}

// findLightpanda 查找 lightpanda 二进制, 依次检查环境变量、程序同目录、PATH
func findLightpanda() string {
	if p := os.Getenv("LIGHTPANDA_BIN"); p != "" {
		return p
	}
	if exe, err := os.Executable(); err == nil {
		cand := filepath.Join(filepath.Dir(exe), "lightpanda")
		if fi, err := os.Stat(cand); err == nil && !fi.IsDir() {
			return cand
		}
	}
	if p, err := exec.LookPath("lightpanda"); err == nil {
		return p
	}
	return ""
}

// fetchDump 用 lightpanda 无头打开页面并输出指定类型内容(html/markdown)
func fetchDump(bin, dumpType, rawURL, proxy string, waitMS int) (string, error) {
	args := []string{
		"fetch", "--obey-robots",
		"--dump", dumpType,
		"--log-format", "pretty",
		"--log-level", "warn",
	}
	if proxy != "" {
		args = append(args, "--http-proxy", proxy)
	}
	if waitMS > 0 {
		args = append(args, "--wait-ms", fmt.Sprintf("%d", waitMS))
	}
	args = append(args, rawURL)

	cmd := exec.Command(bin, args...)
	cmd.Env = append(os.Environ(), "LIGHTPANDA_DISABLE_TELEMETRY=true")
	out, err := cmd.Output()
	if err != nil {
		if ee, ok := err.(*exec.ExitError); ok {
			return "", fmt.Errorf("lightpanda %s 抓取失败: %s", dumpType, strings.TrimSpace(string(ee.Stderr)))
		}
		return "", err
	}
	return string(out), nil
}

// effectiveProxy 确定代理: 命令行参数优先, 否则按协议读取环境变量
func effectiveProxy(flagProxy, scheme string) string {
	if flagProxy != "" {
		return flagProxy
	}
	key := "HTTP_PROXY"
	if scheme == "https" {
		key = "HTTPS_PROXY"
	}
	if p := os.Getenv(key); p != "" {
		return p
	}
	return os.Getenv("HTTP_PROXY")
}

// extractTitle 提取页面标题
func extractTitle(html string) string {
	if m := reTitle.FindStringSubmatch(html); len(m) > 1 {
		return strings.TrimSpace(reTag.ReplaceAllString(m[1], ""))
	}
	return ""
}

// resolveURL 将相对链接解析为绝对链接
func resolveURL(base *url.URL, href string) string {
	ref, err := url.Parse(href)
	if err != nil {
		return href
	}
	return base.ResolveReference(ref).String()
}

// extractLinks 提取页面中的所有链接并去重排序
func extractLinks(html string, base *url.URL) []string {
	seen := make(map[string]bool)
	var out []string
	for _, m := range reLink.FindAllStringSubmatch(html, -1) {
		href := strings.TrimSpace(m[1])
		if href == "" || strings.HasPrefix(href, "javascript:") ||
			strings.HasPrefix(href, "mailto:") || strings.HasPrefix(href, "tel:") ||
			strings.HasPrefix(href, "data:") {
			continue
		}
		abs := resolveURL(base, href)
		if !seen[abs] {
			seen[abs] = true
			out = append(out, abs)
		}
	}
	sort.Strings(out)
	return out
}

// extractImages 提取页面中的所有图片地址并去重排序
func extractImages(html string, base *url.URL) []string {
	seen := make(map[string]bool)
	var out []string
	for _, m := range reImg.FindAllStringSubmatch(html, -1) {
		src := strings.TrimSpace(m[1])
		if src == "" || strings.HasPrefix(src, "data:") {
			continue
		}
		abs := resolveURL(base, src)
		if !seen[abs] {
			seen[abs] = true
			out = append(out, abs)
		}
	}
	sort.Strings(out)
	return out
}

// buildMarkdown 组装最终的 Markdown 文件内容
func buildMarkdown(u *url.URL, vi VideoInfo, title, body string, links, imgs []string) string {
	var b strings.Builder
	b.WriteString("# " + title + "\n\n")
	b.WriteString("> 来源: " + u.String() + "\n")
	b.WriteString("> 抓取时间: " + time.Now().Format("2006-01-02 15:04:05") + "\n")
	b.WriteString("> 工具版本: " + Version + "\n")
	if vi.Name != "" || vi.Episode != "" {
		b.WriteString("> 剧名: " + vi.Name + "\n")
		b.WriteString("> 集数: " + vi.Episode + "\n")
		if vi.Updated != "" {
			b.WriteString("> 更新至: " + vi.Updated + "\n")
		}
		if vi.Total != "" {
			b.WriteString("> 总集数: " + vi.Total + "\n")
		}
	}
	b.WriteString("\n")

	b.WriteString("## 正文\n\n")
	b.WriteString(body + "\n")

	if len(links) > 0 {
		b.WriteString(fmt.Sprintf("\n## 链接（%d 个）\n\n", len(links)))
		for _, l := range links {
			b.WriteString("- " + l + "\n")
		}
	}
	if len(imgs) > 0 {
		b.WriteString(fmt.Sprintf("\n## 图片（%d 张）\n\n", len(imgs)))
		for _, img := range imgs {
			b.WriteString("- " + img + "\n")
		}
	}
	return b.String()
}

// splitURLs 分割多个链接(支持逗号、空格、换行分隔), 去空去重
func splitURLs(s string) []string {
	seen := make(map[string]bool)
	var out []string
	for _, f := range strings.FieldsFunc(s, func(r rune) bool {
		return r == ',' || r == '，' || r == ' ' || r == '\t' || r == '\n' || r == '\r'
	}) {
		f = strings.TrimSpace(f)
		if f == "" || seen[f] {
			continue
		}
		seen[f] = true
		out = append(out, f)
	}
	return out
}

// promptURL 交互式提示用户输入链接(支持多个)
func promptURL() string {
	fmt.Print("请输入要提取的链接(多个用逗号或空格分隔): ")
	reader := bufio.NewReader(os.Stdin)
	line, err := reader.ReadString('\n')
	if err != nil && line == "" {
		fmt.Println("输入为空, 退出")
		os.Exit(1)
	}
	return strings.TrimSpace(line)
}

// printInstallHint 提示如何安装 lightpanda
func printInstallHint() {
	fmt.Println("未找到 lightpanda 无头浏览器, 请先安装:")
	fmt.Println("  mkdir -p ~/bin")
	fmt.Println("  curl -L -o ~/bin/lightpanda https://github.com/lightpanda-io/browser/releases/download/nightly/lightpanda-x86_64-linux")
	fmt.Println("  chmod +x ~/bin/lightpanda")
	fmt.Println("  export LIGHTPANDA_BIN=~/bin/lightpanda")
}

// processURL 抓取并提取单个链接
func processURL(index, total int, raw, bin, proxyFlag string, waitMS int, outDir string) {
	u, err := url.Parse(raw)
	if err != nil || (u.Scheme != "http" && u.Scheme != "https") || u.Host == "" {
		fmt.Printf("[%d/%d] 无效的链接: %s\n", index, total, raw)
		return
	}

	fmt.Printf("[%d/%d] 正在用 Lightpanda 无头浏览器打开 %s ...\n", index, total, u.String())

	proxy := effectiveProxy(proxyFlag, u.Scheme)

	body, err := fetchDump(bin, "markdown", u.String(), proxy, waitMS)
	if err != nil {
		fmt.Printf("[%d/%d] %v\n", index, total, err)
		return
	}

	html, err := fetchDump(bin, "html", u.String(), proxy, waitMS)
	if err != nil {
		fmt.Printf("[%d/%d] %v\n", index, total, err)
		return
	}

	title := extractTitle(html)
	links := extractLinks(html, u)
	imgs := extractImages(html, u)
	vi := detectVideoInfo(body)

	if err := os.MkdirAll(outDir, 0o755); err != nil {
		fmt.Printf("[%d/%d] 创建输出目录失败: %v\n", index, total, err)
		return
	}
	fname := fmt.Sprintf("MXXM.%s.%02d.md", time.Now().Format("20060102150405"), index)
	fpath := filepath.Join(outDir, fname)
	content := buildMarkdown(u, vi, title, body, links, imgs)
	if err := os.WriteFile(fpath, []byte(content), 0o644); err != nil {
		fmt.Printf("[%d/%d] 保存文件失败: %v\n", index, total, err)
		return
	}

	fmt.Printf("[%d/%d] 提取完成:\n", index, total)
	if vi.Name != "" || vi.Episode != "" {
		fmt.Printf("  剧名: %s\n", vi.Name)
		fmt.Printf("  集数: %s\n", vi.Episode)
		if vi.Updated != "" {
			fmt.Printf("  更新至: %s\n", vi.Updated)
		}
		if vi.Total != "" {
			fmt.Printf("  总集数: %s\n", vi.Total)
		}
	}
	fmt.Printf("  标题: %s\n", title)
	fmt.Printf("  正文: %d 字符\n", utf8.RuneCountInString(body))
	fmt.Printf("  链接: %d 个\n", len(links))
	fmt.Printf("  图片: %d 张\n", len(imgs))
	fmt.Printf("  已保存: %s\n", fpath)
}

func main() {
	flagURL := flag.String("url", "", "要抓取的链接, 多个用逗号分隔; 不填则交互输入")
	outDir := flag.String("out", "output", "输出目录")
	waitMS := flag.Int("wait-ms", 0, "页面加载完成后额外等待的毫秒数")
	proxyFlag := flag.String("proxy", "", "HTTP 代理地址, 不填则自动使用环境变量 HTTP_PROXY/HTTPS_PROXY")
	threads := flag.Int("threads", 4, "并发抓取线程数")
	showVer := flag.Bool("version", false, "显示版本号")
	flag.Parse()

	if *showVer {
		fmt.Println("MXXM", Version)
		return
	}

	raw := *flagURL
	if raw == "" {
		raw = promptURL()
	}
	urls := splitURLs(raw)
	if len(urls) == 0 {
		fmt.Println("链接不能为空")
		os.Exit(1)
	}

	bin := findLightpanda()
	if bin == "" {
		printInstallHint()
		os.Exit(1)
	}

	n := *threads
	if n < 1 {
		n = 1
	}
	sem := make(chan struct{}, n)
	var wg sync.WaitGroup
	for i, rawURL := range urls {
		wg.Add(1)
		go func(i int, rawURL string) {
			defer wg.Done()
			sem <- struct{}{}
			defer func() { <-sem }()
			processURL(i+1, len(urls), rawURL, bin, *proxyFlag, *waitMS, *outDir)
		}(i, rawURL)
	}
	wg.Wait()
}
