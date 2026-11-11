<?php
//文件名称
define('SELF', pathinfo(__FILE__, PATHINFO_BASENAME));
// 网站根目录
define('FCPATH', str_replace("\\", "/", str_replace(SELF, '', __FILE__)));
//加载核心类
 require_once FCPATH.'/include/class.main.php';
//加载配置文件
require_once(FCPATH."save/config.php");  
//加载前台广告配置
$AD = array('off' => '0', 'time' => '5', 'skip' => '1', 'pc_code' => '', 'wap_code' => '', 'block' => '0', 'block_mode' => 'strict', 'block_param' => '');
if (file_exists(FCPATH . 'save/ad.config.php')) {
    $ADTMP = @include FCPATH . 'save/ad.config.php';
    if (is_array($ADTMP)) { $AD = array_merge($AD, $ADTMP); }
}
$AD_ON   = ((string)$AD['off'] === '1');
$AD_TIME = max(0, (int)$AD['time']);
$AD_SKIP = ((string)$AD['skip'] === '1');
$AD_PC   = base64_decode($AD['pc_code']);
$AD_WAP  = base64_decode($AD['wap_code']);
//解析页去广告
$AD_BLOCK      = ((string)$AD['block'] === '1');
$AD_BLOCK_MODE = ((string)$AD['block_mode'] === 'popup') ? 'popup' : 'strict';
$AD_BLOCK_PARAM = trim((string)$AD['block_param']);
//接收参数

$url=filter_input(INPUT_GET, "url") ? filter_input(INPUT_GET, "url") :filter_input(INPUT_GET, "v");

//官方链接未编码时，其 &vid=xxx 会被拆成独立参数（资源站 ID 为纯数字）
$vidParam = filter_input(INPUT_GET, "vid");
if ($vidParam !== null && $vidParam !== '' && !ctype_digit((string)$vidParam)) {
    if ($url !== '' && stripos((string)$url, 'vid=') === false) {
        $url .= (strpos((string)$url, '?') === false ? '?' : '&') . 'vid=' . rawurlencode((string)$vidParam);
    }
}

