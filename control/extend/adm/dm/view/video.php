<?php
/*
Sort:1
Hidden:false
Name:视频管理
Url:dm_video
Right:dm
Version:1.0
*/
if (!isset($islogin)) header("Location: /"); //非法访问
// error_reporting(E_ALL ^ E_NOTICE);
// $ENUMS = 2;
if (Db::table('dm')->exist()) { //判断数据表是否存在
	$appid = isset($_GET['app']) ? intval($_GET['app']) : 0;
	$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
	if ($appid > 0) {
		//$nums = Db::table('dm')->where('appid', $appid)->group('url')->count();
		$arrNums = Db::query("SELECT url,COUNT(DISTINCT url) as count WHERE appid={$appid} FROM yyys_dm");
		$nums = empty($arrNums[0]['count']) ? 0 : $arrNums[0]['count'];
	} else {
		$arrNums = Db::query("SELECT url,COUNT(DISTINCT url) as count FROM yyys_dm");
		$nums = empty($arrNums[0]['count']) ? 0 : $arrNums[0]['count'];
		//$nums = Db::table('dm')->group('url')->count();
	}

	$url = "./?dm_video&app={$appid}&page=";
	$bnums = ($page - 1) * $ENUMS;
} else {
	$sql = "CREATE TABLE `yyys_dm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL COMMENT '视频链接',
  `sec` int(11) NOT NULL COMMENT '秒数',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `data` text NOT NULL COMMENT '弹幕数据',
  `appid` int(11) NOT NULL DEFAULT '10000',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `status_off` int(11) NOT NULL DEFAULT '0' COMMENT '0.未关闭；1.关闭',
  PRIMARY KEY (`id`)
   ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;";
	$res = Db::establish($sql);
	// // Removed debug output
	if ($res) {
		echo "<script>location.href='./?dm_video';</script>";
	}
}

