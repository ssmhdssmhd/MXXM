<?php
/*
Sort:1
Hidden:false
Name:全局设置
Url:analysis_analysisset
Version:1.0
*/
if(!isset($islogin))header("Location: /");//非法访问

if(Db::table('analysis_set')->exist()){//判断数据表是否存在
	$res = Db::table('analysis_set','as A')->field('A.*')->select();
	if (empty($res)) {
	    $set = Db::table('analysis_set')->add(['id'=>1,'Weather_switch'=>0]);
	    if($set){
	        echo "<script>location.href='./?analysis_analysisset';</script>";
        }
	}
}else{
    $sql = "
CREATE TABLE `{$DP}analysis_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Weather_switch` enum('1','0') DEFAULT '0' COMMENT '天气开关',
  `Weather_Appid` varchar(255) DEFAULT '43656176' COMMENT '天气ID',
  `Weather_Appsecret` varchar(255) DEFAULT 'I42og6Lm' COMMENT '天气密钥',
  `UA` varchar(255) DEFAULT 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.5359.125 Safari/537.36' COMMENT '全局User-Agent',
  `Encrypt` enum('1','0') DEFAULT '0' COMMENT '解析加密',
  `Analysis_log` enum('2','1','0') DEFAULT '1' COMMENT '解析日志',
  `Timeout` int(3) DEFAULT '15' COMMENT '超时时间',
  `Submission` enum('1','0') DEFAULT '0' COMMENT '提交方式',
  `Try` enum('1','0') DEFAULT '0' COMMENT '试看状态',
  `Trytime` int(11) DEFAULT '6' COMMENT '试看时间',
  `Force_Upgrade` enum('1','0') DEFAULT '0' COMMENT '应用强升',
  `Resource_Key` varchar(255) DEFAULT '' COMMENT '资源密钥',
  `Offsite_value` int(11) DEFAULT '9' COMMENT '异地阈值',
  `Risk_value` int(11) DEFAULT '4' COMMENT '风险阈值',
  `Play_Value` int(11) DEFAULT '300' COMMENT '播放阈值',
  `Overrun_Value` int(11) DEFAULT '5' COMMENT '超限阈值',
  `IP_blacklist` varchar(255) DEFAULT '' COMMENT 'IP黑名单',
  `Machine_blacklist` varchar(255) DEFAULT '' COMMENT '设备黑名单',
  `Account_does_not_exist` varchar(255) DEFAULT 'https://txmov2.a.kwimgs.com/upic/2021/12/08/18/BMjAyMTEyMDgxODU4NTNfMzM1MDU2NzNfNjIzNTg1NTIxMjBfMF8z_b_Bf178d61bbefa697d2db1bb25637fb64c.mp4?clientCacheKey=3xs2x9vrs2frgr4_b.mp4&tt=b&di=71072c02&bp=10000' COMMENT '账户不存在',
  `Account_expiration` varchar(255) DEFAULT 'https://txmov2.a.kwimgs.com/upic/2021/12/08/19/BMjAyMTEyMDgxOTAyMjBfMzM1MDU2NzNfNjIzNTg4MzY0NTdfMF8z_b_Bd5d08fb1475278148e58ba60554a11c7.mp4?clientCacheKey=3xz3xh6z7ngxn3y_b.mp4&tt=b&di=71072c02&bp=10000' COMMENT '账户过期',
  `Password_error` varchar(255) DEFAULT 'https://txmov2.a.kwimgs.com/upic/2021/12/08/19/BMjAyMTEyMDgxOTAwMzNfMzM1MDU2NzNfNjIzNTg2OTA2MTJfMF8z_b_Bf9fb1db112e680249d2593dd8f7342fd.mp4?clientCacheKey=3xviumptxqrkmu2_b.mp4&tt=b&di=71072c02&bp=10000' COMMENT '密码错误',
  `Offsite_notify` varchar(255) DEFAULT 'https://txmov2.a.kwimgs.com/upic/2022/01/22/16/BMjAyMjAxMjIxNjIxNDhfMzM1MDU2NzNfNjU0NzIzODU2MjdfMF8z_b_B0a8b2ea146d20dcc1b2a67c2057c0df2.mp4?clientCacheKey=3xgw42gv5hdu8wy_b.mp4&tt=b&di=11b80a6&bp=13380' COMMENT '异地提醒',
  `Risk_notify` varchar(255) DEFAULT 'https://alimov2.a.kwimgs.com/upic/2022/05/25/23/BMjAyMjA1MjUyMzU1MzdfMzM1MDU2NzNfNzUyNTgwNjg3NTNfMF8z_b_B481077f8ae36a5f708fb321140b4fb08.mp4?clientCacheKey=3xt6smqnwrgiabm_b.mp4&tt=b&di=75b3efda&bp=13380' COMMENT '风险提醒',
  `Hotlink_notify` varchar(255) DEFAULT '' COMMENT '盗链提醒',
  `Ban_notify` varchar(255) DEFAULT 'https://alimov2.a.kwimgs.com/upic/2022/03/19/18/BMjAyMjAzMTkxODI5NDRfMzM1MDU2NzNfNjk5OTk2NjEzMjNfMF8z_b_Bc628c5389c2892e81c9f5549f9a9af11.mp4?clientCacheKey=3xswm6n97vd3njm_b.mp4&tt=b&di=71072c29&bp=13380' COMMENT '封禁提醒',
  `Overrun_notify` varchar(255) DEFAULT 'https://alimov2.a.kwimgs.com/upic/2022/03/31/02/BMjAyMjAzMzEwMjE2MzVfMzM1MDU2NzNfNzA4NDU2OTAxMjRfMF8z_b_B65b1642f5834806432518b0b36ecf990.mp4?clientCacheKey=3xi6tj5gieddm9k_b.mp4&tt=b&di=71072c24&bp=13380' COMMENT '超限提醒',
  `Version_high` varchar(255) DEFAULT 'https://txmov2.a.kwimgs.com/upic/2022/05/17/21/BMjAyMjA1MTcyMTU4MjVfMzM1MDU2NzNfNzQ2NTU5NTQ2OTlfMF8z_b_B328e5c4d5779067aaeed496cd5c8e96b.mp4?clientCacheKey=3xr9sd65rfd5ism_b.mp4&tt=b&di=7102fc1b&bp=13380' COMMENT '版本高',
  `Version_low` varchar(255) DEFAULT 'https://alimov2.a.kwimgs.com/upic/2022/05/17/21/BMjAyMjA1MTcyMTU2MDJfMzM1MDU2NzNfNzQ2NTU3NjE3MjFfMF8z_b_B3676197db6cfefd533efff26860d187a.mp4?clientCacheKey=3x5e8y6u6w6en2q_b.mp4&tt=b&di=7102fc1b&bp=13380' COMMENT '版本低',
  `Version_error` varchar(255) DEFAULT 'https://alimov2.a.kwimgs.com/upic/2022/05/17/22/BMjAyMjA1MTcyMjAwMzhfMzM1MDU2NzNfNzQ2NTYxMzA5NTNfMF8z_b_B9ebf4f3e5e70b05e3a1b3805d033ead7.mp4?clientCacheKey=3xjabdphaawdrqw_b.mp4&tt=b&di=7102fc1b&bp=13380' COMMENT '版本错误',
  `Anti_theft` enum('2','1','0') DEFAULT '1' COMMENT '防盗状态',
  `Url_blacklist` text COMMENT '屏蔽连接',
  `disconnect` varchar(255) DEFAULT 'https://www.baidu.com/diaoxian.m3u8' COMMENT '掉线提醒',
  `Log_Redis_Address` varchar(255) NOT NULL DEFAULT '127.0.0.1' COMMENT 'Log_Redis地址',
  `Log_Redis_Port` int(11) NOT NULL DEFAULT '6379' COMMENT 'Log_Redis端口',
  `Log_RedisDB` varchar(255) NOT NULL DEFAULT '2' COMMENT 'Log_RedisDB',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
";
    $res = Db::establish($sql);
    if($res){
	    echo "<script>location.href='./?analysis_analysisset';</script>";
    }
}



