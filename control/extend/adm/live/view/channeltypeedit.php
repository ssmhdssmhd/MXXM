<?php
/*
Sort:2
Hidden:true
Name:接口编辑
Url:live_channeltypeedit
Version:1.0
*/
if(!isset($islogin))header("Location: /");//非法访问
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;
$res = Db::table('live_channeltype')->where(['id'=>$id])->find();
?>						
	<div class="row">
		<div class="col-12">
			<div class="page-title-box">
				<div class="page-title-right">
					<ol class="breadcrumb m-0">
						<li class="breadcrumb-item"><a href="javascript: void(0);">首页</a></li>
						<li class="breadcrumb-item"><a href="./?live_channeltypeadm">接口管理</a></li>
						<li class="breadcrumb-item active"><?php echo $title; ?></li>
					</ol>
				</div>
				<h4 class="page-title"><?php echo $title; ?></h4>
			</div> 
		</div>
	</div>
	
	<div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <form action="" method="post" id="addimg" name="addimg">
                        <div class="form-row">
                            <div class="form-group col-md-1">
                                <label class="col-form-label">接口ID</label>
								<div class="input-group">
									<input type="text" class="form-control" id="appid" value="<?php echo $id;?>" disabled>
								</div>
                            </div>
                            
							<div class="form-group col-md-11">
                                <label class="col-form-label">分类名称</label>
                                <input type="text" class="form-control" id="name" placeholder="左岸解析" value="<?php echo $res['name'];?>" required>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
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
						<button type="submit" class="btn btn-block btn-primary" name="submit" id="submit" value="确认">确认修改</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
	<script> 
		$("#jx").addClass("active");
		$('#submit').click(function() {
			let t = window.jQuery;
			var ok = document.getElementById("ok").checked;
			var name = $("#name").val();
			if(!ok){
				t.NotificationApp.send("提示","请确认是我操作","top-center","rgba(0,0,0,0.2)","warning")
				return false;
			}
			document.getElementById('submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在修改";
			document.getElementById('submit').disabled=true;
			
			$.ajax({
				cache: false,
				type: "POST",//请求的方式
				url : "ajax.php?act=live_edit",//请求的文件名
				data : {
					id:<?php echo $id;?>,
					name:name,
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
						window.setTimeout("window.location='?live_channeltypeadm'",1000);
					}else{
						t.NotificationApp.send("失败",data.msg,"top-center","rgba(0,0,0,0.2)","error")
					}
				}
			});
			return false;//重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
		});
		
		function logon_check_in_c(i) {
			if(i=='0'){
			    $("#Sniffing_header").attr("disabled",true);
			    $("#header").attr("disabled",false);
			    $("#Sniffing_rules").attr("disabled",true);
				$("#Exclude_keywords").attr("disabled",true);
			}else{
			    $("#Sniffing_header").attr("disabled",false);
			    $("#header").attr("disabled",true);
			    $("#Sniffing_rules").attr("disabled",false);
				$("#Exclude_keywords").attr("disabled",false);
			}
		}
	</script>
