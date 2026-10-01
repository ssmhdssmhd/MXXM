<?php
define('APP_DEBUG',0);//错误输出，0=关闭，1=开启

define('DEFAULT_RETURN_TYPE',0);//默认输出0=JSON格式,1=xml格式

define('USER_TOKEN_TIME',180);// 用户状态在线有效期

define('DATA_PAGE_ENUMS',20);// 每页显示数据

define('DEFAULT_TIMEZONE','PRC');// 默认时区

define('INDEX_TEMPLATE','index_404');//首页模板

define('API_EXTEND_MULU','extend/api/');//api扩展目录

define('ADM_EXTEND_MULU','extend/adm/');//adm扩展目录

define('USER_PIC_MULU','data/pic/');//用户头像目录

define('ADM_LOG',0);//管理日志,0=关闭，1=开启

define('USER_LOG',1);//用户日志,0=关闭，1=开启

define('LOG_DEL',30);//日志删除时间

define('LOG_KEY','SbwxrbTMMiyQBrHC3zmTcEr7Js3p5nBJ');//日志KEY

define('FCPATH', str_replace("\\",'/', dirname(dirname(__FILE__)).'/')); // 网站根目录

define('WEB_URL',(($_SERVER['SERVER_PORT']==443) ? 'https':'http').'://'.$_SERVER['HTTP_HOST'].str_replace($_SERVER['DOCUMENT_ROOT'],(substr($_SERVER['DOCUMENT_ROOT'],-1) == '/') ? '/':'',dirname($_SERVER['SCRIPT_FILENAME']))); // 网站根目录

define("VER", 1.72);// 当前系统版本

define('Empower','');//授权密钥
define('TimeMsg','设备时间异常,请先调整时间或稍后在试!');//时间错误消息
define('Cache_key',' eddc278ed89ea215cf440dde7f4ede77');//配置密钥
define('Cosaddress','https://sq.axablog.cn/cos.json');//云Cos地址
define('Mainaddress','');//主控地址
define('Serveruser','');//服务器认证帐号
define('Serverpwd','');//服务器认证密码
define('Cache_time',0);//缓存时

?>