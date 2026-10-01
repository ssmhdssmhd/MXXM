<?php
/*
Sort:2
Hidden:true
Name:接口编辑
Url:analysis_connectedit
Version:1.0
*/
if(!isset($islogin))header("Location: /");//非法访问
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;
$res = Db::table('analysis_connect')->where(['id'=>$id])->find();
?>						
	<div class="row">
		<div class="col-12">
			<div class="page-title-box">
				<div class="page-title-right">
					<ol class="breadcrumb m-0">
						<li class="breadcrumb-item"><a href="javascript: void(0);">首页</a></li>
						<li class="breadcrumb-item"><a href="./?analysis_connectadm">接口管理</a></li>
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
                            
							<div class="form-group col-md-1">
                                <label class="col-form-label">接口名称</label>
                                <input type="text" class="form-control" id="name" placeholder="左岸解析" value="<?php echo $res['name'];?>" required>
                            </div>
                            
                            <div class="form-group col-md-1">
							    <label for="f_user" class="col-form-label">接口类型</label>
							        <select class="form-control"  id="type" onchange="logon_check_in_c(this.value)">
								        <option value="0" <?php if($res['type'] == '0') echo 'selected = "selected"'; ?>>解析</option>
								        <option value="1" <?php if($res['type'] == '1') echo 'selected = "selected"'; ?>>嗅探</option>
							        </select>
						    </div>
						    
                            <div class="form-group col-md-1">
                                <label for="f_user" class="col-form-label">解析超时(0全局)</label>
                                <div class="input-group">
                                    <input type="number" class="form-control" id="Timeout" placeholder="25" value="<?php echo $res['Timeout']; ?>" required>
                                    <div class="input-group-prepend"><span class="input-group-text" id="basic-addon1">秒</span></div>
							    </div>
                            </div>
                            
                            <div class="form-group col-md-8">
                                <label class="col-form-label">接口地址</label>
                                <input type="text" class="form-control" id="url" placeholder="http(s)://api.xxx.com/?key=xxx&url=" value="<?php echo $res['url'];?>" required>
                            </div>
						    
							<div class="form-group col-md-12">
								<label for="example-textarea">解析前Header</label>
								<textarea class="form-control" id="header" rows="9" <?php if($res['type'] =='1'):?> disabled   <?php endif; ?> placeholder='{
"Content-Type": "application/x-www-form-urlencoded",
"Accept": "*/*",
"Connection": "keep-alive",
"Referer": "http://www.baidu.com",
"Cookie": "user=admin;password=admin",
"Host": "127.0.0.1",
"User-Agent": "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36"
}'><?php echo $res['header']; ?></textarea>
							</div>
								
								
							<div class="form-group col-md-12">
								<label for="example-textarea">嗅探前Header</label>
								<textarea class="form-control" id="Sniffing_header"  rows="3" <?php if($res['type'] =='0'):?> disabled   <?php endif; ?> placeholder='{
"User-Agent": " Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36"
}'><?php echo $res['Sniffing_header']; ?></textarea>
							</div>
								
								
							<div class="form-group col-md-12">
                                <label class="col-form-label">嗅探关键字排除</label>
                                <input type="text" class="form-control" id="Exclude_keywords" placeholder="m3u8.pw" value="<?php echo $res['Exclude_keywords'];?>" required <?php if($res['type'] =='0'):?> disabled   <?php endif; ?>>
                            </div>
                            
                            <div class="form-group col-md-12">
								<label for="example-textarea">嗅探规则</label>
								<textarea class="form-control" id="Sniffing_rules" rows="6" <?php if($res['type'] =='0'):?> disabled   <?php endif; ?> placeholder='{
"m3u8": ".m3u8",
"mp4": ".mp4",
"flv": ".flv",
"mkv": ".mkv"
}'><?php echo $res['Sniffing_rules']; ?></textarea>
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
			var url = $("#url").val();
			var header = $("#header").val();
			var type = $("#type").val();
			var Timeout = $("#Timeout").val();
			var Exclude_keywords = $("#Exclude_keywords").val();
			var Sniffing_rules = $("#Sniffing_rules").val();
			var Sniffing_header = $("#Sniffing_header").val();
			if(!ok){
				t.NotificationApp.send("提示","请确认是我操作","top-center","rgba(0,0,0,0.2)","warning")
				return false;
			}
			document.getElementById('submit').innerHTML="<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在修改";
			document.getElementById('submit').disabled=true;
			
			$.ajax({
				cache: false,
				type: "POST",//请求的方式
				url : "ajax.php?act=analysis_edit",//请求的文件名
				data : {
					id:<?php echo $id;?>,
					name:name,
					url:url,
					header:header,
					type:type,
					Timeout:Timeout,
					Exclude_keywords:Exclude_keywords,
					Sniffing_rules:Sniffing_rules,
					Sniffing_header:Sniffing_header,
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
						window.setTimeout("window.location='?analysis_connectadm'",1000);
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
