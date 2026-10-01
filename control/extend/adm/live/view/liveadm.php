<?php
/*
Sort:2
Hidden:false
Name:直播管理
Url:live_liveadm
Right:live
Version:1.0
*/
if(!isset($islogin))header("Location: /");//非法访问
if(Db::table('live')->exist()){//判断数据表是否存在
    $appid = isset($_GET['app']) ? intval($_GET['app']) : 0;
    $see = isset($_GET['see']) ? intval($_GET['see']) : 0;
    $page=isset($_GET['page']) ? intval($_GET['page']) : 1;
    if($see > 0 && $appid > 0){
    	if($see == 1){
    		$nums=Db::table('live')->where('url',$appid)->where('empty','1')->count();
    	}elseif ($see == 2) {
    	    $nums=Db::table('live')->where('url',$appid)->where('empty','0')->count();
    	}
    	$url="./?live_liveadm&see={$see}&app={$appid}&page=";
    }elseif($see > 0 && $appid <= 0){
    	if($see == 1){
    		$nums=Db::table('live')->where('empty','1')->count();
    	}elseif ($see == 2) {
    	    $nums=Db::table('live')->where('empty','0')->count();
    	}
    	$url="./?live_liveadm&see={$see}&page=";
    }elseif($see <= 0 && $appid > 0){
    	$nums=Db::table('live')->where('url',$appid)->count();
    	$url="./?live_liveadm&app={$appid}&page=";
    }else{
    	$nums=Db::table('live')->count(); 
    	$url="./?live_liveadm&page=";
    }

    $bnums=($page-1)*$ENUMS;
}else{
$sql = "CREATE TABLE `{$DP}live` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '显示名称',
  `url` int(10) NOT NULL DEFAULT '1' COMMENT '接口id',
  `data` text,
  `appid` int(11) DEFAULT '0',
  `empty` enum('1','0') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `name` (`name`),
  KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;";
	$res = Db::establish($sql);
	if($res){
		echo "<script>location.href='./?live_liveadm';</script>";
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
							<form class="form-inline">
							    <button type="button" class="btn btn-danger mb-2 mr-2" data-toggle="modal" data-target="#add"><i class="mdi mdi-cube-outline mr-1"></i>添加直播</button>
							    <button type="button" class="btn btn-danger mb-2 mr-2" data-toggle="modal" data-target="#batch_Import"><i class="mdi mdi-account-multiple-plus mr-1"></i>批量导入</button>
								<select class="form-control" name="appids" onchange="get_screen(this.value,<?php echo $see;?>)">
									<option value="0">全部</option>
									<?php
										$res = Db::table('live_channeltype')->order('id desc')->select();
										foreach ($res as $k => $v){$rows = $res[$k];
									?>
									<option value="<?php echo $rows['id']; ?>" <?php if($appid == $rows['id']) echo 'selected = "selected"'; ?>><?php echo $rows['name']; ?></option>
									<?php } ?>
								</select>
								<label for="status-select" class="mr-2"></label>
								<select class="form-control" name="see" id="see" onchange="get_screen(<?php echo $appid;?>,this.value)">
									<option value="0" <?php if($see == 0) echo 'selected = "selected"'; ?>>全部</option>
									<option value="1" <?php if($see == 1) echo 'selected = "selected"'; ?>>已填写</option>
									<option value="2" <?php if($see == 2) echo 'selected = "selected"'; ?>>未填写</option>
								</select>
							</form>
							
						</div>
						<div class="col-lg-4">
							<div class="text-lg-right">
								<form action="" method="post">
									<div class="input-group">
										<input type="text" class="form-control" name="so" placeholder="显示名称、线路" value='<?php echo $so; ?>'>
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
                                    <th style="width: 20px;"><center><span class="badge badge-light-lighten">ID</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">显示名称</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">所属分类</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">源数据</span></center></th>
                                    <th style="width: 75px;"><center><span class="badge badge-light-lighten">管理</span></center></th>
                                </tr>
                            </thead>
                            <tbody>
								<?php
									$app = Db::table('live','as A')->field('A.id,A.name,A.url,A.data,A.empty');
									if($so){
										$app = $app->where('A.name','like',"%{$so}%")->order('id desc');
									}else{
										if($see > 0 && $appid > 0){
											if($see == 1){
											    $app = $app->where('A.url',$appid)->where('A.empty','1');
											}elseif ($see == 2) {
											    $app = $app->where('A.url',$appid)->where('A.empty','0');
											}
										}elseif($see > 0 && $appid <= 0){
											if($see == 1){
												$app = $app->where('A.empty','1');
											}elseif ($see == 2) {
											    $app = $app->where('A.empty','0');
											}
										}elseif($see <= 0 && $appid > 0){
											$app = $app->where('A.url',$appid);
										}
										
										$app = $app->order('id desc')->limit($bnums,$ENUMS);
									}
									
									$res = $app->select();//false
									
									
									
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
    										<span class="badge badge-primary">
    											<?php echo $rows['name']; ?>
    										</span>
										</center>
                                    </td>
                                    
                                    <td>
    									<?php
    									   ($rows['url']==""||$rows['url']=="0") ? $rows1['name']="无" : "" ;
    									    $res1 = Db::table('live_channeltype')->where(['id'=>$rows['url']])->select();
    									    foreach ($res1 as $k => $v){$rows1 = $res1[$k];}
    									?>
									 	<center>
									 	    <?php
									 	        echo "<a href=\"javascript:void(0);\" onclick=\"class_id(".$rows['id'].",'".$rows1['name']."')\"> <span class=\"badge badge-primary\" data-toggle=\"modal\" data-target=\"#edit\"></i> ".$rows1['name']."</span></a>";
    										?>
    										
								 	    </center>
                                    </td>
                                    
                                    <td>
										<center >
											<?php if($rows['data'] ==''):?><span class="badge badge-danger">未填写<?php else: ?> <span class="badge badge-success">已填写<?php endif; ?>
										</center>
                                    </td>
                                    
                                    
                                    <td>
                                        <center><a href="./?live_liveedit&id=<?php echo $rows['id']; ?>" class="action-icon"> <i class="mdi mdi-border-color"></i></a></center>
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
									<a href="javascript:void(0);" onclick="modify_class()" id="modify_class">修改分类</a>
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

	<div id="add" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="add">添加直播</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				</div>
				<div class="modal-body">
					<form class="pl-3 pr-3" method="post">
					    
						<div class="form-group">
							<label class="col-form-label">显示名称</label>
							<input class="form-control" type="text" id="add_name" placeholder="CCTV1" required>
						</div>
						
						<div id="one_way" class="form-row">
				            <div class="form-group col-md-12">
        						<div class="form-group">
        							<label>选择分类</label>
        							<select class="form-control" id="one_way_connect">
        								<?php
        									$res = Db::table('live_channeltype')->order('id asc')->select();
        									foreach ($res as $k => $v){$rows = $res[$k];
        								?>
        								<option value="<?php echo $rows['id']; ?>"><?php echo $rows['name']; ?></option>
        								<?php } ?>
        							</select>
        						</div>
    						</div>
						</div>
						
						
						<div class="form-group text-center">
							<button class="btn btn-primary" type="submit" id="add_submit" value="确定">确认添加</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<div id="batch_Import" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="add">批量导入</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				</div>
				<div class="modal-body">
				    <form class="pl-3 pr-3" method="post">
						
						<div class="form-group">
							<label>账户数据 *</label>
							<textarea class="form-control form-control-light mb-2" placeholder="格式:&#10;频道名,源地址&#10;例如:&#10;cctv1,http://xxx.com/cctv1.m3u8&#10;或&#10;cctv1,http://xxx.com/1.m3u8#http://nnn.com/1.m3u8&#10;禁止 空格/空行" id="data" name="data" rows="15" style="overflow-wrap: anywhere;"></textarea>
						</div>
                        
                        <div class="form-group">
							<label>归属分类 *</label>
							<select class="form-control" name="type" id="type">
								<?php
									$res = Db::table('live_channeltype')->order('id asc')->select();
									foreach ($res as $k => $v){$rows = $res[$k];
								?>
								<option value="<?php echo $rows['id']; ?>"><?php echo $rows['name']; ?></option>
								<?php } ?>
							</select>
						</div>
                        
                        <div class="form-group">
							<label>绑定应用 *</label>
							<select class="form-control" name="appid" id="appid" disabled>
							    <option value="0">全部应用</option>
								<?php
									$res = Db::table('app')->order('id desc')->select();
									foreach ($res as $k => $v){$rows = $res[$k];
								?>
								<option value="<?php echo $rows['id']; ?>"><?php echo $rows['name']; ?></option>
								<?php } ?>
							</select>
						</div>
						
						<div class="form-group text-center">
							<button class="btn btn-primary" type="submit" name="batch_Import_submit" id="batch_Import_submit" value="确定">确认导入</button>
						</div>

					</form>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div>
	
	<div id="class" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true" >
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="modal_title">修改分类</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				</div>
				<div class="modal-body">
					<form class="pl-3 pr-3">
						<div class="form-group">
							<label>选择分类</label>
							<select class="form-control" id="types">
								<?php
									$res = Db::table('live_channeltype')->order('id asc')->select();
									foreach ($res as $k => $v){$rows = $res[$k];
								?>
								<option value="<?php echo $rows['id']; ?>"><?php echo $rows['name']; ?></option>
								<?php } ?>
							</select>
						</div>
        						
						<div class="form-group text-center mt-2">
							<button class="btn-block btn btn-primary" type="submit" id="class_submit" >确认修改</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<div id="edit" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-body">
					<div class="text-center mt-2 mb-4"></div>
					<form class="pl-3 pr-3" action="" name="note_log" id="note_log" method="post">
						<div class="form-group">
							<label>选择分类</label>
							<input class="form-control" type="text" id="id" value="" style="display:none"> 
							<select class="form-control" id="names">
								<?php
									$res = Db::table('live_channeltype')->order('id asc')->select();
									foreach ($res as $k => $v){$rows = $res[$k];
								?>
								<option value="<?php echo $rows['id']; ?>"><?php echo $rows['name']; ?></option>
								<?php } ?>
							</select>
								        
						</div>
						
						<div class="form-group text-center">
							<button class="btn btn-primary" type="submit" name="submit_note" id="types_submit" value="确认">确认更换</button>
						</div>
					</form>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div>
	
	<script>
	    
	    $('#batch_Import_submit').click(function() {
			let t = window.jQuery;
			var data = $("textarea[name='data']").val();
			var appid = $("select[name='appid']").val();
			var type = $("select[name='type']").val();
			
			document.getElementById('batch_Import_submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在导入";
			document.getElementById('batch_Import_submit').disabled=true;
			
			$.ajax({
				cache: false,
				type: "POST",//请求的方式
				url : "ajax.php?act=live_batchImport",//请求的文件名
				data : {data:data,appid:appid,type:type},
				dataType : 'json',
				success : function(data) {
					console.log(data);
					document.getElementById('batch_Import_submit').disabled=false;
					document.getElementById('batch_Import_submit').innerHTML="确认导入";
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
		
		$('#add_submit').click(function() {
			let t = window.jQuery;
			var add_name = $("#add_name").val();
			var one_way_connect = $("#one_way_connect").val();
			document.getElementById('add_submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在添加";
			document.getElementById('add_submit').disabled=true;
			
			$.ajax({
				cache: false,
				type: "POST",//请求的方式
				url : "ajax.php?act=live_addlive",//请求的文件名
				data : {
				    name:add_name,
				    one_way_connect:one_way_connect,
				},
				dataType : 'json',
				success : function(data) {
					console.log(data);
					document.getElementById('add_submit').disabled=false;
					document.getElementById('add_submit').innerHTML="确认添加";
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
				url : "ajax.php?act=live_dellive",//请求的文件名
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
		
		function edit_state(id,state) {
			let t = window.jQuery;
			var badge = document.getElementById("state_"+id).className;
			if(badge == 'badge badge-danger'){
				state = 0
				document.getElementById("state_"+id).className = "badge badge-success";
				document.getElementById("state_"+id).innerHTML="启用";
			}else{
				state = 1
				document.getElementById("state_"+id).className = "badge badge-danger";
				document.getElementById("state_"+id).innerHTML="停用";
			}
			//console.log(badge);
			
			$.ajax({
				cache: false,
				type: "POST",//请求的方式
				url : "ajax.php?act=live_state",//请求的文件名
				data : {id:id,state:state},
				dataType : 'json',
				success : function(data) {
					if(data.code == 200){
						t.NotificationApp.send("成功",data.msg,"top-center","rgba(0,0,0,0.2)","success");
					}else{
						t.NotificationApp.send("失败",data.msg,"top-center","rgba(0,0,0,0.2)","error");
					}
				}
			});
			return false;//重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
		}
		
		function get_screen(appids,see){
			var url = '';
			if(appids > 0){
				url = '&app=' + appids;
			}
			if(see > 0){
				if(url == ''){
					url = '&see=' + see;
				}else{
					url = url + '&see=' + see;
				}
			}
			location.href='./?live_liveadm' + url;
		}
		
		function modify_class(){
			$("#class").modal("show");
			
		}
		
		$('#class_submit').click(function() {
		    var id_array=new Array();
            $("input[name='ids[]']:checked").each(function(){ 
            id_array.push($(this).val());//向数组中添加元素
			}); //获取界面复选框的所有值
            let t = window.jQuery;
            var types = $("#types").val();
            if(id_array.length<=0){
				t.NotificationApp.send("提示","请选择要修改的名称","top-center","rgba(0,0,0,0.2)","warning")
				return false;
			}
            document.getElementById('class_submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在修改";
            document.getElementById('class_submit').disabled=true;
            $.ajax({
	            cache: false,
	            type: "POST",//请求的方式
	            url : 'ajax.php?act=live_modifyclass',//请求的文件名
	            data : {id:id_array,
	                    types:types
	                },
	            dataType : 'json',
	            success : function(data) {
				    console.log(data);
				    if(data.code == 200){
					    t.NotificationApp.send("成功",data.msg,"top-center","rgba(0,0,0,0.2)","success");
					    window.setTimeout("window.location='"+window.location.href+"'",1000);
				    }else{
					    t.NotificationApp.send("失败",data.msg,"top-center","rgba(0,0,0,0.2)","error");
					    window.setTimeout("window.location='"+window.location.href+"'",1000);
				    }
			    }
            });
            return false;//重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
        });
        
        
        function class_id(i,s) {
			var id = document.getElementById("id");
			var name = document.getElementById("name");
			id.value= i;
			name.value= s;
		}
		
		$('#types_submit').click(function() {
			let t = window.jQuery;
			var names = $("#names").val();
			var id = $("#id").val();
			document.getElementById('types_submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在修改";
			document.getElementById('types_submit').disabled=true;
			
			$.ajax({
				cache: false,
				type: "POST",//请求的方式
				url : "ajax.php?act=live_classtype",//请求的文件名
				data : {
					id:id,
					names:names
				},
				dataType : 'json',
				success : function(data) {
					console.log(data);
					document.getElementById('types_submit').disabled=false;
					document.getElementById('types_submit').innerHTML="确认更换";
					if(data.code == 200){
						t.NotificationApp.send("成功",data.msg,"top-center","rgba(0,0,0,0.2)","success");
						window.setTimeout("window.location='"+window.location.href+"'",1000);
					}else{
						t.NotificationApp.send("失败",data.msg,"top-center","rgba(0,0,0,0.2)","error");
					}
				}
			});
			return false;//重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
		});
	</script>