foreach ($res as $k => $v){$rows = $res[$k];
?>

	<!-- start page title -->
	<div class="row">
		<div class="col-12">
			<div class="page-title-box">
				<div class="page-title-right">
					<ol class="breadcrumb m-0">
						<li class="breadcrumb-item"><a href="javascript: void(0);">首页</a></li>
						<li class="breadcrumb-item active"><?php echo $title; ?></li>
					</ol>
				</div>
				<h4 class="page-title"><?php echo $title; ?></h4>
			</div> <!-- end page-title-box -->
		</div> <!-- end col-->
	</div>
	<!-- end page title -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <nav style="overflow:auto;" class="table-responsive">
                        <ul class="nav nav-tabs nav-bordered mb-3 " style="width: 100%;">
                            
                            <li class="nav-item">
                                <a href="#web-ini" data-toggle="tab" aria-expanded="false" class="nav-link active">
                                    <span class="d-lg-block">常规设置</span>
                                </a>
                            </li>
                            
                            <li class="nav-item">
                                <a href="#tq-ini" data-toggle="tab" aria-expanded="true" class="nav-link">
                                    <span class="d-lg-block">安全设置</span>
                                </a>
                            </li>
                            
                            <li class="nav-item">
                                <a href="#sc-ini" data-toggle="tab" aria-expanded="false" class="nav-link">
                                    <span class="d-lg-block">提醒连接</span>
                                </a>
                            </li>
                            
                        </ul>
                    </nav>
                                        
                   <div class="tab-content">
                       
                        <!--常规设置-->
                        <div class="tab-pane show active" id="web-ini">
                            <div class="form-row">
                                <div class="form-group col-md-4">
								    <label for="f_user" class="col-form-label">天气开关</label>
								        <select class="form-control"  id="Weather_switch">
									        <option value="0" <?php if($rows['Weather_switch'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
									        <option value="1" <?php if($rows['Weather_switch'] == '1') echo 'selected = "selected"'; ?>>开启</option>
								        </select>
							    </div>
                                <div class="form-group col-md-4">
                                    <label for="f_user" class="col-form-label">Appid</label>
                                    <input type="text" class="form-control" id="Weather_Appid" placeholder="" value="<?php echo $rows['Weather_Appid']; ?>" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="f_user" class="col-form-label">Appsecret</label>
                                    <input type="text" class="form-control" id="Weather_Appsecret" placeholder="" value="<?php echo $rows['Weather_Appsecret']; ?>" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="f_user" class="col-form-label">全局User-Agent</label>
                                    <input type="text" class="form-control" id="UA" placeholder="1" value="<?php echo $rows['UA']; ?>" required>
                                </div>
                            </div>
                        </div>
                        
                        <!--安全设置-->
                        <div class="tab-pane" id="tq-ini">
                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <label for="f_user" class="col-form-label">异地阈值</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="Offsite_value" placeholder="9" value="<?php echo $rows['Offsite_value']; ?>" required>
                                        <div class="input-group-prepend"><span class="input-group-text" id="basic-addon1">次</span></div>
								    </div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="f_user" class="col-form-label">风险阈值</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="Risk_value" placeholder="4" value="<?php echo $rows['Risk_value']; ?>" required>
                                        <div class="input-group-prepend"><span class="input-group-text" id="basic-addon1">次</span></div>
								    </div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="f_user" class="col-form-label">播放阈值</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="Play_Value" placeholder="300" value="<?php echo $rows['Play_Value']; ?>" required>
                                        <div class="input-group-prepend"><span class="input-group-text" id="basic-addon1">次</span></div>
								    </div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="f_user" class="col-form-label">超限阈值</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="Overrun_Value" placeholder="5" value="<?php echo $rows['Overrun_Value']; ?>" required>
                                        <div class="input-group-prepend"><span class="input-group-text" id="basic-addon1">次</span></div>
								    </div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="f_user" class="col-form-label">试看状态</label>
                                    <select class="form-control" id="Try">
									    <option value="0" <?php if($rows['Try'] == 0) echo 'selected = "selected"'; ?>>关闭</option>
									    <option value="1" <?php if($rows['Try'] == 1) echo 'selected = "selected"'; ?>>开启</option>
								    </select>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="f_user" class="col-form-label">试看时间</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="Trytime" placeholder="25" value="<?php echo $rows['Trytime']; ?>" required>
                                        <div class="input-group-prepend"><span class="input-group-text" id="basic-addon1">分钟</span></div>
								    </div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="f_user" class="col-form-label">升级方式</label>
                                        <select class="form-control" id="Force_Upgrade">
    								        <option value="0" <?php if($rows['Force_Upgrade'] == 0) echo 'selected = "selected"'; ?>>常规</option>
    								        <option value="1" <?php if($rows['Force_Upgrade'] == 1) echo 'selected = "selected"'; ?>>强制</option>
    							        </select>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="f_user" class="col-form-label">资源解密(空则不解密)</label>
                                    <input type="text" class="form-control" id="Resource_Key" placeholder="密钥必须与苹果里相同" value="<?php echo $rows['Resource_Key']; ?>" required>
                                </div>
                                <div class="form-group col-md-1">
                                    <label for="f_user" class="col-form-label">解析加密</label>
                                    <select class="form-control" id="Encrypt">
									    <option value="0" <?php if($rows['Encrypt'] == 0) echo 'selected = "selected"'; ?>>关闭</option>
									    <option value="1" <?php if($rows['Encrypt'] == 1) echo 'selected = "selected"'; ?>>开启</option>
								    </select>
                                </div>
                                <div class="form-group col-md-1">
                                    <label for="f_user" class="col-form-label">解析日志</label>
                                        <select class="form-control" id="Analysis_log" onchange="logon_check_in_d(this.value)">
        								    <option value="0" <?php if($rows['Analysis_log'] == 0) echo 'selected = "selected"'; ?>>关闭</option>
        								    <option value="1" <?php if($rows['Analysis_log'] == 1) echo 'selected = "selected"'; ?>>Mysql</option>
        								    <option value="2" <?php if($rows['Analysis_log'] == 2) echo 'selected = "selected"'; ?>>Redis</option>
        							    </select>
                                </div>
                                
                                <div class="form-group col-md-2">
                                    <label for="f_user" class="col-form-label">Redis地址</label>
                                    <input type="text" class="form-control" id="Log_Redis_Address" placeholder="127.0.0.1" value="<?php echo $rows['Log_Redis_Address']; ?>" required <?php if($rows['Analysis_log']!='2'):?> disabled   <?php endif; ?>>
                                </div>
                                <div class="form-group col-md-1">
                                    <label for="f_user" class="col-form-label">Redis端口</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="Log_Redis_Port" placeholder="6379" value="<?php echo $rows['Log_Redis_Port']; ?>" required <?php if($rows['Analysis_log']!='2'):?> disabled   <?php endif; ?>>
                                    </div>
                                </div>
                                <div class="form-group col-md-1">
                                    <label for="f_user" class="col-form-label">使用表</label>
								    <select class="form-control" id="Log_RedisDB" <?php if($rows['Analysis_log']!='2'):?> disabled   <?php endif; ?>>
                                        <?php for ($i = 0; $i <= 15; $i++): ?>
                                            <option value="<?php echo $i; ?>" <?php if ($rows['Log_RedisDB'] == $i) echo 'selected = "selected"'; ?>>DB<?php echo $i; ?></option>
                                        <?php endfor; ?>
                                    </select>
                                </div>
                                
                                
                                <div class="form-group col-md-2">
                                    <label for="f_user" class="col-form-label">解析超时</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="Timeout" placeholder="25" value="<?php echo $rows['Timeout']; ?>" required>
                                        <div class="input-group-prepend"><span class="input-group-text" id="basic-addon1">秒</span></div>
								    </div>
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="f_user" class="col-form-label">提交方式</label>
                                    <select class="form-control" id="Submission">
									    <option value="0" <?php if($rows['Submission'] == 0) echo 'selected = "selected"'; ?>>Get</option>
									    <option value="1" <?php if($rows['Submission'] == 1) echo 'selected = "selected"'; ?>>Post</option>
								    </select>
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="f_user" class="col-form-label">防盗状态</label>
                                    <select class="form-control" id="Anti_theft">
									    <option value="0" <?php if($rows['Anti_theft'] == 0) echo 'selected = "selected"'; ?>>关闭</option>
									    <option value="1" <?php if($rows['Anti_theft'] == 1) echo 'selected = "selected"'; ?>>防盗</option>
									    <option value="2" <?php if($rows['Anti_theft'] == 2) echo 'selected = "selected"'; ?>>调试</option>
								    </select>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="f_user" class="col-form-label">IP黑名单</label>
                                    <input type="text" class="form-control" id="IP_blacklist" placeholder="192.168.1.1|192.168.2.1" value="<?php echo $rows['IP_blacklist']; ?>" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="f_user" class="col-form-label">设备黑名单</label>
                                    <input type="text" class="form-control" id="Machine_blacklist" placeholder="227c96dcd3e50a55|7bffdca7b131553b" value="<?php echo $rows['Machine_blacklist']; ?>" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="f_user" class="col-form-label">屏蔽连接</label>
                                    <input type="text" class="form-control" id="Url_blacklist" placeholder="竖线分割 例如:http://www.xxx.com/1.mp4|http://www.xxx.com/2.mp4" value="<?php echo $rows['Url_blacklist']; ?>" required>
                                </div>
                            </div>
                        </div>
                        
                        <!--提醒连接-->
                        <div class="tab-pane" id="sc-ini">
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="f_user" class="col-form-label">账户错误</label>
                                    <input type="text" class="form-control" id="Account_does_not_exist" placeholder="http://www.xxx.com/Account_does_not_exist.m3u8" value="<?php echo $rows['Account_does_not_exist']; ?>" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="f_user" class="col-form-label">账户过期</label>
                                    <input type="text" class="form-control" id="Account_expiration" placeholder="http://www.xxx.com/Account_expiration.m3u8" value="<?php echo $rows['Account_expiration']; ?>" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="f_user" class="col-form-label">密码错误</label>
                                    <input type="text" class="form-control" id="Password_error" placeholder="http://www.xxx.com/Password_error.m3u8" value="<?php echo $rows['Password_error']; ?>" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="f_user" class="col-form-label">异地提醒</label>
                                    <input type="text" class="form-control" id="Offsite_notify" placeholder="http://www.xxx.com/Offsite_notify.m3u8" value="<?php echo $rows['Offsite_notify']; ?>" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="f_user" class="col-form-label">风险提醒</label>
                                    <input type="text" class="form-control" id="Risk_notify" placeholder="http://www.xxx.com/Risk_notify.m3u8" value="<?php echo $rows['Risk_notify']; ?>" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="f_user" class="col-form-label">盗链提醒</label>
                                    <input type="text" class="form-control" id="Hotlink_notify" placeholder="http://www.xxx.com/Hotlink_notify.m3u8" value="<?php echo $rows['Hotlink_notify']; ?>" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="f_user" class="col-form-label">封禁提醒</label>
                                    <input type="text" class="form-control" id="Ban_notify" placeholder="http://www.xxx.com/Ban_notify.m3u8" value="<?php echo $rows['Ban_notify']; ?>" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="f_user" class="col-form-label">超限提醒</label>
                                    <input type="text" class="form-control" id="Overrun_notify" placeholder="http://www.xxx.com/Overrun_notify.m3u8" value="<?php echo $rows['Overrun_notify']; ?>" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="f_user" class="col-form-label">版本过高</label>
                                    <input type="text" class="form-control" id="Version_high" placeholder="http://www.xxx.com/Version_high.m3u8" value="<?php echo $rows['Version_high']; ?>" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="f_user" class="col-form-label">版本过低</label>
                                    <input type="text" class="form-control" id="Version_low" placeholder="http://www.xxx.com/Version_low.m3u8" value="<?php echo $rows['Version_low']; ?>" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="f_user" class="col-form-label">版本错误</label>
                                    <input type="text" class="form-control" id="Version_error" placeholder="http://www.xxx.com/Version_error.m3u8" value="<?php echo $rows['Version_error']; ?>" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="f_user" class="col-form-label">其他设备登录</label>
                                    <input type="text" class="form-control" id="disconnect" placeholder="http://www.xxx.com/disconnect.m3u8" value="<?php echo $rows['disconnect']; ?>" required>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php } ?>

                    <form action="" method="post" id="addimg" name="addimg">
						<div class="form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="ok" name="ok" value="y" required>
                                <label class="custom-control-label" for="ok">确认是我操作</label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-block btn-primary" name="submit" id="submit" value="确认">确认修改</button>
                    </form>
                </div> 
            </div> 
        </div> 
    </div>

	<script>
		$('#submit').click(function() {
			let t = window.jQuery;
			var Weather_switch = $("#Weather_switch").val();
			var Weather_Appid = $("#Weather_Appid").val();
			var Weather_Appsecret = $("#Weather_Appsecret").val();
			var UA = $("#UA").val();
			var Encrypt = $("#Encrypt").val();
			var Analysis_log = $("#Analysis_log").val();
			var Timeout = $("#Timeout").val();
			var Submission = $("#Submission").val();
			var Try = $("#Try").val();
			var Trytime = $("#Trytime").val();
			var Force_Upgrade = $("#Force_Upgrade").val();
			var Resource_Key = $("#Resource_Key").val();
			var Offsite_value = $("#Offsite_value").val();
			var Risk_value = $("#Risk_value").val();
			var Play_Value = $("#Play_Value").val();
			var Overrun_Value = $("#Overrun_Value").val();
			var IP_blacklist = $("#IP_blacklist").val();
			var Machine_blacklist = $("#Machine_blacklist").val();
			var Account_does_not_exist = $("#Account_does_not_exist").val();
			var Account_expiration = $("#Account_expiration").val();
			var Password_error = $("#Password_error").val();
			var Offsite_notify = $("#Offsite_notify").val();
			var Risk_notify = $("#Risk_notify").val();
			var Hotlink_notify = $("#Hotlink_notify").val();
			var Ban_notify = $("#Ban_notify").val();
			var Overrun_notify = $("#Overrun_notify").val();
			var Version_high = $("#Version_high").val();
			var Version_low = $("#Version_low").val();
			var Version_error = $("#Version_error").val();
			var Anti_theft = $("#Anti_theft").val();
			var Url_blacklist = $("#Url_blacklist").val();
			var disconnect = $("#disconnect").val();
			var Log_Redis_Address = $("#Log_Redis_Address").val();
			var Log_Redis_Port = $("#Log_Redis_Port").val();
			var Log_RedisDB = $("#Log_RedisDB").val();
			var ok = document.getElementById("ok").checked;
			if(!ok){
				t.NotificationApp.send("提示","请确认是我操作","top-center","rgba(0,0,0,0.2)","warning")
				return false;
			}
			document.getElementById('submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在修改";
			document.getElementById('submit').disabled=true;
			$.ajax({
				cache: false,
				type: "POST",//请求的方式
				url : "ajax.php?act=analysis_setup_set",//请求的文件名
				data : {
				    id:1,
					Weather_switch:Weather_switch,
					Weather_Appid:Weather_Appid,
					Weather_Appsecret:Weather_Appsecret,
					UA:UA,
					Encrypt:Encrypt,
					Analysis_log:Analysis_log,
					Timeout:Timeout,
					Submission:Submission,
					Try:Try,
					Trytime:Trytime,
					Force_Upgrade:Force_Upgrade,
					Resource_Key:Resource_Key,
					Offsite_value:Offsite_value,
					Risk_value:Risk_value,
					Play_Value:Play_Value,
					Overrun_Value:Overrun_Value,
					IP_blacklist:IP_blacklist,
					Machine_blacklist:Machine_blacklist,
					Account_does_not_exist:Account_does_not_exist,
					Account_expiration:Account_expiration,
					Password_error:Password_error,
					Offsite_notify:Offsite_notify,
					Risk_notify:Risk_notify,
					Hotlink_notify:Hotlink_notify,
					Ban_notify:Ban_notify,
					Overrun_notify:Overrun_notify,
					Version_high:Version_high,
					Version_low:Version_low,
					Version_error:Version_error,
					Anti_theft:Anti_theft,
					Url_blacklist:Url_blacklist,
					disconnect:disconnect,
					Log_Redis_Address:Log_Redis_Address,
					Log_Redis_Port:Log_Redis_Port,
					Log_RedisDB:Log_RedisDB
				},
				dataType : 'json',
				success : function(data) {
					console.log(data);
					document.getElementById('submit').disabled=false;
					document.getElementById('submit').innerHTML="确认修改";
					if(data.code == 200){
						t.NotificationApp.send("成功",data.msg,"top-center","rgba(0,0,0,0.2)","success")
						document.getElementById("ok").checked=false;
						window.setTimeout("window.location='"+window.location.href+"'",1000);
					}else{
						t.NotificationApp.send("失败",data.msg,"top-center","rgba(0,0,0,0.2)","error")
					}
				}
			});
			return false;//重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
		});
		
		function logon_check_in_d(i) {
			if(i=='2'){
				$("#Log_Redis_Address").val("<?php echo $rows['Log_Redis_Address']; ?>");
				$("#Log_Redis_Address").attr("disabled",false);
				$("#Log_Redis_Port").val("<?php echo $rows['Log_Redis_Port']; ?>");
				$("#Log_Redis_Port").attr("disabled",false);
				$("#Log_RedisDB").val("<?php echo $rows['Log_RedisDB']; ?>");
				$("#Log_RedisDB").attr("disabled",false);
			}else{
			    $("#Log_Redis_Address").val("<?php echo $rows['Log_Redis_Address']; ?>");
				$("#Log_Redis_Address").attr("disabled",true);
				$("#Log_Redis_Port").val("<?php echo $rows['Log_Redis_Port']; ?>");
				$("#Log_Redis_Port").attr("disabled",true);
				$("#Log_RedisDB").val("<?php echo $rows['Log_RedisDB']; ?>");
				$("#Log_RedisDB").attr("disabled",true);
			}
		}
	</script>