<?php
/*
Sort:1
Hidden:false
Name:分类管理
Url:live_channeltypeadm
Version:1.0
*/
if(!isset($islogin))header("Location: /");//非法访问

if(Db::table('live_channeltype')->exist()){//判断数据表是否存在
	$nums=Db::table('live_channeltype')->count();//获取用户总数
    $page=isset($_GET['page']) ? intval($_GET['page']) : 1;
    $url="./?live_channeltypeadm&page=";
    $bnums=($page-1)*$ENUMS;
}else{
 $sql = "CREATE TABLE {$DP}live_channeltype (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '分类名字',
  `state` enum('1','0') NOT NULL DEFAULT '0',
  `appid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;";
    $res = Db::establish($sql);
    if($res){
	    echo "<script>location.href='./?live_channeltypeadm';</script>";
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
							<button type="button" class="btn btn-danger mb-2 mr-2" data-toggle="modal" data-target="#add"><i class="mdi mdi-cube-outline mr-1"></i>添加分类</button>                           
						</div>
						<div class="col-lg-4">
							<div class="text-lg-right">
								<form action="" method="post">
									<div class="input-group">
										<input type="text" class="form-control" name="so" placeholder="分类名称" value='<?php echo $so; ?>'>
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
                                                <center>
                                                    <span class="badge badge-light-lighten">ID</span>
                                                </center>
                                            </th>
                                            <th>
                                                <center>
                                                    <span class="badge badge-light-lighten">分类名称</span>
                                                </center>
                                            </th>
                                            <th>
                                                <center>
                                                    <span class="badge badge-light-lighten">状态</span>
                                                </center>
                                            </th>
                                            <th style="width: 75px;">
                                                <center>
                                                    <span class="badge badge-light-lighten">管理</span>
                                                </center>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
        								<?php
        									$app = Db::table('live_channeltype','as A')->field('A.id,A.name,A.state');
        									if($so){
        										$app = $app->where('A.name','like',"%{$so}%")->order('id desc');
        									}else{
        										$app = $app->order('id desc')->limit($bnums,$ENUMS);
        									}
        									$res = $app->select();//false
        									//die($sql);
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
        										    <span class="badge badge-primary"><?php echo $rows['name']; ?></span>
    										    </center>
                                            </td>
        									
                                            <td>
        										<center>
                                                        <?php if($rows['Ad_block']== 0): ?>
                                                            <span class="badge badge-success">启用
                                                        <?php else: ?><span class="badge badge-danger">停用<?php endif; ?>
                                                </center>
        										
                                            </td>
                                            
                                            <td>
                                                <center>
                                                    <a href="?live_channeltypeedit&id=<?php echo $rows['id']; ?>" class="action-icon"> <i class="mdi mdi-border-color"></i></a>
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
                </div> 
            </div>
        </div>
    </div>

    <div id="add" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    	<div class="modal-dialog">
    		<div class="modal-content">
    			<div class="modal-header">
    				<h4 class="modal-title" id="add">添加分类</h4>
    				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    			</div>
    			<div class="modal-body">
    				<form class="pl-3 pr-3" method="post">
    					<div class="form-group">
    						<label class="col-form-label">分类名称</label>
    						<input class="form-control" type="text" id="add_name" placeholder="央视频道" required>
    					</div>
						
    					<div class="form-group text-center">
    						<button class="btn btn-primary" type="submit" name="add_submit" id="add_submit" value="确定">确认添加</button>
    					</div>
    				</form>
    			</div>
    		</div><!-- /.modal-content -->
    	</div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    
    
    
    
    <script>
		$('#add_submit').click(function() {
			let t = window.jQuery;
			var add_name = $("#add_name").val();
			document.getElementById('add_submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在添加";
			document.getElementById('add_submit').disabled=true;
			
			$.ajax({
				cache: false,
				type: "POST",//请求的方式
				url : "ajax.php?act=live_add",//请求的文件名
				data : {
				    name:add_name
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
				url : "ajax.php?act=live_del",//请求的文件名
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

