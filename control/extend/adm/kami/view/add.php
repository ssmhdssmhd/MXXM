<?php
/*
Sort:2
Hidden:false
Name:添加卡密
Url:kami_add
Version:1.0
*/
if(!isset($islogin))header("Location: /");//非法访问

$sql = Db::table('kami_type','as KT')->field('KT.*,IFNULL(K.zs,0) as kzs,IFNULL(KK.ys,0) as kys')->JOIN("(SELECT tid,COUNT(*) AS zs FROM `{$DP}kami`  GROUP BY tid) AS K",'KT.id=K.tid')->JOIN("(SELECT tid,COUNT(*) AS ys FROM `{$DP}kami` where `use_time` > 0 GROUP BY tid) AS KK",'KT.id=KK.tid');
if($so != ''){
	$sql = $sql->where('KT.name','like',"%{$so}%")->order('id desc');
	$url="./?kami_add&so={$so}&pg=";
}else{
	$sql = $sql->order('id desc')->limit($bnums,$ENUMS);
	$url="./?kami_add&pg=";
}
$res = $sql->select();//false
$nums = count($res);
?>

	<!-- start page title -->
	<div class="row">
		<div class="col-12">
			<div class="page-title-box">
				<div class="page-title-right">
					<ol class="breadcrumb m-0">
						<li class="breadcrumb-item"><a href="javascript: void(0);">首页</a></li>
						<li class="breadcrumb-item active">卡密</li>
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
							<button type="button" class="btn btn-danger mb-2 mr-2" data-toggle="modal" data-target="#add_kami"><i class="mdi mdi-credit-card-plus mr-1"></i>添加卡密</button> 
							<button type="button" onclick="modal_cut('add',0,0,0,0)" class="btn btn-primary mb-2 mr-2" data-toggle="modal" data-target="#add_type"><i class="mdi mdi-credit-card-multiple mr-1"></i>添加分类</button> 							
						</div>
						<div class="col-lg-4">
							<div class="text-lg-right">
								<form action="" method="post">
									<div class="input-group">
										<input type="text" class="form-control" name="so" placeholder="搜索分类" value='<?php echo $so; ?>'>
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
									<th style="width: 20px;"><center>ID</center></th>
									<th>分类名称</th>
									<th style="width: 120px;"><center>卡密类型</center></th>
									<th style="width: 120px;"><center>卡密面值</center></th>
									<th style="width: 150px;"><center>卡密总数</center></th>
									<th style="width: 100px;"><center>已用总数</center></th>
									<th style="width: 75px;"><center>管理</center></th>
								</tr>
							</thead>
							<tbody>
								<?php foreach ($res as $k => $v){$rows = $res[$k];?>
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
										<?php echo $rows['name'];?>
									</td>
									<td>
										<center><?php if($rows['type']=='fen'):?><span class="badge badge-warning-lighten">积分卡<?php else: ?>
										<span class="badge badge-danger-lighten">会员卡<?php endif; ?></span></center>
									</td>
									<td>
										<center><?php echo $rows['amount'];?></center>
									</td>
									<td>
										<center><?php echo $rows['kzs'];?></center>
									</td>
									<td>
										<center><?php echo $rows['kys'];?></center>
									</td>
									<td>
										<center><a href="javascript:void(0);" onclick="modal_cut('edit',<?php echo $rows['id'];?>,'<?php echo $rows['name']; ?>','<?php echo $rows['type']; ?>','<?php echo $rows['amount']; ?>')" class="action-icon"> <i class="mdi mdi-border-color" data-toggle="modal" data-target="#add_type"></i></a></center>
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
									<?php echo pagination($nums,$ENUMS,$pg,$url);?>
								</ul>
							</nav>
						</div>
					</div>
					</form>
				</div> <!-- end card-body-->
			</div> <!-- end card-->
		</div> <!-- end col -->
	</div>
	<!-- end row -->

	<div id="add_kami" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">添加卡密</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				</div>
				<div class="modal-body">
					<?php if($nums > 0):?>
					<form class="pl-3 pr-3" method="post">
						
						<div class="form-group">
							<label>卡密类型 *</label>
							<select class="form-control" id="k_type">
								<?php
									$res = Db::table('kami_type')->order('id desc')->select();
									foreach ($res as $k => $v){$rows = $res[$k];
								?>
								<option value="<?php echo $rows['id']; ?>"><?php echo $rows['name']; ?></option>
								<?php } ?>
							</select>
						</div>
						<div class="form-group">
							<label>生成数量</label>
							<input type="number" class="form-control" id="add_num" placeholder="生成数量" value="1" required>
						</div>
						<div class="form-group">
							<label>卡密长度</label>
							<input type="number" class="form-control" id="k_length" placeholder="卡密长度" value="10" required>
						</div>
						<div class="form-group">
							<label>卡密备注</label>
							<input type="text" class="form-control" id="add_note" placeholder="卡密备注" value="" >
						</div>
						<div class="form-row">	
							<div class="form-group col-md-12">
								<label>绑定应用</label>
								<select class="form-control" id="add_appid">
									<?php
										$res = Db::table('app')->order('id desc')->select();
										foreach ($res as $k => $v){$rows = $res[$k];
									?>
									<option value="<?php echo $rows['id']; ?>"><?php echo $rows['name']; ?></option>
									<?php } ?>
								</select>
							</div>
						</div>	
						<div class="form-group">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" name="out" id="out" value="1">
								<label class="custom-control-label" for="out">生成后立即导出</label>
							</div>
						</div>
						<div class="form-group text-center">
							<button class="btn btn-primary" type="submit" id="add_kami_submit">确认添加</button>
						</div>

					</form>
					<?php else:?>
					<div class="text-center" style="margin-top:4rem!important;margin-bottom:6rem!important">
						<img src="../assets/images/no-app.svg" height="120" alt="File not found Image">
						<h4 class="text-uppercase mt-3 mb-3">请先添加分类再添加卡密</h4>
						<button type="button" class="btn btn-dark" data-toggle="modal" data-target="#add_type">添加分类</button>
					</div>
					<?php endif;?>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
	<div id="add_type" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="type_title">添加分类</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				</div>
				<div class="modal-body">
					
					<form class="pl-3 pr-3" method="post">
						<input class="form-control" type="number" id="type_id" value="" placeholder="分类ID" hidden><!--style="display:none" --> 
						<div class="form-group">
							<label class="col-form-label">分类名称</label>
							<input class="form-control" type="text" id="type_name" placeholder="分类名称" required>
						</div>
						<div class="form-group">
							<label>卡密类型</label>
							<select class="form-control" id="type_type" onchange="type_change(this.value)">
								<option value="vip" selected = "selected">会员</option>
								<option value="fen" >积分</option>
							</select>
						</div>
						<div class="form-group">
							<label id="amount_name">&nbsp;会员天数 *</label>
							<div class="input-group">
								<input type="number" id="type_amount" class="form-control" placeholder="会员天数，永久卡9个9" value="" required>
								<div class="input-group-prepend">
									<span class="input-group-text" id="amount_a">天</span>
								</div>
							</div>
						</div>
						<div id="add" class="form-group text-center">
							<button class="btn btn-primary" type="submit" id="add_type_submit">确认添加</button>
						</div>
						<div id="edit" class="form-group text-center" hidden>
							<button class="btn btn-primary" type="submit" id="edit_type_submit">确认编辑</button>
						</div>
					</form>
					
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
	<script>
		$('#add_type_submit').click(function() {
			let t = window.jQuery;
			var type_type = $("#type_type").val();
			var type_amount = $("#type_amount").val();
			var type_name = $("#type_name").val();
			document.getElementById('add_type_submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在添加";
			document.getElementById('add_type_submit').disabled=true;
			
			$.ajax({
				cache: false,
				type: "POST",//请求的方式
				url : "ajax.php?act=kami_add_type",//请求的文件名
				data : {type:type_type,amount:type_amount,name:type_name},
				dataType : 'json',
				success : function(data) {
					//console.log(data);
					document.getElementById('add_type_submit').disabled=false;
					document.getElementById('add_type_submit').innerHTML="确认添加";
					if(data.code == 200){
						t.NotificationApp.send("成功",data.msg,"top-center","rgba(0,0,0,0.2)","success")
						window.setTimeout("window.location='"+window.location.href+"'",1000);
					}else{
						t.NotificationApp.send("失败",data.msg,"top-center","rgba(0,0,0,0.2)","error")
					}
				}
			});
			return false;//重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
		});
		
		$('#edit_type_submit').click(function() {
			let t = window.jQuery;
			var type_id = $("#type_id").val();
			var type_type = $("#type_type").val();
			var type_amount = $("#type_amount").val();
			var type_name = $("#type_name").val();
			document.getElementById('edit_type_submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在添加";
			document.getElementById('edit_type_submit').disabled=true;
			
			$.ajax({
				cache: false,
				type: "POST",//请求的方式
				url : "ajax.php?act=kami_edit_type",//请求的文件名
				data : {id:type_id,type:type_type,amount:type_amount,name:type_name},
				dataType : 'json',
				success : function(data) {
					//console.log(data);
					document.getElementById('edit_type_submit').disabled=false;
					document.getElementById('edit_type_submit').innerHTML="确认添加";
					if(data.code == 200){
						t.NotificationApp.send("成功",data.msg,"top-center","rgba(0,0,0,0.2)","success")
						window.setTimeout("window.location='"+window.location.href+"'",1000);
					}else{
						t.NotificationApp.send("失败",data.msg,"top-center","rgba(0,0,0,0.2)","error")
					}
				}
			});
			return false;//重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
		});
	
		$('#add_kami_submit').click(function() {
			let t = window.jQuery;
			var out = document.getElementById("out").checked;
			if(out){
				out=1;
			}else{
				out=0;
			}
			var k_type = $("#k_type").val();
			var add_num = $("#add_num").val();
			var k_length = $("#k_length").val();
			var add_note = $("#add_note").val();
			var add_appid = $("#add_appid").val();
			document.getElementById('add_kami_submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在生成";
			document.getElementById('add_kami_submit').disabled=true;
			
			$.ajax({
				cache: false,
				type: "POST",//请求的方式
				url : "ajax.php?act=kami_add",//请求的文件名
				data : {
					tid:k_type,
					num:add_num,
					out:out,
					k_length:k_length,
					note:add_note,
					appid:add_appid
				},
				dataType : 'json',
				success : function(data) {
					//console.log(data);
					document.getElementById('add_kami_submit').disabled=false;
					document.getElementById('add_kami_submit').innerHTML="确认添加";
					if(data.code == 200){
						t.NotificationApp.send("成功",data.msg,"top-center","rgba(0,0,0,0.2)","success");
						window.setTimeout("window.location='"+window.location.href+"'",1000);
					}else if(data.code == 202){
						t.NotificationApp.send("成功","正在生成卡密文件","top-center","rgba(0,0,0,0.2)","success");
						download('KM_'+ data.msg.type + '_' + data.msg.num + '_' + data.msg.amount + '_' + add_appid,data.msg.kami);
						window.setTimeout("window.location='"+window.location.href+"'",1000);
					}else{
						t.NotificationApp.send("失败",data.msg,"top-center","rgba(0,0,0,0.2)","error");
					}
				}
			});
			return false;//重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
		});
		
		function modal_cut(type,id,name,t,s) {
			if(type=='add'){
				document.getElementById("type_title").innerHTML="编辑分类";
				document.getElementById("add").removeAttribute("hidden");
				document.getElementById("edit").setAttribute("hidden",true);
				$("#type_name").val('');
				$("#type_amount").val('');
				
			}else{
				document.getElementById("type_title").innerHTML="编辑分类";
				document.getElementById("edit").removeAttribute("hidden");
				document.getElementById("add").setAttribute("hidden",true);
				type_change(t)
				$("#type_id").val(id);
				$("#type_name").val(name);
				$("#type_type").val(t);
				$("#type_amount").val(s);
			}
		}
		
		function type_change(i) {
			if(i=='vip'){
				document.getElementById('amount_name').innerHTML="&nbsp;会员天数 *";
				document.getElementById('type_amount').setAttribute("placeholder","会员天数，永久卡9个9");
				document.getElementById('amount_a').innerHTML="天";
			}else{
				document.getElementById('amount_name').innerHTML="&nbsp;积分数 *";
				document.getElementById('type_amount').setAttribute("placeholder","积分数");
				document.getElementById('amount_a').innerHTML="积分";
			}
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
			document.getElementById('delsubmit').innerHTML="<div class=\"spinner-border spinner-border-sm mr-1\" style=\"margin-bottom:2px!important\" role=\"status\"></div>删除中";
			document.getElementById("delsubmit").className = "text-title";
			$("#delsubmit").attr("disabled",true).css("pointer-events","none"); 
			
			console.log(id_array);
			$.ajax({
				cache: false,
				type: "POST",//请求的方式
				url : "ajax.php?act=kami_del_type",//请求的文件名
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
		
		function download(filename, text) {
			var pom = document.createElement('a');
			pom.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(text));
			pom.setAttribute('download', filename);
			if (document.createEvent) {
				var event = document.createEvent('MouseEvents');
				event.initEvent('click', true, true);
				pom.dispatchEvent(event);
			} else {
				pom.click();
			}
		}
	</script>