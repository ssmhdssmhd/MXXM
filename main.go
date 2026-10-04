// MXXM - 基于 Lightpanda 无头浏览器的网页内容提取工具
//
// 用法:
//
//	交互模式:   MXXM
//	命令行模式: MXXM -url https://example.com
//	并发抓取:   MXXM -url "链接1,链接2,链接3" -threads 4
//	其他选项:   -out 输出目录, -wait-ms 加载后等待毫秒数, -proxy 代理, -version 显示版本
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
const Version = "v.0.0.4"

// 从 HTML 中提取信息的正则
var (
	reTitle   = regexp.MustCompile(`(?is)<title[^>]*>(.*?)</title>`)
	reOgTitle = regexp.MustCompile(`(?is)<meta[^>]+property=["']og:title["'][^>]+content=["']([^"']+)["']`)
	reTwTitle = regexp.MustCompile(`(?is)<meta[^>]+name=["']twitter:title["'][^>]+content=["']([^"']+)["']`)
	reLink    = regexp.MustCompile(`(?is)<a[^>]*href=["']([^"'#][^"']*)["']`)
	reImg     = regexp.MustCompile(`(?is)<img[^>]*src=["']([^"']+)["']`)
	reTag     = regexp.MustCompile(`(?is)<[^>]+>`)
)

// homeTitles 平台首页标题特征, 命中说明页面被重定向(非内容页)
var homeTitles = []string{"爱奇艺-在线视频网站", "咪咕视频"}

// 从标题/正文中识别视频信息的正则
var (
	reTitleEp  = regexp.MustCompile(`第\s*(\d{1,4})\s*集`)                               // "第1集"
	reTitleEnd = regexp.MustCompile(`([\p{Han}A-Za-z0-9·]{2,20}?)\s*(\d{1,4})[\s-]*$`) // 腾讯"仙逆 01"
	reEp       = regexp.MustCompile(`(?m)([^\n]{1,40}?)\s*(\d{1,4})\s*集`)
	reTotal    = regexp.MustCompile(`全\s*(\d{1,4})\s*集`)
	reUpdated  = regexp.MustCompile(`更新至\s*(\d{1,4})\s*集`)
)

// noiseNames 正文中的噪词, 命中则不能作为剧名
var noiseNames = []string{"选集", "剧集", "分集", "集数", "已更新", "全剧"}

// VideoInfo 视频页面信息
type VideoInfo struct {
	Name    string // 剧名
	Episode string // 集数
	Total   string // 总集数
	Updated string // 更新至
}

// isNoiseName 判断是否为噪词(不能作为剧名)
func isNoiseName(s string) bool {
	for _, n := range noiseNames {
		if strings.Contains(s, n) {
			return true
		}
	}
	return false
}

// cleanName 清洗剧名: 去书名号、平台前缀(如【腾讯视频】)与首尾空白
func cleanName(s string) string {
	s = strings.TrimSpace(s)
	s = strings.Trim(s, "《》")
	s = strings.TrimSpace(s)
	if strings.HasPrefix(s, "【") {
		if idx := strings.Index(s, "】"); idx >= 0 {
			s = strings.TrimSpace(s[idx+1:])
		}
	}
	return s
}

// detectFromTitle 优先从页面标题提取剧名与集数
func detectFromTitle(title string) VideoInfo {
	var vi VideoInfo
	if m := reTitleEp.FindStringSubmatchIndex(title); m != nil {
		vi.Episode = title[m[2]:m[3]] + "集"
		vi.Name = cleanName(title[:m[0]])
		return vi
	}
	if m := reTitleEnd.FindStringSubmatch(title); len(m) > 1 {
		vi.Name = cleanName(m[1])
		vi.Episode = strings.TrimSpace(m[2]) + "集"
	}
	return vi
}

// detectFromBody 从 Markdown 正文中识别剧名、集数(过滤噪词)
func detectFromBody(body string) VideoInfo {
	var vi VideoInfo
	for _, m := range reEp.FindAllStringSubmatch(body, -1) {
		name := strings.TrimSpace(strings.TrimSuffix(m[1], "第"))
		if name == "" || isNoiseName(name) {
			continue
		}
		vi.Name = name
		vi.Episode = strings.TrimSpace(m[2]) + "集"
		break
	}
	if m := reTotal.FindStringSubmatch(body); len(m) > 1 {
		vi.Total = strings.TrimSpace(m[1]) + "集"
	}
	if m := reUpdated.FindStringSubmatch(body); len(m) > 1 {
		vi.Updated = strings.TrimSpace(m[1]) + "集"
	}
	return vi
}

