<?php
/*
Sort:1
Hidden:false
Name:反馈管理
Url:feedback_adm
Right:feedback
Version:1.0
*/

if(!isset($islogin))header("Location: /");//非法访问
if(Db::table('feedback')->exist()){//判断数据表是否存在
    $nums=Db::table('feedback')->count();//获取用户总数
    $page=isset($_GET['page']) ? intval($_GET['page']) : 1;
    $url="./?feedback_adm&page=";
    $bnums=($page-1)*$ENUMS;
}else{
$sql = "CREATE TABLE `{$DP}feedback` (
    `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
    `time` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '反馈时间',
    `series` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '反馈剧集',
    `url` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '反馈ip',
    `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '反馈用户',
    `domain` text COMMENT '线路',
    `count` int(5) DEFAULT '1' COMMENT '计次',
    PRIMARY KEY (`id`),
    KEY `url` (`time`),
    KEY `expiretime` (`ip`),
    KEY `time` (`time`),
    KEY `series` (`series`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8;";
	$res = Db::establish($sql);
	if($res){
		echo "<script>location.href='./?feedback_adm';</script>";
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
                    <div class="row mb-2">
						<div class="col-lg-8">
							                          
						</div>
						<div class="col-lg-4">
							<div class="text-lg-right">
								<form action="" method="post">
									<div class="input-group">
										<input type="text" class="form-control" name="so" placeholder="搜索剧集、ID" value='<?php echo $so; ?>'>
										<span class="mdi mdi-magnify"></span>
										<div class="input-group-append">
											<button class="btn btn-primary" type="submit">搜索</button>
										</div>
									</div>
								</form>
							</div>
						</div>
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
                                    <th style="width: 20px;"><center><span class="badge badge-light-lighten">ID</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">时间</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">剧集</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">地址</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">IP</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">用户</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">线路</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">计次</span></center></th>
                                </tr>
                            </thead>
                            <tbody>
								<?php
									$app = Db::table('feedback','as A')->field('A.id,A.time,A.series,A.url,A.ip,A.user,A.domain,A.count');
									if($so){
										$app = $app->where('A.id','like',"%{$so}%")->whereOr('A.series','like',"%{$so}%")->whereOr('A.id','like',"%{$so}%")->order('id desc');
									}else{
										$app = $app->order('id desc')->limit($bnums,$ENUMS);
									}
									$res = $app->select();
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
                                        <center>
                                            <?php echo $rows['id']; ?>
                                        </center>
                                    </td>

                                    <td>
                                    	 <center>
											<?php echo date('Y-m-d H:i:s', $rows['time']); ?>
                                    	 </center>
                                    </td>

                                    <td>
                                        <center>
                                            <?php echo urldecode($rows['series']); ?>
                                        </center>
                                    </td>
                                    
                                    <td>
                                    	<center>
                                            <a href="<?php echo $rows['url']; ?>" target="_blank"> <i ><?php echo $rows['url']; ?></i></a>
                                        </center>
                                    </td>
									
                                    <td>
										<center>
										    <?php echo $rows['ip']; ?>
										</center>
                                    </td>

                                    <td>
                                        <center>
                                            <?php echo $rows['user']; ?>
                                        </center>
                                    </td>
                                    <td>
                                        <center>
                                            <?php echo $rows['domain']; ?>
                                        </center>
                                    </td>
                                    <td>
                                        <center>
                                            <?php echo $rows['count']; ?>
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
							<div class="col-sm-4">
								<div class="list_footer">
									选中项：<a href="javascript:void(0);" onclick="delsubmit()" id="delsubmit">删除</a>
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
                </div>
            </div>
        </div> 
    </div>
	<script>
	    /*全选数据*/
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
		/*删除数据*/
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
				url : "ajax.php?act=feedback_del",//请求的文件名
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
	