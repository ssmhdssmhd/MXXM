<?php
/*
Sort:5
Hidden:false
Name:解析记录
Url:analysis_analysislog
Version:1.0
*/
if(!isset($islogin))header("Location: /");//非法访问

if(Db::table('analysis_log')->exist()){//判断数据表是否存在
	$page=isset($_GET['page']) ? intval($_GET['page']) : 1;
	$see = isset($_GET['see']) ? intval($_GET['see']) : 0;
	$appid = isset($_GET['app']) ? intval($_GET['app']) : 0;
	if($see > 0 ){
		if($see == 1){
		    $nums=Db::table('analysis_log')->where('Risk_number','>','0')->count();
		}
		if($see == 2){
	        $nums=Db::table('analysis_log')->where('Overrun_number','>','0')->count();
		}
		if($see == 3){
	        $nums=Db::table('analysis_log')->where('Offsite_mumber','>','0')->count();
		}
		$url="./?analysis_analysislog&see={$see}&page=";
	}elseif($see <= 0 ){
		$nums=Db::table('analysis_log')->count();
		$url="./?analysis_analysislog&page=";
	}else{
		$nums=Db::table('analysis_log')->count(); 
		$url="./?analysis_analysislog&page=";
	}
	$bnums=($page-1)*$ENUMS;
}else{
    $sql = "CREATE TABLE `{$DP}analysis_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT '' COMMENT 'UserID',
  `appid` varchar(255) DEFAULT '' COMMENT 'appid',
  `token` varchar(255) DEFAULT '' COMMENT 'token',
  `Verify_token` varchar(255) DEFAULT '' COMMENT '验证token',
  `Finally_time` varchar(255) DEFAULT '' COMMENT '最后访问时间',
  `analysis_number` int(5) DEFAULT '1' COMMENT '解析次数',
  `Offsite_mumber` int(5) DEFAULT '0' COMMENT '异地次数',
  `Overrun_number` int(5) DEFAULT '0' COMMENT '超限次数',
  `Risk_number` int(5) DEFAULT '0' COMMENT '风险次数',
  `Unseal_time` varchar(255) DEFAULT '' COMMENT '解封时间',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `user` (`user`),
  KEY `appid` (`appid`),
  KEY `token` (`token`),
  KEY `Verify_token` (`Verify_token`),
  KEY `Finally_time` (`Finally_time`),
  KEY `analysis_number` (`analysis_number`),
  KEY `Offsite_mumber` (`Offsite_mumber`),
  KEY `Overrun_number` (`Overrun_number`),
  KEY `Risk_number` (`Risk_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;";
    $res = Db::establish($sql);
    if($res){
	    echo "<script>location.href='./?analysis_analysislog';</script>";
    }
}
?>

	<!-- start page title -->
	<div class="row">
		<div class="col-12">
			<div class="page-title-box">
				<div class="page-title-right">
					<ol class="breadcrumb m-0">
						<li class="breadcrumb-item"><a href="javascript: void(0);">首页</a></li>
						<li class="breadcrumb-item active">解析记录</li>
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
                    
                    <div class="row mb-2">
						<div class="col-lg-8">
							<form class="form-inline">
								
								<label for="status-select" class="mr-2"></label>
								<select class="form-control" name="see" id="see" onchange="get_screen(<?php echo $appid;?>,this.value)">
									<option value="0" <?php if($see == 0) echo 'selected = "selected"'; ?>>全部</option>
									<option value="1" <?php if($see == 1) echo 'selected = "selected"'; ?>>风险 </option>
									<option value="2" <?php if($see == 2) echo 'selected = "selected"'; ?>>超限</option>
									<option value="3" <?php if($see == 3) echo 'selected = "selected"'; ?>>异地</option>
								</select>
                                
							</form>                            
						</div>
						<div class="col-lg-4">
							<div class="text-lg-right">
								<form id="sousuo" method="post">
									<div class="input-group">
										<input type="text" class="form-control" name="so" placeholder="输入用户名" value='<?php echo $so; ?>'>
										<span class="mdi mdi-magnify"></span>
										<div class="input-group-append">
											<button class="btn btn-primary" type="submit">搜索</button>
										</div>
									</div>
								</form>
							</div>
						</div><!-- end col-->
                    </div>
                    
                    
					<form action="" method="post" name="form_log" id="form_log">
                    <div class="table-responsive">
                        <table class="table table-centered table-striped dt-responsive nowrap w-100">
                            <thead>
                                <tr>
                                    <th style="width: 20px;">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="all" onclick="checkAll();">
											<label class="custom-control-label" for="all">&nbsp;</label>
                                        </div>
                                    </th>
                                    <th style="width: 20px;"><center><span class="badge badge-light-lighten">序号</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">帐号</span></center></th>
									<th><center><span class="badge badge-light-lighten">播放次数</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">异地计次</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">超限计次</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">风险计次</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">最后提交</span></center></th>
									<th><center><span class="badge badge-light-lighten">归属于</span></center></th>
                                </tr>
                            </thead>
                            <tbody>
								<?php
									$app = Db::table('analysis_log','as A')->field('A.id,A.user,A.analysis_number,A.Offsite_mumber,A.Overrun_number,A.Risk_number,A.Finally_time,A.appid');
									if($so){
										$app = $app->where('A.id','like',"%{$so}%")->whereOr('A.user','like',"%{$so}%")->order('id desc');
									}else{
										if($see > 0){
											if($see == 1){
												$app = $app->where('Risk_number','>','0');
											}
											if($see == 2){
												$app = $app->where('Overrun_number','>','0');
											}
											if($see == 3){
												$app = $app->where('Offsite_mumber','>','0');
											}
										}
										$app = $app->order('id desc')->limit($bnums,$ENUMS);
									}
									$res = $app->select();//false
									
									$analysis_set = Db::table('analysis_set','as A')->field('A.*')->find();
									
									foreach ($res as $k => $v){$rows = $res[$k];
								?>
                                <tr>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" name="ids[]" value="<?php echo $rows['id']; ?>" id="<?php echo 'check_'.$rows['id']; ?>">
                                            <label class="custom-control-label" for="<?php echo 'check_'.$rows['id']; ?>"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <center><?php echo $rows['id']; ?></center>
                                    </td>
                                    <td>
										<center>
											<?php echo $rows['user']; ?>
										</center>
                                    </td>
									<td>
										<center>
											<?php if($rows['analysis_number'] >= $analysis_set['Play_Value'] ):?><span class="badge badge-danger"><?php echo $rows['analysis_number']; ?>次<?php else: ?><span class="badge badge-success"><?php echo $rows['analysis_number']; ?>次<?php endif; ?></span>
								        </center>
                                    </td>
									<td>
										<center>
											<?php if($rows['Offsite_mumber'] >= $analysis_set['Offsite_value'] ):?><span class="badge badge-danger"><?php echo $rows['Offsite_mumber']; ?>次<?php else: ?><span class="badge badge-success"><?php echo $rows['Offsite_mumber']; ?>次<?php endif; ?></span>
										</center>
                                    </td>
									<td>
										<center>
												<?php if($rows['Overrun_number'] >= $analysis_set['Overrun_Value'] ):?><span class="badge badge-danger"><?php echo $rows['Overrun_number']; ?>次<?php else: ?><span class="badge badge-success"><?php echo $rows['Overrun_number']; ?>次<?php endif; ?></span>
										</center>
                                    </td>
									<td>
										<center>
										<?php if($rows['Risk_number'] >= $analysis_set['Risk_value'] ):?><span class="badge badge-danger"><?php echo $rows['Risk_number']; ?>次<?php else: ?><span class="badge badge-success"><?php echo $rows['Risk_number']; ?>次<?php endif; ?></span>
										</center>
                                    </td>
                                    <td>
										<center>
										    <span class="badge badge-secondary-lighten"><?php echo  date('Y-m-d H:i:s', $rows['Finally_time']); ?></span>
										</center>
                                    </td>
									<td>
										<center>
										    <span class="badge badge-secondary-lighten"><?php echo $rows['appid']; ?></span>
									    </center>
                                    </td>
                                    
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
					<div class="progress-w-percent-s"></div>
					<div class="form-row">
						<div class="form-group col-md-6 mt-2">
							<div class="col-sm-12">
								<div class="list_footer">
									选中项：
									<a href="javascript:void(0);" onclick="delsubmit()" id="delsubmit">删除</a>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<nav  aria-label="Page navigation example">
								<ul class="pagination justify-content-end">
									<?php if(!$so){echo pagination($nums,$ENUMS,$page,$url);}?>
								</ul>
							</nav>
						</div>
					</div>
					</form>
                </div> <!-- end card-body-->
            </div> <!-- end card-->
        </div> <!-- end col -->
    </div>
    
    <script>
	    function get_screen(appid,see){
			var url = '';
			if(appid > 0){
				url = '?app=' + appid;
			}
			if(see >= 0){
				if(url == ''){
					url = '&see=' + see;
				}else{
					url = url + '&see=' + see;
				}
			}
			location.href='./?analysis_analysislog' + url;
		}
		
		function checkAll() {
			var code_Values = document.getElementsByTagName("input");
			var all = document.getElementById("all");
			if (code_Values.length) {
				for (i = 0; i < code_Values.length; i++) {
					if (code_Values[i].type == "checkbox") {
						code_Values[i].checked = all.checked;
					}
				}
			} else {
				if (code_Values.type == "checkbox") {
					code_Values.checked = all.checked;
				}
			}
		}
		
		function delsubmit(){
			var id_array=new Array(); 
			$("input[name='ids[]']:checked").each(function(){ 
				id_array.push($(this).val());//向数组中添加元素 
			}); //获取界面复选框的所有值
			//ar chapterstr = id_array.join(',');//把复选框的值以数组形式存放
			var url = window.location.href;
			let t = window.jQuery;
			if(id_array.length<=0){
				t.NotificationApp.send("提示","请选择要删除的项目","top-center","rgba(0,0,0,0.2)","warning")
				return false;
			}
			document.getElementById("delsubmit").innerHTML="<div class=\"spinner-border spinner-border-sm mr-1\" style=\"margin-bottom:2px!important\" role=\"status\"></div>删除中";
			document.getElementById("delsubmit").className = "text-title";
			$("#delsubmit").attr("disabled",true).css("pointer-events","none"); 
			
			console.log(id_array);
			$.ajax({
				cache: false,
				type: "POST",//请求的方式
				url : "ajax.php?act=analysis_analysislogdel",//请求的文件名
				data : {id:id_array},
				dataType : 'json',
				success : function(data) {
					if(data.code == 200){
						t.NotificationApp.send("成功",data.msg,"top-center","rgba(0,0,0,0.2)","success")
					}else{
						t.NotificationApp.send("失败",data.msg,"top-center","rgba(0,0,0,0.2)","error")
					}
					//console.log(data);
					window.setTimeout("window.location='"+url+"'",1000);
				}
			});
			return false;//重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
		}
	</script>
 