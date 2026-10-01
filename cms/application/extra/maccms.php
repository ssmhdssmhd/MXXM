<?php
return array (
  'db' => 
  array (
    'type' => 'mysql',
    'path' => '',
    'server' => '127.0.0.1',
    'port' => '3306',
    'name' => 'maccms10',
    'user' => 'root',
    'pass' => 'root',
    'tablepre' => 'mac_',
    'backup_path' => './application/data/backup/database/',
    'part_size' => 20971520,
    'compress' => 1,
    'compress_level' => 4,
  ),
  'site' => 
  array (
    'site_name' => '聚合神马CMS',
    'site_url' => '',
    'site_wapurl' => '',
    'site_keywords' => '聚合神马CMS',
    'site_description' => '聚合神马CMS',
    'site_icp' => '',
    'site_qq' => '',
    'site_qq_link' => '',
    'site_telegram' => '',
    'site_telegram_link' => '',
    'site_email' => '',
    'install_dir' => '/',
    'site_logo' => '',
    'site_waplogo' => '',
    'template_dir' => 'default',
    'html_dir' => 'html',
    'mob_status' => '0',
    'mob_template_dir' => 'default',
    'mob_html_dir' => 'html',
    'site_tj' => '',
    'site_status' => '1',
    'site_close_tip' => '站点临时维护，10分钟后恢复。',
    'ads_dir' => 'ads',
    'mob_ads_dir' => 'ads',
  ),
  'app' => 
  array (
    'pathinfo_depr' => '/',
    'suffix' => 'html',
    'popedom_filter' => '0',
    'cache_type' => 'file',
    'cache_host' => '127.0.0.1',
    'cache_port' => '6379',
    'cache_username' => '',
    'cache_password' => '',
    'cache_flag' => 'a6bcf9aa58',
    'cache_core' => '0',
    'cache_time' => '3600',
    'cache_page' => '0',
    'cache_time_page' => '3600',
    'compress' => '0',
    'input_type' => '1',
    'ajax_page' => '0',
    'wall_filter' => '0',
    'show' => '0',
    'show_verify' => '0',
    'search' => '1',
    'search_verify' => '0',
    'search_len' => '',
    'search_timespan' => '3',
    'search_vod_rule' => 'vod_en|vod_sub',
    'search_art_rule' => 'art_en|art_sub',
    'vod_search_optimise_cache_minutes' => 20160,
    'copyright_status' => '1',
    'copyright_notice' => '该视频由于版权限制，暂不提供播放。',
    'browser_junmp' => '0',
    'page_404' => '404',
    'player_sort' => '1',
    'encrypt' => '0',
    'search_hot' => '变形金刚,火影忍者,复仇者联盟,战狼,红海行动',
    'art_extend_class' => '段子手,私房话,八卦精,爱生活,汽车迷,科技咖,美食家,辣妈帮',
    'vod_extend_class' => '爱情,动作,喜剧,战争,科幻,剧情,武侠,冒险,枪战,恐怖,微电影,其它',
    'vod_extend_state' => '正片,预告片,花絮',
    'vod_extend_version' => '高清版,剧场版,抢先版,OVA,TV,影院版',
    'vod_extend_area' => '大陆,香港,台湾,美国,韩国,日本,泰国,新加坡,马来西亚,印度,英国,法国,加拿大,西班牙,俄罗斯,其它',
    'vod_extend_lang' => '国语,英语,粤语,闽南语,韩语,日语,法语,德语,其它',
    'vod_extend_year' => '2021,2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000',
    'vod_extend_weekday' => '一,二,三,四,五,六,日',
    'actor_extend_area' => '大陆,香港,台湾,美国,韩国,日本,泰国,新加坡,马来西亚,印度,英国,法国,加拿大,西班牙,俄罗斯,其它',
    'filter_words' => 'www,http,com,net',
    'extra_var' => '',
    'collect_timespan' => '3',
    'pagesize' => '50',
    'makesize' => '50',
    'admin_login_verify' => '1',
    'editor' => 'Ueditor',
    'lang' => 'zh-cn',
    'vod_search_optimise' => '',
  ),
  'user' => 
  array (
    'status' => '1',
    'reg_open' => '1',
    'reg_status' => '1',
    'reg_phone_sms' => '0',
    'reg_email_sms' => '0',
    'reg_verify' => '0',
    'login_verify' => '0',
    'reg_points' => '10',
    'reg_num' => '1',
    'invite_reg_points' => '10',
    'invite_visit_points' => '1',
    'invite_visit_num' => '1',
    'reward_status' => '1',
    'reward_ratio' => '10',
    'reward_ratio_2' => '30',
    'reward_ratio_3' => '50',
    'cash_status' => '1',
    'cash_ratio' => '100',
    'cash_min' => '1',
    'trysee' => '0',
    'vod_points_type' => '1',
    'art_points_type' => '1',
    'portrait_status' => '1',
    'portrait_size' => '100x100',
    'filter_words' => 'admin,cao,sex,xxx',
  ),
  'gbook' => 
  array (
    'status' => '1',
    'audit' => '0',
    'login' => '0',
    'verify' => '1',
    'pagesize' => '20',
    'timespan' => '3',
  ),
  'comment' => 
  array (
    'status' => '1',
    'audit' => '0',
    'login' => '0',
    'verify' => '1',
    'pagesize' => '20',
    'timespan' => '3',
  ),
  'upload' => 
  array (
    'img_key' => 'bwcgee|img.bwcgee.cn|yichengwlkj.com',
    'img_api' => '/img.php?url=',
    'thumb' => '0',
    'thumb_size' => '300x300',
    'thumb_type' => '1',
    'watermark' => '0',
    'watermark_location' => '7',
    'watermark_content' => 'test',
    'watermark_size' => '40',
    'watermark_color' => '#FF0000',
    'protocol' => 'http',
    'mode' => 'local',
    'keep_local' => '0',
    'remoteurl' => 'http://img.test.com/',
    'api' => 
    array (
      'ftp' => 
      array (
        'host' => '',
        'port' => '21',
        'user' => 'test',
        'pwd' => 'test',
        'path' => '/',
        'url' => '',
      ),
      'upyun' => 
      array (
        'bucket' => '',
        'username' => '',
        'pwd' => '',
        'url' => '',
      ),
      'qiniu' => 
      array (
        'bucket' => '',
        'accesskey' => '',
        'secretkey' => '',
        'url' => '',
      ),
      'weibo' => 
      array (
        'user' => '',
        'pwd' => '',
        'size' => 'large',
        'cookie' => '',
        'time' => '1546239694',
      ),
      'uomg' => 
      array (
        'openid' => '',
        'key' => '',
        'type' => 'sogou',
      ),
    ),
  ),
  'interface' => 
  array (
    'status' => '1',
    'pass' => 'JP0H2R35RL8O5AJM',
    'vodtype' => '',
    'arttype' => '',
    'actortype' => '',
    'websitetype' => '',
  ),
  'pay' => 
  array (
    'min' => '10',
    'scale' => '1',
    'card' => 
    array (
      'url' => '',
    ),
    'alipay' => 
    array (
      'account' => '111',
      'appid' => '',
      'appkey' => '',
    ),
    'codepay' => 
    array (
      'appid' => '40625',
      'appkey' => '',
      'type' => '1,2',
      'act' => '0',
    ),
    'weixin' => 
    array (
      'appid' => '222',
      'mchid' => '',
      'appkey' => '',
    ),
    'zhapay' => 
    array (
      'appid' => '18039',
      'appkey' => '',
      'type' => '1,2',
      'act' => '2',
    ),
  ),
  'collect' => 
  array (
    'vod' => 
    array (
      'status' => '1',
      'hits_start' => '1',
      'hits_end' => '1000',
      'updown_start' => '1',
      'updown_end' => '1000',
      'score' => '0',
      'pic' => '0',
      'tag' => '0',
      'class_filter' => '1',
      'psename' => '1',
      'psernd' => '0',
      'psesyn' => '1',
      'pseplayer' => '0',
      'psearea' => '0',
      'pselang' => '0',
      'urlrole' => '0',
      'inrule' => ',b,c',
      'uprule' => ',a,d',
      'filter' => '男幼师贾爸爸,快乐糖宝1,亲子宝贝玩具,色戒,色即是空,橘子妹玩具屋,麦麦成长记,天仙配,红楼梦,七十二家房客,谁是凶手,鸡毛信,红领巾,好朋友,半夜鸡叫,小八路,长发妹,眉间尺,采蘑菇,机智的山羊,山水情,鹬蚌相争,骄傲的将军,三十六个字,宝莲灯,牛郎织女,渔光曲,粤语,粤语版',
      'namewords' => '2026=# =#  =#第1季=#第2季=第二季#第3季=第三季#第4季=第四季#第5季=第五季#第6季=第六季#第7季=第七季#第8季=第八季#第9季=第九季#第10季=第十季#第11季=第十一季#第12季=第十二季#第13季=第十三季#第14季=第十四季#第15季=第十五季#第16季=第十六季#第17季=第十七季#第18季=第十八季#第19季=第十九季#第20季=第二十季#第21季=第二十一季#第22季=第二十二季#第23季=第二十三季#第24季=第二十四季#第25季=第二十五季#第26季=第二十六季#第27季=第二十七季#第28季=第二十八季#第29季=第二十九季#第30季=第三十季#第1部=#第2部=2#第3部=3#第4部=4#第5部=5#第6部=6#第7部=7#第8部=8#第9部=9#第10部=10#第11部=11#第12部=12#第13部=13#第14部=14#第15部=15#第16部=16#第17部=17#第18部=18#第19部=19#第20部=20#第1番=#第2番=2#第3番=3#第4番=4#第5番=5#第6番=6#第7番=7#第8番=8#第9番=9#第10番=10#第11番=11#第12番=12#第13番=13#第14番=14#第15番=15#第16番=16#第17番=17#第18番=18#第19番=19#第20番=20#第1卷=#第2卷=2#第3卷=3#第4卷=4#第5卷=5#第6卷=6#第7卷=7#第8卷=8#第9卷=9#第10卷=10#第11卷=11#第12卷=12#第13卷=13#第14卷=14#第15卷=15#第16卷=16#第17卷=17#第18卷=18#第19卷=19#第20卷=20#第21卷=21#第22卷=22#第23卷=23#第24卷=24#第25卷=25#第26卷=26#第27卷=27#第28卷=28#第29卷=29#第30卷=30#第一季=#第二季=2#第三季=3#第四季=4#第五季=5#第六季=6#第七季=7#第八季=8#第九季=9#第十季=10#第十一季=11#第十二季=12#第十三季=13#第十四季=14#第十五季=15#第十六季=16#第十七季=17#第十八季=18#第十九季=19#第二十季=20#第二十一季=21#第二十二季=22#第二十三季=23#第二十四季=24#第二十五季=25#第二十六季=26#第二十七季=27#第二十八季=28#第二十九季=29#第三十季=30#第一部=#第二部=2#第三部=3#第四部=4#第五部=5#第六部=6#第七部=7#第八部=8#第九部=9#第十部=10#第十一部=11#第十二部=12#第十三部=13#第十四部=14#第十五部=15#第十六部=16#第十七部=17#第十八部=18#第十九部=19#第二十部=20#第一卷=#第二卷=2#第三卷=3#第四卷=4#第五卷=5#第六卷=6#第七卷=7#第八卷=8#第九卷=9#第十卷=10#第十一卷=11#第十二卷=12#第十三卷=13#第十四卷=14#第十五卷=15#第十六卷=16#第十七卷=17#第十八卷=18#第十九卷=19#第二十卷=20#第二十一卷=21#第二十二卷=22#第二十三卷=23#第二十四卷=24#第二十五卷=25#第二十六卷=26#第二十七卷=27#第二十八卷=28#第二十九卷=29#第三十卷=30#Ⅰ=#II=2#Ⅲ=3#Ⅳ=4#Ⅴ=5#Ⅵ=6#Ⅶ=7#Ⅷ=8#Ⅸ=9#S1=#S2=#S3=#S4=#S5=#S6=#S7=#S8=#S9=#S10=#S11=#S12=#S13=#S14=#S15=#S16=#S17=#S18=#S19=#S20=#1集=#2集=#3集=#4集=#5集=#6集=#7集=#8集=#9集=#10集=#11集=#12集=#13集=#14集=#15集=#16集=#17集=#18集=#19集=#20集=#21集=#22集=#23集=#24集=#25集=#26集=#27集=#28集=#29集=#30集=#31集=#32集=#33集=#34集=#35集=#36集=#37集=#38集=#39集=#40集=#41集=#42集=#43集=#44集=#45集=#46集=#47集=#48集=#49集=#50集=#51集=#52集=#53集=#54集=#55集=#56集=#57集=#58集=#59集=#60集=#61集=#62集=#63集=#64集=#65集=#66集=#67集=#68集=#69集=#70集=#71集=#72集=#73集=#74集=#75集=#76集=#77集=#78集=#79集=#80集=#81集=#82集=#83集=#84集=#85集=#86集=#87集=#88集=#89集=#90集=#91集=#92集=#93集=#94集=#95集=#96集=#97集=#98集=#99集=#100集=#EP1=#EP2=#EP3=#EP4=#EP5=#EP6=#EP7=#EP8=#EP9=#EP10=#E01=#E02=#E03=#E04=#E05=# =#~=#〜=&middot;#～=#(=#（=#）=#)=#【=#】=#}=#&lsaquo;=#&rsaquo;=#〖=#〗=#：=#:=#，=#。=#？=#?=#&ldquo;=#&rdquo;=#、=#-=#.=#&mdash;&mdash;=#》=#《=#[=#]=#！=#*=#!=#&amp;=#$=#;=:#@=#[]=#【】=#\\n=#amp=#英国篇=英版#英国版=英版#美国篇=美版#美国版=美版#法国版=法版#日本篇=日版#日本版=日版#国产篇=国版#内地版=国版#港版=港版#台版=台版#澳版=#新加坡版=#马来版=#港版国语=#台版国语=#内地国语=#大陆版=#中文=#国语=#普通话版=#普通话=#中配=#华语=#英文=#英配=#英语版=#粤配=#广东话=#粤语版=#泰文配音=#泰语版=#日文配音=#日语版=#韩文配音=#韩语版=#台配=#台语版=#闽南语配音=#原声=#原版=#原音=#双语=#双语版=#湘配=#川配=#沪配=#藏语配音=#越南语=#越配=#印尼语=#印配=#俄语=#俄配=#德语=#德配=#法语配音=#法配=#西班牙配=#西语=#剧版=#电影版=#真人版=#动画版=#漫改版=#小说改=#游戏改=#实拍版=#720P版=#OVA版=#OAD版=#数字版=#实体版=#修复版=#高清修复版=#删减版=#未剪辑版=#海外版=#国际版=#本土版=#方言版=#字幕版=#无字幕版=#双语字幕版=#单语字幕版=#幕后版=#访谈版=#特别直播版=#剧场直播版=#衍生版=#番外衍生版=#续集版=#前传版=#重启版=#改编版=#原创版=#高清重制版=#4K重制版=#便携版=#压缩版=#无损版=#高清无损版=#简化版=#完整版剪辑版=#导演解说版=#演员解说版=#4K版=#剧场版=#院线版=#卫视版=#上星版=#全网独播版=#卫视独播=#独家版=#资源版=#网盘版=#收藏版=#珍藏版=#定制版=#会员版=#付费版=#源码版=#原画版=#原生版=#无码版=#有码版=#内嵌字幕=#外挂字幕=#内嵌=#外挂=#单音轨=#多音轨=#内嵌双语=#tv版=TV版#dvd版=DVD版#tv= TV版#TV= TV版#dvd= DVD版#DVD= DVD版#特别版=#先行版=#抢先版=#试映版=#重制版=#重置版=#翻新版=#加长版=#扩展版=#完整版2.0=#导演终极版=#导演最终剪辑版=#网络版=#线上版=#流媒体版=#限定版=#限量版=#特别发行版=#儿童版=#少儿版=#亲子版=#教学版=#教育版=#学习版=#8K版=#4K HDR版=#蓝光HDR=#1080P HDR=#720P HDR=#杜比全景声版=#杜比视界版=#数字高清版=#实体蓝光版=#4K修复版=#1080P修复版=#方言配音版=#普通话配音版=#英文配音版=#繁体字幕版=#简体字幕版=#无配音版=#纯音频版=#预告版1=#花絮版1=#直播回放版=#剧场录播版=#衍生剧版=#番外剧版=#重启版1=#改编剧版=#原创剧版=#2K重制版=#1080P重制版=#无损高清版=#压缩高清版=#简化剪辑版=#制片人解说版=#编剧解说版=#360P流畅版=#480P标清版=#SD版=#8K超高清版=#2160P版=#1440P版=#高动态范围版=#双语配音版=#双语音频版=#高清版=#蓝光版=#SP集=#SP=#特别篇=#特别集1=#OVA集=#OAD集=#HQ=高清#BD=蓝光#BDrip=蓝光#BRrip=蓝光#WEB=网络版#WEBRip=网络版#HDrip=高清#Bluray=蓝光#UHD=4K#H264=#H265=#AV1=#x264=#x265=#4K超高清=4K#蓝光4K=4K#2160P=4K#超高清8K=8K#蓝光2K=2K#2K高清=2K#1440P=2K#1080P高清=1080P#720P清晰=720P#杜比全景声=#Dolby Atmos=#蓝光4K=#蓝光2K=#4K＝#2K＝#1080P＝#720P＝#HD＝#蓝光＝#超清＝#标清＝#1080P高清＝#720P清晰＝#4K HDR＝#蓝光1080P＝#4K=#(特别篇)=#(特别版)=#8K=#超高清8K=#2160P=#1440P=#2K=#480P=#SD=#360P=#流畅版=#低清=#HDR=#高动态范围=#杜比视界=#Dolby Vision=#MKV=#Matroska格式=#MP4=#MPEG-4格式=#AVI=#HD=#剪辑版=#精简版=#完整版=#未删减版=#导演剪辑版=#导剪版=#双语音轨=#SP1集=#特别集1=#OVA1集=#OAD1集=#预告片1=#Matroska=#MPEG-4=#音频视频交错=#漫画画=漫画#动态漫画=动态漫#合集篇=合集#合集版=合集#视频合集=合集#短篇集=短篇#全集=合集#（短）=#版版=版',
      'thesaurus' => '',
      'playerwords' => '',
      'areawords' => '',
      'langwords' => '',
      'words' => '',
    ),
    'art' => 
    array (
      'status' => '1',
      'hits_start' => '1',
      'hits_end' => '1000',
      'updown_start' => '1',
      'updown_end' => '1000',
      'score' => '1',
      'pic' => '0',
      'tag' => '0',
      'psernd' => '0',
      'psesyn' => '0',
      'inrule' => ',b',
      'uprule' => ',a,d',
      'filter' => '无奈的人',
      'thesaurus' => '',
      'words' => '',
    ),
    'actor' => 
    array (
      'status' => '0',
      'hits_start' => '1',
      'hits_end' => '999',
      'updown_start' => '1',
      'updown_end' => '999',
      'score' => '0',
      'pic' => '0',
      'psernd' => '0',
      'psesyn' => '0',
      'uprule' => ',a,b,c',
      'filter' => '无奈的人',
      'thesaurus' => '',
      'words' => '',
      'inrule' => ',a',
    ),
    'role' => 
    array (
      'status' => '0',
      'hits_start' => '1',
      'hits_end' => '999',
      'updown_start' => '1',
      'updown_end' => '999',
      'score' => '0',
      'pic' => '0',
      'psernd' => '0',
      'psesyn' => '0',
      'uprule' => ',a,b,c',
      'filter' => '',
      'thesaurus' => '',
      'words' => '',
      'inrule' => ',a',
    ),
    'website' => 
    array (
      'status' => '0',
      'hits_start' => '',
      'hits_end' => '',
      'updown_start' => '',
      'updown_end' => '',
      'score' => '0',
      'pic' => '0',
      'psernd' => '0',
      'psesyn' => '0',
      'filter' => '',
      'thesaurus' => '',
      'words' => '',
      'inrule' => ',a',
      'uprule' => ',',
    ),
    'comment' => 
    array (
      'status' => '0',
      'updown_start' => '1',
      'updown_end' => '100',
      'psernd' => '0',
      'psesyn' => '0',
      'inrule' => ',b',
      'filter' => '',
      'thesaurus' => '',
      'words' => '',
      'uprule' => ',',
    ),
  ),
  'api' => 
  array (
    'vod' => 
    array (
      'status' => '1',
      'charge' => '0',
      'detail_inc_hits' => '0',
      'pagesize' => '50',
      'imgurl' => '',
      'typefilter' => '',
      'datafilter' => '',
      'cachetime' => '',
      'from' => '',
      'auth' => '',
    ),
    'art' => 
    array (
      'status' => '0',
      'charge' => '0',
      'pagesize' => '20',
      'imgurl' => '',
      'typefilter' => '',
      'datafilter' => 'art_status=1',
      'cachetime' => '',
      'auth' => '',
    ),
    'actor' => 
    array (
      'status' => '0',
      'charge' => '0',
      'pagesize' => '20',
      'imgurl' => '',
      'typefilter' => '',
      'datafilter' => 'actor_status=1',
      'cachetime' => '',
      'auth' => '',
    ),
    'role' => 
    array (
      'status' => '0',
      'charge' => '0',
      'pagesize' => '20',
      'imgurl' => '',
      'typefilter' => '',
      'datafilter' => 'role_status=1',
      'cachetime' => '',
      'auth' => '',
    ),
    'website' => 
    array (
      'status' => '0',
      'charge' => '0',
      'pagesize' => '20',
      'imgurl' => '',
      'typefilter' => '',
      'datafilter' => 'website_status=1',
      'cachetime' => '',
      'auth' => '',
    ),
  ),
  'connect' => 
  array (
    'qq' => 
    array (
      'status' => '0',
      'key' => 'aa',
      'secret' => 'bb',
    ),
    'weixin' => 
    array (
      'status' => '0',
      'key' => 'cc',
      'secret' => 'dd',
    ),
  ),
  'weixin' => 
  array (
    'status' => '1',
    'duijie' => 'wx.test.com',
    'sousuo' => 'wx.test.com',
    'token' => 'qweqwe',
    'guanzhu' => '欢迎关注',
    'wuziyuan' => '没找到资源，请更换关键词或等待更新',
    'wuziyuanlink' => 'demo.test.com',
    'bofang' => '0',
    'msgtype' => '0',
    'gjc1' => '关键词1',
    'gjcm1' => '长城',
    'gjci1' => 'http://img.aolusb.com/im/201610/2016101222371965996.jpg',
    'gjcl1' => 'http://www.loldytt.com/Dongzuodianying/CC/',
    'gjc2' => '关键词2',
    'gjcm2' => '生化危机6',
    'gjci2' => 'http://img.aolusb.com/im/201702/20172711214866248.jpg',
    'gjcl2' => 'http://www.loldytt.com/Kehuandianying/SHWJ6ZZ/',
    'gjc3' => '关键词3',
    'gjcm3' => '湄公河行动',
    'gjci3' => 'http://img.aolusb.com/im/201608/201681719561972362.jpg',
    'gjcl3' => 'http://www.loldytt.com/Dongzuodianying/GHXD/',
    'gjc4' => '关键词4',
    'gjcm4' => '王牌逗王牌',
    'gjci4' => 'http://img.aolusb.com/im/201601/201612723554344882.jpg',
    'gjcl4' => 'http://www.loldytt.com/Xijudianying/WPDWP/',
  ),
  'view' => 
  array (
    'index' => '0',
    'map' => '0',
    'search' => '0',
    'rss' => '0',
    'label' => '0',
    'vod_type' => '0',
    'vod_show' => '0',
    'art_type' => '0',
    'art_show' => '0',
    'topic_index' => '0',
    'topic_detail' => '0',
    'vod_detail' => '0',
    'vod_play' => '0',
    'vod_down' => '0',
    'art_detail' => '0',
  ),
  'path' => 
  array (
    'topic_index' => 'topic/index',
    'topic_detail' => 'topic/{id}/index',
    'vod_type' => 'vodtypehtml/{id}/index',
    'vod_detail' => 'vodhtml/{id}/index',
    'vod_play' => 'vodplayhtml/{id}/index',
    'vod_down' => 'voddownhtml/{id}/index',
    'art_type' => 'arttypehtml/{id}/index',
    'art_detail' => 'arthtml/{id}/index',
    'page_sp' => '_',
    'suffix' => 'html',
  ),
  'rewrite' => 
  array (
    'suffix_hide' => '0',
    'route_status' => '0',
    'status' => '0',
    'encode_key' => 'abcdefg',
    'encode_len' => '6',
    'vod_id' => '0',
    'art_id' => '0',
    'type_id' => '0',
    'topic_id' => '0',
    'actor_id' => '0',
    'role_id' => '0',
    'website_id' => '0',
    'route' => 'map   => map/index
rss/index   => rss/index
rss/baidu => rss/baidu
rss/google => rss/google
rss/sogou => rss/sogou
rss/so => rss/so
rss/bing => rss/bing
rss/sm => rss/sm

index-<page?>   => index/index

gbook-<page?>   => gbook/index
gbook$   => gbook/index

topic-<page?>   => topic/index
topic$  => topic/index
topicdetail-<id>   => topic/detail

actor-<page?>   => actor/index
actor$ => actor/index
actordetail-<id>   => actor/detail
actorshow/<area?>-<blood?>-<by?>-<letter?>-<level?>-<order?>-<page?>-<sex?>-<starsign?>   => actor/show

role-<page?>   => role/index
role$ => role/index
roledetail-<id>   => role/detail
roleshow/<by?>-<letter?>-<level?>-<order?>-<page?>-<rid?>   => role/show


vodtype/<id>-<page?>   => vod/type
vodtype/<id>   => vod/type
voddetail/<id>   => vod/detail
vodrss-<id>   => vod/rss
vodplay/<id>-<sid>-<nid>   => vod/play
voddown/<id>-<sid>-<nid>   => vod/down
vodshow/<id>-<area?>-<by?>-<class?>-<lang?>-<letter?>-<level?>-<order?>-<page?>-<state?>-<tag?>-<year?>   => vod/show
vodsearch/<wd?>-<actor?>-<area?>-<by?>-<class?>-<director?>-<lang?>-<letter?>-<level?>-<order?>-<page?>-<state?>-<tag?>-<year?>   => vod/search
vodplot/<id>-<page?>   => vod/plot
vodplot/<id>   => vod/plot


arttype/<id>-<page?>   => art/type
arttype/<id>   => art/type
artshow-<id>   => art/show
artdetail-<id>-<page?>   => art/detail
artdetail-<id>   => art/detail
artrss-<id>-<page>   => art/rss
artshow/<id>-<by?>-<class?>-<level?>-<letter?>-<order?>-<page?>-<tag?>   => art/show
artsearch/<wd?>-<by?>-<class?>-<level?>-<letter?>-<order?>-<page?>-<tag?>   => art/search

label-<file> => label/index

plotdetail/<id>-<page?>   => plot/plot
plotdetail/<id>   => plot/detail',
  ),
  'email' => 
  array (
    'type' => 'Phpmailer',
    'time' => '5',
    'nick' => 'test',
    'test' => 'test@qq.com',
    'tpl' => 
    array (
      'test_title' => '【{$maccms.site_name}】测试邮件标题',
      'test_body' => '【{$maccms.site_name}】当您看到这封邮件说明邮件配置正确了！感谢支持开源程序！',
      'user_reg_title' => '【{$maccms.site_name}】的会员您好，请认真阅读邮件正文并按要求操作完成注册',
      'user_reg_body' => '【{$maccms.site_name}】的会员您好，注册验证码为：{$code}，请在{$time}分钟内完成验证。',
      'user_bind_title' => '【{$maccms.site_name}】的会员您好，请认真阅读邮件正文并按要求操作完成绑定',
      'user_bind_body' => '【{$maccms.site_name}】的会员您好，绑定验证码为：{$code}，请在{$time}分钟内完成验证。',
      'user_findpass_title' => '【{$maccms.site_name}】的会员您好，请认真阅读邮件正文并按要求操作完成找回',
      'user_findpass_body' => '【{$maccms.site_name}】的会员您好，找回验证码为：{$code}，请在{$time}分钟内完成验证。',
    ),
    'phpmailer' => 
    array (
      'host' => 'smtp.qq.com',
      'port' => '587',
      'secure' => 'tsl',
      'username' => 'test@qq.com',
      'password' => 'test',
    ),
  ),
  'play' => 
  array (
    'width' => '100%',
    'height' => '100%',
    'widthmob' => '100%',
    'heightmob' => '100%',
    'widthpop' => '0',
    'heightpop' => '600',
    'second' => '5',
    'prestrain' => '',
    'buffer' => '',
    'parse' => '',
    'autofull' => '0',
    'showtop' => '1',
    'showlist' => '1',
    'flag' => '0',
    'colors' => '000000,F6F6F6,F6F6F6,333333,666666,FFFFF,FF0000,2c2c2c,ffffff,a3a3a3,2c2c2c,adadad,adadad,48486c,fcfcfc',
  ),
  'sms' => 
  array (
    'type' => '',
    'sign' => '我的网站',
    'tpl_code_reg' => 'SMS_144850895',
    'tpl_code_bind' => 'SMS_144940283',
    'tpl_code_findpass' => 'SMS_144851023',
    'aliyun' => 
    array (
      'appid' => '',
      'appkey' => '',
    ),
    'qcloud' => 
    array (
      'appid' => '',
      'appkey' => '',
    ),
  ),
  'extra' => 
  array (
  ),
  'seo' => 
  array (
    'vod' => 
    array (
      'name' => '视频首页',
      'key' => '短视频,搞笑视频,视频分享,免费视频,在线视频,预告片',
      'des' => '提供最新最快的视频分享数据',
    ),
    'art' => 
    array (
      'name' => '文章首页',
      'key' => '新闻资讯,娱乐新闻,八卦娱乐,狗仔队,重大事件',
      'des' => '提供最新最快的新闻资讯',
    ),
    'actor' => 
    array (
      'name' => '演员首页',
      'key' => '大陆明星,港台明星,日韩明星,欧美明星,最火明星',
      'des' => '明星个人信息介绍',
    ),
    'role' => 
    array (
      'name' => '角色首页',
      'key' => '电影角色,电视剧角色,动漫角色,综艺角色',
      'des' => '角色人物介绍',
    ),
    'plot' => 
    array (
      'name' => '剧情首页',
      'key' => '剧情连载,剧情更新,剧情前瞻,剧情完结',
      'des' => '提供最新的剧情信息',
    ),
  ),
  'urlsend' => 
  array (
    'baidu' => 
    array (
      'token' => '111',
    ),
    'baidufast' => 
    array (
      'token' => '222',
    ),
  ),
);