// detectVideoInfo 识别视频信息: 标题优先, 正文补充
func detectVideoInfo(title, body string) VideoInfo {
	vi := detectFromTitle(title)
	if vi.Name == "" && vi.Episode == "" {
		return detectFromBody(body)
	}
	// 用正文补充总集数/更新至
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
func fetchDump(bin, dumpType, rawURL, proxy string, waitMS int, noRobots bool) (string, error) {
	args := []string{
		"fetch",
		"--dump", dumpType,
		"--log-format", "pretty",
		"--log-level", "warn",
	}
	if !noRobots {
		args = append(args, "--obey-robots")
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

// isHomeTitle 判断标题是否为平台首页(页面被重定向)
func isHomeTitle(s string) bool {
	for _, h := range homeTitles {
		if strings.Contains(s, h) {
			return true
		}
	}
	return false
}

// extractTitle 提取页面标题: <title> 优先, 失败或被重定向时回退 og:title / twitter:title
func extractTitle(html string) string {
	if m := reTitle.FindStringSubmatch(html); len(m) > 1 {
		t := strings.TrimSpace(reTag.ReplaceAllString(m[1], ""))
		if t != "" && !isHomeTitle(t) {
			return t
		}
	}
	for _, re := range []*regexp.Regexp{reOgTitle, reTwTitle} {
		if m := re.FindStringSubmatch(html); len(m) > 1 {
			if t := strings.TrimSpace(m[1]); t != "" && !isHomeTitle(t) {
				return t
			}
		}
	}
	return ""
}

// hintForHost 根据平台域名给出针对性失败提示
func hintForHost(host string) string {
	switch {
	case strings.Contains(host, "iqiyi.com"):
		return "爱奇艺对海外/数据中心 IP 会直接返回首页(IP 限制), 国内网络通常可正常提取"
	case strings.Contains(host, "miguvideo.com"):
		return "咪咕视频为 JS 动态加载(SPA)且 robots 限制, 可尝试 -no-robots 与更长 -wait-ms"
	case strings.Contains(host, "youku.com"):
		return "优酷页面 JS 较多, 可尝试更长 -wait-ms"
	case strings.Contains(host, "mgtv.com"):
		return "芒果TV 页面 JS 较多, 可尝试更长 -wait-ms"
	default:
		return "页面可能被反爬/需登录/内容由 JS 动态加载, 可尝试 -wait-ms 或 -no-robots"
	}
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
func processURL(index, total int, raw, bin, proxyFlag string, waitMS int, noRobots bool, outDir string) {
	u, err := url.Parse(raw)
	if err != nil || (u.Scheme != "http" && u.Scheme != "https") || u.Host == "" {
		fmt.Printf("[%d/%d] 无效的链接: %s\n", index, total, raw)
		return
	}

	fmt.Printf("[%d/%d] 正在用 Lightpanda 无头浏览器打开 %s ...\n", index, total, u.String())

	proxy := effectiveProxy(proxyFlag, u.Scheme)

	body, err := fetchDump(bin, "markdown", u.String(), proxy, waitMS, noRobots)
	if err != nil {
		fmt.Printf("[%d/%d] %v\n", index, total, err)
		return
	}

	html, err := fetchDump(bin, "html", u.String(), proxy, waitMS, noRobots)
	if err != nil {
		fmt.Printf("[%d/%d] %v\n", index, total, err)
		return
	}

	title := extractTitle(html)

	// 内容过短或无标题时自动重试一次(更长等待), 帮助 JS 慢渲染页面
	if title == "" || utf8.RuneCountInString(body) < 300 {
		retryMS := waitMS * 2
		if retryMS < 5000 {
			retryMS = 5000
		}
		fmt.Printf("[%d/%d] 页面内容不足, 自动重试(等待 %dms)...\n", index, total, retryMS)
		if body, err = fetchDump(bin, "markdown", u.String(), proxy, retryMS, noRobots); err != nil {
			fmt.Printf("[%d/%d] %v\n", index, total, err)
			return
		}
		if html, err = fetchDump(bin, "html", u.String(), proxy, retryMS, noRobots); err != nil {
			fmt.Printf("[%d/%d] %v\n", index, total, err)
			return
		}
		title = extractTitle(html)
	}

	links := extractLinks(html, u)
	imgs := extractImages(html, u)
	vi := detectVideoInfo(title, body)

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
	if vi.Name == "" && vi.Episode == "" && utf8.RuneCountInString(body) < 300 {
		fmt.Println("  提示:", hintForHost(u.Host))
	}
}

func main() {
	flagURL := flag.String("url", "", "要抓取的链接, 多个用逗号分隔; 不填则交互输入")
	outDir := flag.String("out", "output", "输出目录")
	waitMS := flag.Int("wait-ms", 0, "页面加载完成后额外等待的毫秒数")
	proxyFlag := flag.String("proxy", "", "HTTP 代理地址, 不填则自动使用环境变量 HTTP_PROXY/HTTPS_PROXY")
	threads := flag.Int("threads", 4, "并发抓取线程数")
	noRobots := flag.Bool("no-robots", false, "忽略 robots.txt 限制")
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
			processURL(i+1, len(urls), rawURL, bin, *proxyFlag, *waitMS, *noRobots, *outDir)
		}(i, rawURL)
	}
	wg.Wait()
}