if (empty($url))
{
    exit('<style type="text/css">
    H1{margin:10% 0 auto; color:#C7636C; text-align:center; font-family: Microsoft Jhenghei;}
    p{font-size: 1.2rem;/*1.2 × 10px = 12px */;text-align:center; font-family: Microsoft Jhenghei;}
    </style>  
  <h1>请填写url地址</h1>
  <p>本解析接口仅用于学习交流，盗用必究！~</p>');
 
}
//加载防火墙规则
Blacklist::parse($CONFIG["BLACKLIST"]);
if(lsMobile()){	  
	    $myplayer=$CONFIG["play"]['play']['wap']['player'];
	    $autoplay=$CONFIG["play"]['play']['wap']['autoplay'];	  
	  }else{		  
	     $myplayer=$CONFIG["play"]['play']['pc']['player'];
	    $autoplay=$CONFIG["play"]['play']['pc']['autoplay'];	  
	}
$TITLE=$CONFIG["TITLE"];          
//解析线路自动切换配置（默认开启：从第一条到最后一条，失败等待 1 秒切换）
$JXAUTO = array('off' => '1', 'wait' => '1', 'allin' => '1');
if (isset($CONFIG['play']['autojx']) && is_array($CONFIG['play']['autojx'])) {
    $JXAUTO = array_merge($JXAUTO, $CONFIG['play']['autojx']);
}
$JX_SRC = $CONFIG["jx_url"];
if (file_exists(FCPATH . 'save/script.config.php')) {
    require_once FCPATH . '/include/class.script.php';
    $SCFG = script_load();
    if ((string)$SCFG['auto_sync'] === '1') { $JX_SRC = script_jx_merge($SCFG, $JX_SRC); }
}
$JX_LINES = array();
foreach ((array)$JX_SRC as $line) {
    $p = explode('=>', (string)$line, 2);
    if (isset($p[1]) && trim($p[1]) !== '') { $JX_LINES[] = array('name' => $p[0], 'url' => trim($p[1])); }
}
$LINE_MODE = isset($CONFIG['play']['line']['all']['mode']) ? $CONFIG['play']['line']['all']['mode'] : 'auto';
$DEV_LINE  = lsMobile() ? $CONFIG['play']['line']['wap']['line'] : $CONFIG['play']['line']['pc']['line'];
$JX_START  = 0;
if ($LINE_MODE !== 'auto' && (int)$DEV_LINE > 0) { $JX_START = (int)$DEV_LINE - 1; }
if ($JX_START >= count($JX_LINES)) { $JX_START = 0; }
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="pragma" content="no-cache" /><meta http-equiv="expires" content="0" />    <!-- 不缓存网页 -->
<meta name="x5-fullscreen" content="true" /><meta name="x5-page-mode" content="app"  /> <!-- X5  全屏处理 -->
<meta name="full-screen" content="yes" /><meta name="browsermode" content="application" />  <!-- UC 全屏应用模式 -->
<meta name="apple-mobile-web-app-capable" content="yes "/> <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" /> <!--  苹果全屏应用模式 -->
<title><?php echo $TITLE ?></title>
<script type="text/javascript" src="./include/jquery.min.js"></script>
<script type="text/javascript"  src="./include/class.main.js" ></script>
<style type="text/css">
html,body{
background-color:#000;
padding: 0;
margin: 0;
height:100%;
width:100%;
color:#999;
overflow:hidden;
}
#a1{
height:100%!important;
width:100%!important;
object-fit:contain;
}
</style>

<body style="overflow-y:hidden;">
<div id="loading" align="center"><strong><br><br><br><br><br><span class="tips">服务器正在解析中,请稍等....<font class="timemsg">0</font>s</span></strong><span class="timeout" style="display:none;color:#f90;">解析响应超时，请刷新重试！</span></div>
<div id="a1" class="content" style="display:none;"></div>
<div id="parsead" style="display:none;position:fixed;left:0;top:0;width:100%;height:100%;background:#000;z-index:99;overflow:hidden;"></div>
<div id="error" class="content" style="display:none;font-weight:bold;padding-top:90px;" align="center"></div>


<script type="text/javascript">    
var url='<?php echo $url ?>'; var cip='null',api=""; 

var jxlines = <?php echo json_encode($JX_LINES, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES | JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT); ?>;
var JXAUTO_ON = <?php echo ((string)$JXAUTO['off'] === '1') ? 'true' : 'false'; ?>;
var JXAUTO_WAIT = <?php echo max(1, (int)$JXAUTO['wait']); ?>;
var JXAUTO_ALLIN = <?php echo ((string)$JXAUTO['allin'] === '0') ? 'false' : 'true'; ?>;
var JX_START = <?php echo (int)$JX_START; ?>;
var jxapi = (jxlines.length > 0 && JX_START < jxlines.length) ? jxlines[JX_START].url : "";

if(jxapi!=""){api=jxapi};

var autoplay="<?php echo $autoplay ?>";

var myplayer="./player/"+"<?php echo $myplayer ?>"+"/?url=";
function tipstime(count){
    $('.timemsg').text(count);
    if (count === 20) {
       $('.tips').hide();
       $('.timeout').show();
    } else {
        count += 1;
        setTimeout(function(){tipstime(count);}, 1000);
    };
}
tipstime(0);

function player(){ $.ajax({ url: 'api.php?cip='+cip+'&url=' + url,dataType: 'jsonp',jsonp: 'cb',success:function(data){success(data);}}); };

 //function player(){$.post('api.php',{'url':url,'cip':cip,},function(data){success(data);},'json')}; 
  
 function success(data){
   
  if (data.success){
	         
		if(data.info){info=data.info;prat=data.part;};
			 
		if(data['url'].search(/\.(ogg|mp4|webm|m3u8)$/i)!==-1){			
                
				urlplay(myplayer+encodeURIComponent(data.url)+"&autoplay="+autoplay);				
        
        }else if(data.type==='video' || data.type==='m3u8' || data.type==='mp4'  || data.type==='hls' ){

              urlplay(myplayer+encodeURIComponent(data.url)+"&autoplay="+autoplay);
                 
		 }else if(data.type==='url'  ){

               urlplay(data.url);

		 }else{				
                
				//var word='<br><br><a href="javascript:void(0);"  onclick="urlplay(api+url);">3秒后使用解析播放,点这里直接访问</a>';

				//$("#loading").hide();$("#error").show();$("#error").html("解析失败,已上报至服务器" + word);
                                  //setTimeout(function(){urlplay(api+url);}, 3000);
 				parseauto();				
         }  
   }else{

     // var word='<br><br><a href="javascript:void(0);"  onclick="urlplay(api+url);">2秒后使用解析播放,点这里直接访问</a>';
      //$("#loading").hide();$("#error").show();$("#error").html("解析失败,已上报至服务器" + word);
   	  //setTimeout(function(){urlplay(api+url);}, 2000);
          
      parseauto();    
   }  

 }

   //广告配置（由后台「广告设置」生成，自动识别电脑端 / 移动端）
   var AD_ON = <?php echo $AD_ON ? 'true' : 'false'; ?>;
   var AD_TIME = <?php echo $AD_TIME; ?>;
   var AD_SKIP = <?php echo $AD_SKIP ? 'true' : 'false'; ?>;
   var AD_PC = <?php echo json_encode($AD_PC, JSON_UNESCAPED_UNICODE | JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT); ?>;
   var AD_WAP = <?php echo json_encode($AD_WAP, JSON_UNESCAPED_UNICODE | JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT); ?>;
   //解析页去广告
   var AD_BLOCK = <?php echo $AD_BLOCK ? 'true' : 'false'; ?>;
   var AD_BLOCK_MODE = <?php echo json_encode($AD_BLOCK_MODE); ?>;
   var AD_BLOCK_PARAM = <?php echo json_encode($AD_BLOCK_PARAM, JSON_UNESCAPED_UNICODE | JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT); ?>;

   //解析 iframe 的 sandbox 限制（屏蔽解析页弹窗 / 劫持跳转广告）
   function adframeattr(){
      if(!AD_BLOCK){ return ''; }
      if(AD_BLOCK_MODE === 'popup'){
          return ' sandbox="allow-scripts allow-same-origin allow-forms allow-presentation allow-popups allow-popups-to-escape-sandbox"';
      }
      return ' sandbox="allow-scripts allow-same-origin allow-forms allow-presentation"';
   }

   //解析接口附加去广告参数
   function adparam(url){
      if(!AD_BLOCK || !AD_BLOCK_PARAM){ return url; }
      var p = AD_BLOCK_PARAM;
      if(p.charAt(0) !== '&' && p.charAt(0) !== '?'){ p = '&' + p; }
      return url + p;
   }

   function playframe(url, show){
   	  $("#loading").hide();
      $("#a1").html('<iframe  width="100%" height="100%" src="' + url+'" frameborder="0" border="0" marginwidth="0" marginheight="0" scrolling="no" allow="autoplay; fullscreen; encrypted-media" allowfullscreen="true"' + adframeattr() + '></iframe>');
      if(show === false){ $("#a1").hide(); } else { $("#a1").show(); }
   }

   function urlplay(url){
      playframe(url);
  }

   //解析接口调用前展示广告
   function parseplay(url, autostart){
      url = adparam(url);
      if(!AD_ON){ if(autostart){ jxnext(); } else { playframe(url); } return; }
      var mobile = is_mobile();
      var code = mobile ? AD_WAP : AD_PC;
      if(!code || $.trim(code)===""){ code = mobile ? AD_PC : AD_WAP; }
      if(!code || $.trim(code)===""){ if(autostart){ jxnext(); } else { playframe(url); } return; }

      $("#loading").hide();$("#a1").hide();
      //先加载解析页面（隐藏），广告结束后再显示，避免广告时间浪费在等待解析上
      if(!autostart){ playframe(url, false); }
      var ad = $("#parsead");
      var skip = '<div class="xyad-skip" style="position:absolute;right:12px;top:12px;z-index:99;padding:5px 12px;background:rgba(0,0,0,.65);color:#fff;border-radius:20px;font-size:12px;'+(AD_SKIP?'cursor:pointer':'')+'">'+(AD_SKIP?'跳过广告 ':'广告 ')+AD_TIME+'s</div>';
      ad.html('<div style="position:relative;width:100%;height:100%;overflow:hidden;background:#000;display:flex;align-items:center;justify-content:center">'+
          '<div style="max-width:100%;max-height:100%;overflow:hidden;text-align:center">'+code+'</div>'+skip+'</div>').show();

      var left = AD_TIME, done = false;
      function finish(){
          if(done){ return; }
          done = true;
          ad.hide().empty();
          if(autostart){ jxnext(); } else { $("#a1").show(); }
      }
      function tick(){
          if(left<=0){ finish(); return; }
          ad.find('.xyad-skip').text((AD_SKIP?'跳过广告 ':'广告 ')+left+'s');
          left--;
          setTimeout(tick, 1000);
      }
      if(AD_SKIP){ ad.find('.xyad-skip').on('click', finish); }
      if(left<=0){ finish(); } else { tick(); }
  }

  //解析线路自动切换：从第一条到最后一条，失败等待 N 秒自动切换下一条
  var jxIndex = JX_START, jxTried = 0, jxToken = 0;
  function parseauto(){
      if(!JXAUTO_ON || jxlines.length < 1){ parseplay(api+url); return; }
      jxIndex = (JX_START>=0 && JX_START<jxlines.length) ? JX_START : 0;
      jxTried = 0;
      //广告只展示一次，广告结束后进入线路自动切换
      parseplay(jxlines[jxIndex].url+url, true);
  }
  function jxnext(){
      if(jxTried >= (JXAUTO_ALLIN ? jxlines.length : 1)){
          $("#loading").hide(); $("#a1").hide();
          $("#error").show().html("全部解析线路均不可用，请稍后重试！");
          return;
      }
      var line = jxlines[jxIndex];
      jxTried++;
      var myToken = ++jxToken;
      var u = adparam(line.url+url);
      $("#loading").hide(); $("#error").hide();
      $("#a1").html('<iframe id="jxframe" width="100%" height="100%" src="' + u + '" frameborder="0" border="0" marginwidth="0" marginheight="0" scrolling="no" allow="autoplay; fullscreen; encrypted-media" allowfullscreen="true"' + adframeattr() + '></iframe>').show();
      var frame = document.getElementById("jxframe");
      var done = false;
      function nextLine(reason){
          if(done){ return; }
          done = true;
          clearTimeout(timer);
          if(myToken !== jxToken){ return; }
          jxIndex = (jxIndex + 1) % jxlines.length;
          $("#error").show().html("线路 " + jxTried + " " + reason + "，正在自动切换...");
          jxnext();
      }
      var timer = setTimeout(function(){ nextLine("加载超时"); }, JXAUTO_WAIT * 1000);
      frame.onload = function(){
          if(done){ return; }
          done = true;
          clearTimeout(timer);
          if(myToken !== jxToken){ return; }
          $("#error").hide();
          $("#a1").show();
      };
      frame.onerror = function(){ nextLine("加载失败"); };
  }
   
 function  video_next(){	  
 }
 
 function  video_line(){
	 
 parseauto();
 }
 
 function getcip(){$.get("https://data.video.iqiyi.com/v.f4v",function(cdnip){sip=cdnip.match(/\d+\.\d+\.\d+\.\d+/);cip=sip[0];player();});}
  
 if(url.search(/\.(ogg|mp4|webm|m3u8)$/i)!==-1){urlplay(myplayer+encodeURIComponent(data.url)+"&autoplay="+autoplay);}else{getcip();}
 
</script>
<?php echo base64_decode($CONFIG["FOOTER_CODE"]);?>
</body>
</html>