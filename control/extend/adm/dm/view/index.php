<?php
/*
Sort:1
Hidden:false
Name:弹幕管理
Url:dm_index
Right:dm
Version:1.0
*/
if (!isset($islogin)) header("Location: /"); //非法访问
if (Db::table('dm')->exist()) { //判断数据表是否存在
	$appid = empty($_GET['app']) ? 10000 : intval($_GET['app']);
	$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
	// var_dump($ENUMS);die;
	if ($appid > 0) {
		$nums = Db::table('dm')->where('appid', $appid)->count();
	} else {
		$nums = Db::table('dm')->count();
	}
	$url = "./?dm_index&app={$appid}&page=";
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
	// var_dump($res);die;
	
	if ($res) {
		echo "<script>location.href='./?dm_index';</script>";
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
							<button type="button" class="btn btn-danger mb-2 mr-2" data-toggle="modal" data-target="#add"><i class="mdi mdi-cube-outline mr-1"></i>添加弹幕</button>
							<button type="button" class="btn btn-danger mb-2 mr-2" data-toggle="modal" data-target="#modal"><i class="mdi mdi-briefcase-plus-outline mr-1"></i>接口配置</button>

						</form>

					</div>
					<div class="col-lg-4">
						<div class="text-lg-right">
							<form action="" method="post">
								<div class="input-group">
									<input type="text" class="form-control" name="so" placeholder="弹幕内容" value='<?php echo $so; ?>'>
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
									<th style="width: 20px;">
										<center><span class="badge badge-light-lighten">ID</span></center>
									</th>
									<th>
										<center><span class="badge badge-light-lighten">视频链接</span></center>
									</th>
									<th>
										<center><span class="badge badge-light-lighten">秒数</span></center>
									</th>
									<!-- <th><center><span class="badge badge-light-lighten">所属分类</span></center></th> -->
									<th>
										<center><span class="badge badge-light-lighten">弹幕内容</span></center>
									</th>
									<!-- <th style="width: 75px;">
										<center><span class="badge badge-light-lighten">管理</span></center>
									</th> -->
								</tr>
							</thead>
							<tbody>
								<?php
								$app = Db::table('dm', 'as A')->field('A.id,A.url,A.sec,A.content,A.data');
								// $res = $app->select();
								// var_dump($app);die;
								if ($so) {
									$app = $app->where('A.content', 'like', "%{$so}%")->order('id desc');
								} else {
									if ($appid > 0) {
										$app = $app->where('A.appid', $appid);
									}

									$app = $app->order('A.id desc')->limit($bnums, $ENUMS);
									//var_dump($app);die;
								}

								$res = $app->select(); //false

								//var_dump($res,$appid,$bnums,$ENUMS);die;

								foreach ($res as $k => $v) {
									$rows = $res[$k];
									//var_dump($rows);die;
								?>
									<tr>
										<td>
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" name="ids[]" value="<?php echo $rows['id']; ?>" id="<?php echo 'check_' . $rows['id']; ?>">
												<label class="custom-control-label" for="<?php echo 'check_' . $rows['id']; ?>"></label>
											</div>
										</td>
										<td>
											<center><?php echo $rows['id']; ?></center>
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
													<?php echo $rows['sec']; ?>
												</span>
											</center>

										</td>

										<td>
											<center>
												<span class="badge badge-primary">
													<?php echo $rows['content']; ?>
												</span>
											</center>
										</td>




										<!-- <td>
											<center><a href="./?live_liveedit&id=<?php // echo $rows['id']; 
																					?>" class="action-icon"> <i class="mdi mdi-border-color"></i></a></center>
										</td> -->
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
									<!-- <a href="javascript:void(0);" onclick="modify_class()" id="modify_class">修改分类</a> -->
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

<div id="add" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="add">添加弹幕</h4>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			</div>
			<div class="modal-body">
				<form class="pl-3 pr-3" method="post">
					<div class="form-group">
						<label class="col-form-label">视频链接</label>
						<input class="form-control" type="text" id="add_url" placeholder="请输入视频链接" required>
					</div>
					<div class="form-group">
						<label class="col-form-label">显示秒数</label>
						<input class="form-control" type="number" id="add_sec" placeholder="请输入秒数" required>
					</div>
					<div class="form-group">
						<label class="col-form-label">添加内容</label>
						<input class="form-control" type="text" id="add_content" placeholder="请输入弹幕内容" required>
					</div>




					<div class="form-group text-center">
						<button class="btn btn-primary" type="submit" id="add_submit" value="确定">确认添加</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>


<div id="modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
	<?php
	$appid = empty($_GET['appid']) ? 10000 : $_GET['appid'];
	$sql1 = "CREATE TABLE `yyys_dm_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `appid` int(11) NOT NULL DEFAULT '10000',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;";
	//$sql2 = "INSERT INTO `yyys_dm_config` (`id`, `url`, `appid`, `addtime`) VALUES
 //(1,	'http://dm.cfysoft.cc/?ac=dm&key=cZnJNoHzbm&url=',	10000,	1756207707);";

	$res1 = Db::establish($sql1);
	//$res2 = Db::establish($sql2);
	
	$res = Db::table('dm_config')->where(['appid' => $appid])->find();
	?>
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="modal_title">接口配置</h4>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			</div>
			<div class="modal-body">
				<?php // if ($app_num > 0): ?>
					<form class="pl-3 pr-3" method="post">
						<input class="form-control" type="number" id="cfg_appid" name="appid" value="<?php echo $appid ?>" placeholder="配置ID" hidden> <!--style="display:none" -->
						<div class="form-group">
							<label>接口地址</label>
							<input class="form-control" type="text" id="cfg_dmurl" name="dmurl" placeholder="接口地址" value="<?php echo $res['url'] ?>" required>
						</div>

						<div id="add" class="form-group text-center">
							<button class="btn btn-primary" type="button" name="add_config_submit" id="add_config_submit" value="确定">确认添加</button>
						</div>
						<div id="edit" class="form-group text-center" hidden>
							<button class="btn btn-primary" type="button" name="edit_config_submit" id="edit_config_submit" value="确定">确认编辑</button>

						</div>
					</form>
				<?php // else: ?>
					<!-- <div class="text-center" style="margin-top:4rem!important;margin-bottom:6rem!important">
						<img src="../assets/images/no-app.svg" height="120" alt="File not found Image">
						<h4 class="text-uppercase mt-3 mb-3">需要添加应用后开启该功能</h4>
						<a href="./?app_adm"><button type="button" class="btn btn-dark">添加应用</button></a>
					</div> -->
				<?php // endif; ?>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

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

	function delsubmit() {
		var id_array = new Array();
		$("input[name='ids[]']:checked").each(function() {
			id_array.push($(this).val()); //向数组中添加元素 
		}); //获取界面复选框的所有值
		//ar chapterstr = id_array.join(',');//把复选框的值以数组形式存放
		var url = window.location.href;
		let t = window.jQuery;
		if (id_array.length <= 0) {
			t.NotificationApp.send("提示", "请选择要删除的项目", "top-center", "rgba(0,0,0,0.2)", "warning")
			return false;
		}
		document.getElementById("delsubmit").innerHTML = "<div class=\"spinner-border spinner-border-sm mr-1\" style=\"margin-bottom:2px!important\" role=\"status\"></div>删除中";
		document.getElementById("delsubmit").className = "text-title";
		$("#delsubmit").attr("disabled", true).css("pointer-events", "none");

		console.log(id_array);
		$.ajax({
			cache: false,
			type: "POST", //请求的方式
			url: "ajax.php?act=dm_del", //请求的文件名
			data: {
				id: id_array
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
	
	//添加或编辑接口
	$('#add_config_submit').click(function() {
        let t = window.jQuery;
		var add_url = $("#cfg_dmurl").val();
		var appid = $('#cfg_appid').val()

		document.getElementById('add_config_submit').innerHTML = "<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在添加";
		document.getElementById('add_config_submit').disabled = true;

		$.ajax({
			cache: false,
			type: "POST", //请求的方式
			url: "ajax.php?act=dm_addcfg", //请求的文件名
			data: {
				url: add_url,
				appid:appid
			},
			dataType: 'json',
			success: function(data) {
				document.getElementById('add_config_submit').disabled = false;
				document.getElementById('add_config_submit').innerHTML = "确认添加";
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

	
</script>