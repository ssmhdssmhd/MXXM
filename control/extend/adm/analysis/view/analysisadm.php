<?php
/*
Sort:4
Hidden:false
Name:解析设置
Url:analysis_analysisadm
Version:1.0
*/
if(!isset($islogin))header("Location: /");//非法访问
if(Db::table('analysis')->exist()){//判断数据表是否存在
	$nums=Db::table('analysis')->count();//获取用户总数
    $page=isset($_GET['page']) ? intval($_GET['page']) : 1;
    $url="./?analysis_analysisadm&page=";
    $bnums=($page-1)*$ENUMS;
}else{
$sql = "CREATE TABLE `{$DP}analysis` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '标识名称',
  `keyword` varchar(255) NOT NULL COMMENT '线路',
  `url` varchar(255) DEFAULT '' COMMENT '接口id',
  `header` varchar(10000) DEFAULT '' COMMENT 'Header',
  `Client` int(1) DEFAULT '0' COMMENT 'ClientID',
  `state` enum('0','1') DEFAULT '0' COMMENT '状态',
  `Core` enum('99','4','3','2','1','0') DEFAULT '99',
  `Ad_block` enum('1','0') DEFAULT '0',
  `position` enum('6','5','4','3','2','1','0') DEFAULT '0',
  `Safe` enum('1','0') DEFAULT '0',
  `Ewmsize` enum('350','300','250','200','150','100') DEFAULT '250',
  `Ewm_Width_Height` varchar(255) NOT NULL DEFAULT '260|85',
  `Moviesize` int(11) DEFAULT '30',
  `Tvplaysize` int(11) DEFAULT '30',
  `headposition` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `name` (`name`),
  KEY `keyword` (`keyword`),
  KEY `url` (`url`),
  KEY `Client` (`Client`),
  KEY `state` (`state`),
  KEY `header` (`header`(333))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;";
	$res = Db::establish($sql);
	if($res){
		echo "<script>location.href='./?analysis_analysisadm';</script>";
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
							<button type="button" class="btn btn-danger mb-2 mr-2" data-toggle="modal" data-target="#add"><i class="mdi mdi-cube-outline mr-1"></i>添加解析</button>                           
						</div>
						<div class="col-lg-4">
							<div class="text-lg-right">
								<form action="" method="post">
									<div class="input-group">
										<input type="text" class="form-control" name="so" placeholder="标识名称、线路" value='<?php echo $so; ?>'>
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
                                    <th><center><span class="badge badge-light-lighten">ClientID</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">标识名称</span></center></th>
									<th><center><span class="badge badge-light-lighten">线路</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">解析接口</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">PlayerHeader</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">状态</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">内核</span></center></th>
                                    <th><center><span class="badge badge-light-lighten">广告遮挡</span></center></th>
                                    <th style="width: 75px;"><center><span class="badge badge-light-lighten">管理</span></center></th>
                                </tr>
                            </thead>
                            <tbody>
								<?php
									$app = Db::table('analysis','as A')->field('A.id,A.name,A.keyword,A.url,A.header,A.state,A.Client,A.Core,A.Ad_block');
									if($so){
										$app = $app->where('A.keyword','like',"%{$so}%")->whereOr('A.name','like',"%{$so}%")->order('id desc');
									}else{
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
										    <span class="badge badge-success">解析编号:<?php echo $rows['Client']; ?></span>
										</center>
                                    </td>
                                    
                                    <td>
                                        <center>
    										<span class="badge badge-primary">
    											<?php echo $rows['name']; ?>
    										</span>
										</center>
                                    </td>
									<td>
										<center>
											<?php echo $rows['keyword']; ?>
										</center>
                                    </td>
                                    
                                    <td>
									<?php
									   ($rows['url']==""||$rows['url']=="0") ? $rows1['name']="无" : "" ;
									    $res1 = Db::table('analysis_connect')->where(['id'=>$rows['url']])->select();
									    foreach ($res1 as $k => $v){$rows1 = $res1[$k];}
									?>
									 	<center>
									 	    <span class="badge badge-primary"></i><?php echo ($rows1['name'] == ""||$rows1['name'] == "0") ? "无" : $rows1['name']; ?></span>
								 	    </center>
                                    </td>
                                    
									<td>
										<center >
											<?php if($rows['header'] ==''):?><span class="badge badge-success">未填写<?php else: ?> <span class="badge badge-danger">已填写<?php endif; ?>
										</center>
                                    </td>
                                    
                                    <td>
										<center>
    										<?php if($rows['state'] == 0):?><a href="javascript:void(0);" onclick="edit_state(<?php echo $rows['id']; ?>,'<?php echo $rows['state'];?>')"><span id="state_<?php echo $rows['id']; ?>" class="badge badge-success">启用
    										<?php else:?><a href="javascript:void(0);" onclick="edit_state(<?php echo $rows['id']; ?>,'<?php echo $rows['state'];?>')"><span id="state_<?php echo $rows['id']; ?>" class="badge badge-danger">停用
    										<?php endif; ?></span></a>
										</center>
										
									<td>
										<center>
                                            <?php if($rows['Core'] == 0):?>
                                                    <span class="badge badge-warning">自动内核
                                                <?php elseif($rows['Core']== 1): ?>
                                                    <span class="badge badge-danger">系统内核
                                                <?php elseif($rows['Core']== 2): ?>
                                                    <span class="badge badge-success">IJK内核
                                                <?php elseif($rows['Core']== 3): ?>
                                                    <span class="badge badge-dark">EXO内核
												<?php elseif($rows['Core']== 4): ?>
                                                    <span class="badge badge-info">阿里内核
                                                <?php else: ?><span class="badge badge-primary">依据用户<?php endif; ?>
                                        </center>
										
                                    </td>
                                    
                                    <td>
										<center>
                                                <?php if($rows['Ad_block']== 1): ?>
                                                    <span class="badge badge-success">启用
                                                <?php else: ?><span class="badge badge-danger">停用<?php endif; ?>
                                        </center>
										
                                    </td>
                                    
                                    </td>
                                    
                                    <td>
                                        <center><a href="./?analysis_analysisedit&id=<?php echo $rows['id']; ?>" class="action-icon"> <i class="mdi mdi-border-color"></i></a></center>
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
                </div>
            </div>
        </div>
    </div>

	<div id="add" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="add">添加解析</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				</div>
				<div class="modal-body">
					<form class="pl-3 pr-3" method="post">
						<div class="form-group">
							<label class="col-form-label">标识名称</label>
							<input class="form-control" type="text" id="add_name" placeholder="XX线路" required>
						</div>
						<div class="form-group">
							<label>线路</label>
							<input class="form-control" type="text" id="add_keyword" placeholder="bdm3u8" value="" required>
						</div>
						
						<div class="form-group">
							<label>播放器核心(定制)</label>
							<select class="form-control" id="Core">
							    <option value="99" selected>依据用户</option>
							    <option value="0" >自动内核</option>
							    <option value="1" >系统内核</option>
							    <option value="2" >IJK  内核</option>
							    <option value="3" >EXO 内核</option>
								<option value="4" >阿里内核</option>
						    </select>
						</div>
						
			            <div class="form-group">
							<label>广告遮挡(定制)</label>
							<select class="form-control" id="Ad_block">
							    <option value="0" selected>关闭</option>
							    <option value="1" >开启</option>
							</select>
						</div>
						
						<div class="form-group">
							<label>客户端类型</label>
							<select class="form-control" id="Client_type" onchange="type_package(this.value)">
							    <option value="one_way" selected>单解</option>
							    <option value="two_way" >双解</option>
						    </select>
						</div>
						
						<!--单解-->
						<div id="one_way" class="form-row">
				            <div class="form-group col-md-12">
        						<div class="form-group">
        							<label>选择接口</label>
        							<select class="form-control" id="one_way_connect">
        								<option value="">暂不选择</option>
        								<?php
        									$res = Db::table('analysis_connect')->order('id desc')->select();
        									foreach ($res as $k => $v){$rows = $res[$k];
        								?>
        								<option value="<?php echo $rows['id']; ?>"><?php echo $rows['name']; ?></option>
        								<?php } ?>
        							</select>
        						</div>
    						</div>
						</div>
						
						<!--双解-->
						<div id="two_way" class="form-row" hidden>
				            <div class="form-group col-md-12">
				                
				                <div class="form-group">
    							<label>主接口</label>
    							<select class="form-control" id="two_way_main_connect">
    								<option value="">暂不选择</option>
    								<?php
    									$res = Db::table('analysis_connect')->order('id desc')->select();
    									foreach ($res as $k => $v){$rows = $res[$k];
    								?>
    								<option value="<?php echo $rows['id']; ?>"><?php echo $rows['name']; ?></option>
    								<?php } ?>
    							</select>
    						</div>
    						
    						<div class="form-group">
    							<label>副接口</label>
    							<select class="form-control" id="two_way_deputy_connect">
    								<option value="">暂不选择</option>
    								<?php
    									$res = Db::table('analysis_connect')->order('id desc')->select();
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
		
	<script>
		$('#add_submit').click(function() {
			let t = window.jQuery;
			var add_name = $("#add_name").val();
			var add_keyword = $("#add_keyword").val();
			var Client_type = $("#Client_type").val();
			var one_way_connect = $("#one_way_connect").val();
			var two_way_main_connect = $("#two_way_main_connect").val();
			var two_way_deputy_connect = $("#two_way_deputy_connect").val();
			var Core = $("#Core").val();
			var Ad_block = $("#Ad_block").val();
			document.getElementById('add_submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在添加";
			document.getElementById('add_submit').disabled=true;
			
			$.ajax({
				cache: false,
				type: "POST",//请求的方式
				url : "ajax.php?act=analysis_addanalysis",//请求的文件名
				data : {
				    name:add_name,
				    add_keyword:add_keyword,
				    Client_type:Client_type,
				    one_way_connect:one_way_connect,
				    two_way_main_connect:two_way_main_connect,
				    two_way_deputy_connect:two_way_deputy_connect,
				    Core:Core,
				    Ad_block:Ad_block
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
				url : "ajax.php?act=analysis_delanalysis",//请求的文件名
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
				url : "ajax.php?act=analysis_state",//请求的文件名
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
		
		function type_package(i) {
		    if(i=='one_way'){
				document.getElementById("one_way").removeAttribute("hidden");
			}else{
				document.getElementById("one_way").setAttribute("hidden",true);
			}
		    if(i=='two_way'){
				document.getElementById("two_way").removeAttribute("hidden");
			}else{
				document.getElementById("two_way").setAttribute("hidden",true);
			}
		}
	</script>