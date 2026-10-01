<?php
/*
Sort:3
Hidden:true
Name:解析编辑
Url:live_liveedit
Version:1.0
*/
if(!isset($islogin))header("Location: /");//非法访问
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;
$res = Db::table('live')->where(['id'=>$id])->find();
?>						

    <div class="row">
		<div class="col-12">
			<div class="page-title-box">
				<div class="page-title-right">
					<ol class="breadcrumb m-0">
						<li class="breadcrumb-item"><a href="javascript: void(0);">首页</a></li>
						<li class="breadcrumb-item"><a href="./?live_liveadm">解析设置</a></li>
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
                            <div class="form-group col-md-6">
                                <label class="col-form-label">ID</label>
								<div class="input-group">
									<input type="text" class="form-control" id="appid" value="<?php echo $id;?>" disabled>
								</div>
                            </div>
                            
                            
							<div class="form-group col-md-2">
                                <label class="col-form-label">标识名称</label>
                                <input type="text" class="form-control" id="name" placeholder="百度云" value="<?php echo $res['name'];?>" required>
                            </div>
                            
                            
                            <div class="form-group col-md-2">
                                <label class="col-form-label">所属分类</label>
                                <select class="form-control" id="url">
                                <?php
    								$res1 = Db::table('live_channeltype')->order('id desc')->select();
    								foreach ($res1 as $k => $v){$rows1 = $res1[$k];
    							?>
                                <option value="<?php echo $rows1['id']; ?>"<?php echo ($rows1['id'])==$res['url'] ? "selected" : '';?>><?php echo $rows1['name']; ?></option>
                               <?php } ?>
								</select>
                            </div>
                            
                            
							

                            
                            
                            
							
							
                            <div class="form-group col-md-12">
								<label for="example-textarea">直播源支持udp,rsp,rtsp,rtmp,http,https</label>
								<textarea class="form-control" id="data" rows="8" placeholder='CCTV1,http://www.cctv.com/cctv1.m3u8#http://www.baidu.com/cctv1.m3u8'><?php echo $res['data']; ?></textarea>
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
			var name = $("#name").val();
			var url = $("#url").val();
			var data = $("#data").val();
			if(!ok){
				t.NotificationApp.send("提示","请确认是我操作","top-center","rgba(0,0,0,0.2)","warning")
				return false;
			}
			document.getElementById('submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在修改";
			document.getElementById('submit').disabled=true;
			
			$.ajax({
				cache: false,
				type: "POST",//请求的方式
				url : "ajax.php?act=live_liveedit",//请求的文件名
				data : {
					id:<?php echo $id;?>,
					name:name,
					url:url,
					data:data,
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
						window.setTimeout("window.location='./?live_liveadm'",1000);
					}else{
						t.NotificationApp.send("失败",data.msg,"top-center","rgba(0,0,0,0.2)","error")
					}
				}
			});
			return false;//重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
		});
	</script>