?>

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
						<form class="form-inline">
							
						</form>

					</div>
					<div class="col-lg-4">
						<div class="text-lg-right">
							
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
									<th>
										<center><span class="badge badge-light-lighten">状态</span></center>
									</th>
									<th>
										<center><span class="badge badge-light-lighten">视频链接</span></center>
									</th>
									<th>
										<center><span class="badge badge-light-lighten">弹幕数量（不含接口）</span></center>
									</th>
									
								</tr>
							</thead>
							<tbody>
								<?php
								// 使用原始SQL查询确保GROUP BY语法正确
								$where = [];
								$sqlWhere = '';
								if ($so) {
									$where[] = "A.content LIKE '%{$so}%'";
								}
								if ($appid > 0) {
									$where[] = "A.appid = {$appid}";
								}
								if (!empty($where)) {
									$sqlWhere = 'WHERE ' . implode(' AND ', $where);
								}

								// 查询去重后的URL，使用MAX(id)确保最新URL排在前面
								$sql = "SELECT A.status_off,A.url, MAX(A.id) as id FROM yyys_dm as A {$sqlWhere} GROUP BY A.url ORDER BY A.id desc LIMIT {$bnums}, {$ENUMS}";
								$res = Db::query($sql);

								// 确保分页参数正确传递
								if (empty($page)) $page = 1;
								$bnums = ($page - 1) * $ENUMS;
								if ($bnums < 0) $bnums = 0;

								// 修复计数查询
								if ($appid > 0) {
									$arrNums = Db::query("SELECT url,COUNT(DISTINCT url) as count FROM yyys_dm WHERE appid = {$appid}");
									$nums = empty($arrNums[0]['count']) ? 0 : $arrNums[0]['count'];
								} else {
									$arrNums = Db::query("SELECT url,COUNT(DISTINCT url) as count FROM yyys_dm");
									$nums = empty($arrNums[0]['count']) ? 0 : $arrNums[0]['count'];
								}

								// 确保$res是数组
								if (!is_array($res)) {
									$res = [];
								}

								// 对每个去重后的URL，获取其相关数据统计
								$urlStats = [];
								foreach ($res as $k => $v) {
									$videourl = $v['url'];
									// 处理URL中的特殊字符防止SQL注入
									$escapedUrl = str_replace("'", "''", $videourl);
									// var_dump($escapedUrl);

									// 获取该URL下的弹幕数量
									$countWhere = "url = '{$escapedUrl}'";
									if ($appid > 0) {
										$countWhere .= " AND appid = {$appid}";
									}

									$countSql = "SELECT url,COUNT(*) as count FROM yyys_dm WHERE {$countWhere}";
									$countRes = Db::query($countSql);
									// Removed debug output
									$count = $countRes ? $countRes[0]['count'] : 0;
									$res[$k]['count'] = $count;
								}

								foreach ($res as $k => $v) {
									$rows = $res[$k];
								?>
									<tr>
										<td>
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="urls[]" value="<?php echo $rows['url']; ?>" id="<?php echo 'check_' . $rows['url']; ?>">
												<label class="custom-control-label" for="<?php echo 'check_' . $rows['url']; ?>"></label>
											</div>
										</td>
										<td>
											<center>
											<span class="badge badge-primary">
													<?php if($rows['status_off'] == 1): echo '已关闭'; else: echo '已开启';endif;?>
												</span>
												</center>
										</td>

										<td>
											<center>
												<span class="badge badge-primary">
													<?php echo $rows['url']; ?>
												</span>
											</center>
										</td>

										<td>
											<center>
												<span class="badge badge-primary">
													<?php echo $rows['count']; ?>
												</span>
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
									<a href="javascript:void(0);" onclick="statsubmit(1)" id="delsubmit">关闭</a>
									<a href="javascript:void(0);" onclick="statsubmit(2)" id="osubmit">开启</a>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<nav aria-label="Page navigation example">
								<ul class="pagination justify-content-end">
									<?php if (!$so) {
										echo pagination($nums, $ENUMS, $page, $url);
									} ?>
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
		console.log(all, code_Values)
	}

	$('#add_submit').click(function() {
		let t = window.jQuery;
		var add_sec = $("#add_sec").val();
		var add_url = $("#add_url").val();
		var add_content = $("#add_content").val();
		// var one_way_connect = $("#one_way_connect").val();
		document.getElementById('add_submit').innerHTML = "<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在添加";
		document.getElementById('add_submit').disabled = true;

		$.ajax({
			cache: false,
			type: "POST", //请求的方式
			url: "ajax.php?act=dm_add", //请求的文件名
			data: {
				sec: add_sec,
				url: add_url,
				// one_way_connect:one_way_connect,
				content: add_content
			},
			dataType: 'json',
			success: function(data) {
				console.log(data);
				document.getElementById('add_submit').disabled = false;
				document.getElementById('add_submit').innerHTML = "确认添加";
				if (data.code == 200) {
					t.NotificationApp.send("成功", data.msg, "top-center", "rgba(0,0,0,0.2)", "success")
					window.setTimeout("window.location='" + window.location.href + "'", 1000);
				} else {
					t.NotificationApp.send("失败", data.msg, "top-center", "rgba(0,0,0,0.2)", "error")
				}
			}
		});
		return false; //重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
	});

	function statsubmit(status) {

		var id_array = new Array();
		// return false;
		$("input[name='urls[]']:checked").each(function() {
			id_array.push($(this).val()); //向数组中添加元素 
		}); //获取界面复选框的所有值
		//ar chapterstr = id_array.join(',');//把复选框的值以数组形式存放
		var url = window.location.href;

		if (status == 1) {
			postUrl = "ajax.php?act=dm_video_del";
			tip = '请选择要关闭的项目'
			msg = '关闭中';
		} else {
			postUrl = "ajax.php?act=dm_video_edit";
			tip = '请选择要开启的项目'
			msg = '开启中';
		}

		// console.log(id_array);
		// return false;
		let t = window.jQuery;
		if (id_array.length <= 0) {
			t.NotificationApp.send("提示", tip, "top-center", "rgba(0,0,0,0.2)", "warning")
			return false;
		}
		if (status == 1) {
			document.getElementById("delsubmit").innerHTML = "<div class=\"spinner-border spinner-border-sm mr-1\" style=\"margin-bottom:2px!important\" role=\"status\"></div>" + msg;
			document.getElementById("delsubmit").className = "text-title";
			$("#delsubmit").attr("disabled", true).css("pointer-events", "none");
		} else {
			document.getElementById("osubmit").innerHTML = "<div class=\"spinner-border spinner-border-sm mr-1\" style=\"margin-bottom:2px!important\" role=\"status\"></div>" + msg;
			document.getElementById("osubmit").className = "text-title";
			$("#osubmit").attr("disabled", true).css("pointer-events", "none");
		}

		// return false;

		$.ajax({
			cache: false,
			type: "POST", //请求的方式
			// url: "ajax.php?act=dm_video_del", //请求的文件名
			url: postUrl, //请求的文件名
			data: {
				url: id_array
			},
			dataType: 'json',
			success: function(data) {
				if (data.code == 200) {
					t.NotificationApp.send("成功", data.msg, "top-center", "rgba(0,0,0,0.2)", "success")
				} else {
					t.NotificationApp.send("失败", data.msg, "top-center", "rgba(0,0,0,0.2)", "error")
				}
				//console.log(data);
				window.setTimeout("window.location='" + url + "'", 1000);
			}
		});
		return false; //重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
	}
</script>