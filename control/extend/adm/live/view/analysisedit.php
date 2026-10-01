<?php
/*
Sort:3
Hidden:true
Name:解析编辑
Url:analysis_analysisedit
Version:1.0
*/
if(!isset($islogin))header("Location: /");//非法访问
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;
$res = Db::table('live_analysis')->where(['id'=>$id])->find();
?>						

    <div class="row">
		<div class="col-12">
			<div class="page-title-box">
				<div class="page-title-right">
					<ol class="breadcrumb m-0">
						<li class="breadcrumb-item"><a href="javascript: void(0);">首页</a></li>
						<li class="breadcrumb-item"><a href="./?live_analysisadm">解析设置</a></li>
						<li class="breadcrumb-item active"><?php echo $title; ?></li>
					</ol>
				</div>
				<h4 class="page-title"><?php echo $title; ?></h4>
			</div> <!-- end page-title-box -->
		</div> <!-- end col-->
	</div>
	
	<div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <form action="" method="post" id="addimg" name="addimg">
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <label class="col-form-label">ID</label>
								<div class="input-group">
									<input type="text" class="form-control" id="appid" value="<?php echo $id;?>" disabled>
								</div>
                            </div>
                            
                            <div class="form-group col-md-1">
                                <label class="col-form-label">状态</label>
								<div class="input-group">
									<select class="form-control" id="state">
									    <option value="0" <?php if($res['state'] == 0) echo 'selected = "selected"'; ?>>启用</option>
									    <option value="1" <?php if($res['state'] == 1) echo 'selected = "selected"'; ?>>停用</option>
								    </select>
								</div>
                            </div>
							<div class="form-group col-md-2">
                                <label class="col-form-label">标识名称</label>
                                <input type="text" class="form-control" id="name" placeholder="XX线路" value="<?php echo $res['name'];?>" required>
                            </div>
                            
                            <div class="form-group col-md-2">
                                <label class="col-form-label">关键字</label>
                                <input type="text" class="form-control" id="keyword" placeholder="B://" value="<?php echo $res['keyword'];?>" required>
                            </div>
                            
                            <div class="form-group col-md-2">
                                <label class="col-form-label">解析接口</label>
                                <select class="form-control" id="url">
                                <option value="">无</option>
                                <?php
    								$res1 = Db::table('analysis_connect')->order('id desc')->select();
    								foreach ($res1 as $k => $v){$rows1 = $res1[$k];
    							?>
                                <option value="<?php echo $rows1['id']; ?>"<?php echo ($rows1['id'])==$res['url'] ? "selected" : '';?>><?php echo $rows1['name']; ?></option>
                               <?php } ?>
								</select>
                            </div>
                            
                            <div class="form-group col-md-2">
                                <label class="col-form-label">播放器核心</label>
								<div class="input-group">
									<select class="form-control" id="Core">
									    <option value="99" <?php if($res['Core'] == 99) echo 'selected = "selected"'; ?>>依据用户</option>
									    <option value="0" <?php if($res['Core'] == 0) echo 'selected = "selected"'; ?>>自动内核</option>
									    <option value="1" <?php if($res['Core'] == 1) echo 'selected = "selected"'; ?>>系统内核</option>
									    <option value="2" <?php if($res['Core'] == 2) echo 'selected = "selected"'; ?>>IJK  内核</option>
									    <option value="3" <?php if($res['Core'] == 3) echo 'selected = "selected"'; ?>>EXO 内核</option>
										<option value="4" <?php if($res['Core'] == 4) echo 'selected = "selected"'; ?>>阿里内核</option>
										<option value="5" <?php if($res['Core'] == 5) echo 'selected = "selected"'; ?>>VLC内核</option>
								    </select>
								</div>
                            </div>
                            
							<div class="form-group col-md-3">
                                <label class="col-form-label">指定内核模式</label>
								<div class="input-group">
									<select class="form-control" id="Safe">
									    <option value="0" <?php if($res['Safe'] == 0) echo 'selected = "selected"'; ?>>安全模式</option>
									    <option value="1" <?php if($res['Safe'] == 1) echo 'selected = "selected"'; ?>>强制模式</option>
								    </select>
								</div>
                            </div>
							
                            <div class="form-group col-md-12">
								<label for="example-textarea">PlayerHeader</label>
								<textarea class="form-control" id="header" rows="8" placeholder='{
	"User-Agent": " Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36",
	"allowCrossProtocolRedirects": " true",
	"Referer": "http://www.baidu.com/",
	"Origin": "http://www.baidu.com/",
	"Cookie": "user=admin;pwd=123456;",
	"IP": "192.168.1.1"
}'><?php echo $res['header']; ?></textarea>
							</div>
							
							
								
                        </div>
                    </form>
                </div> <!-- end card-body -->
            </div> <!-- end card-->
        </div> <!-- end col -->
    </div>

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <form action="" method="post" id="addimg" name="addimg">
						<div class="form-group">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" id="ok" name="ok" value="y" required>
								<label class="custom-control-label" for="ok">确认是我操作</label>
							</div>
						</div>
						<button type="submit" class="btn btn-block btn-primary" id="submit" value="确认">确认修改</button>
                    </form>
                </div> <!-- end card-body -->
            </div> <!-- end card-->
        </div> <!-- end col -->
    </div>
    
	<script> 
		$("#jx").addClass("active");
		$('#submit').click(function() {
			let t = window.jQuery;
			var ok = document.getElementById("ok").checked;
			var state = $("#state").val();
			var name = $("#name").val();
			var keyword = $("#keyword").val();
			var url = $("#url").val();
			var header = $("#header").val();
			var Core = $("#Core").val();
			var Safe = $("#Safe").val();
			if(!ok){
				t.NotificationApp.send("提示","请确认是我操作","top-center","rgba(0,0,0,0.2)","warning")
				return false;
			}
			document.getElementById('submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在修改";
			document.getElementById('submit').disabled=true;
			
			$.ajax({
				cache: false,
				type: "POST",//请求的方式
				url : "ajax.php?act=live_analysis_analysisedit",//请求的文件名
				data : {
					id:<?php echo $id;?>,
					state:state,
					name:name,
					keyword:keyword,
					url:url,
					header:header,
					Core:Core,
					Safe:Safe
				},
				dataType : 'json',
				success : function(data) {
					console.log(data);
					document.getElementById('submit').disabled=false;
					document.getElementById('submit').innerHTML="确认修改";
					if(data.code == 200){
						t.NotificationApp.send("成功",data.msg,"top-center","rgba(0,0,0,0.2)","success")
						document.getElementById("ok").checked=false;
						//window.setTimeout("window.location='"+window.location.href+"'",1000);
						window.setTimeout("window.location='./?live_analysisadm'",1000);
					}else{
						t.NotificationApp.send("失败",data.msg,"top-center","rgba(0,0,0,0.2)","error")
					}
				}
			});
			return false;//重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
		});
	</script>
