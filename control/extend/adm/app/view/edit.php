<?php
/*
Sort:1
Hidden:true
Name:编辑应用
Url:app_edit
Version:1.0
*/
if (!isset($islogin)) header("Location: /"); //非法访问
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;
$res = Db::table('app')->where(['id' => $id])->find();
$main = Db::table('main')->where(['uid' => $id])->find();
?>
<div class="row">
	<div class="col-12">
		<div class="page-title-box">
			<div class="page-title-right">
				<ol class="breadcrumb m-0">
					<li class="breadcrumb-item"><a href="javascript: void(0);">首页</a></li>
					<li class="breadcrumb-item"><a href="./?app_adm">应用管理</a></li>
					<li class="breadcrumb-item active">编辑应用</li>
				</ol>
			</div>
			<h4 class="page-title"><?php echo $title; ?></h4>
		</div> <!-- end page-title-box -->
	</div> <!-- end col-->
</div>
<!-- end page title -->

<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-body">
				<nav style="overflow:auto;" class="table-responsive">
					<ul class="nav nav-tabs nav-bordered mb-3 " style="width: 100%;">
						<li class="nav-item">
							<a href="#app-ini" data-toggle="tab" aria-expanded="false" class="nav-link active">
								<span class="d-lg-block">基本设置</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="#pay-ini" data-toggle="tab" aria-expanded="true" class="nav-link">
								<span class="d-lg-block">支付设置</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="#sms-ini" data-toggle="tab" aria-expanded="false" class="nav-link">
								<span class="d-lg-block">验证码设置</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="#safe-ini" data-toggle="tab" aria-expanded="false" class="nav-link">
								<span class="d-lg-block">安全设置</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="#bb-ini" data-toggle="tab" aria-expanded="false" class="nav-link">
								<span class="d-lg-block">版本设置</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="#tq-ini" data-toggle="tab" aria-expanded="true" class="nav-link">
								<span class="d-lg-block">常规设置</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="#sc-ini" data-toggle="tab" aria-expanded="true" class="nav-link">
								<span class="d-lg-block">播放器设置</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="#ts-ini" data-toggle="tab" aria-expanded="true" class="nav-link">
								<span class="d-lg-block">调试设置</span>
							</a>
						</li>

					</ul>
				</nav>

				<div class="tab-content">
					<div class="tab-pane show active" id="app-ini">
						<div class="eruyi-checkbox">
							<input type="checkbox" id="state" <?php if ($res['state'] == 'y'): ?>checked<?php endif; ?> data-switch="success" onchange="state_v(this.checked)" />
							<label for="state" data-on-label="开启" data-off-label="关闭"></label>
							<label class="eruyi-label">应用控制</label>
						</div>

						<div class="view" name="state_y" id="state_y" <?php if ($res['state'] == 'y'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								开启应用控制后，该应用下的用户可以 <code>正常使用</code>
							</p>
							<div class="form-row">
								<div class="form-group col-md-12">
									<label>应用名称</label>
									<input type="text" class="form-control" id="name" placeholder="应用名称" value="<?php echo $res['name']; ?>" required disabled>
								</div>
								<div class="form-group col-md-4">
									<label>APPID</label>
									<div class="input-group">
										<input type="text" class="form-control" id="appid" value="<?php echo $id; ?>" disabled>
										<div class="input-group-append">
											<button class="btn btn-success" type="button" id="copy_id">复制</button>
										</div>
									</div>
								</div>
								<div class="form-group col-md-8">
									<label>APPKEY</label>
									<div class="input-group">
										<input type="text" class="form-control" id="appkey" value="<?php echo $res['appkey']; ?>" disabled>
										<div class="input-group-append">
											<button class="btn btn-dark eruyi-append" type="button" id="bian_key">更换</button>
											<button class="btn btn-success" type="button" id="copy_key">复制</button>
										</div>
									</div>
								</div>
								<div class="form-group col-md-6">
									<label class="col-form-label">苹果文件</label>
									<div class="input-group">
										<input type="text" class="form-control" id="Base_host" placeholder="smtv" value="<?php echo $main['Base_host']; ?>">
									</div>
								</div>
								<div class="form-group col-md-6">
									<label for="f_user" class="col-form-label">随机广告</label>
									<select class="form-control" id="Random_ad">
										<option value="0" <?php if ($main['Random_ad'] == '0') echo 'selected = "selected"'; ?>>启用</option>
										<option value="1" <?php if ($main['Random_ad'] == '1') echo 'selected = "selected"'; ?>>停用</option>
									</select>
								</div>
								<div class="form-group col-md-6">
									<label class="col-form-label">聚合地址</label>
									<div class="input-group">
										<input type="text" class="form-control" id="User_url" placeholder="http://www.User.com/" value="<?php echo $main['User_url']; ?>">
									</div>
								</div>
								<div class="form-group col-md-6">
									<label class="col-form-label">苹果地址</label>
									<div class="input-group">
										<input type="text" class="form-control" id="Api_url" placeholder="http://www.Cms.com/" value="<?php echo $main['Api_url']; ?>">
									</div>
								</div>

								<div class="form-group col-md-12">
									<label>运营模式</label>
									<select class="form-control" id="mode">
										<option value="y" <?php if ($res['mode'] == 'y') echo 'selected = "selected"'; ?>>收费模式</option>
										<option value="n" <?php if ($res['mode'] == 'n') echo 'selected = "selected"'; ?>>免费模式</option>
									</select>
								</div>
								<div class="form-group col-md-6">
									<label class="col-form-label">反馈地址</label>
									<div class="input-group">
										<input type="text" class="form-control" id="Fb_url" placeholder="http://www.User.com/feedback/" value="<?php echo $main['Fb_url']; ?>">
									</div>
								</div>
								<div class="form-group col-md-6">
									<label class="col-form-label">广告地址</label>
									<div class="input-group">
										<input type="text" class="form-control" id="Ad_url" placeholder="http://www.ad.com/Ad.png" value="<?php echo $main['Ad_url']; ?>">
									</div>
								</div>
							</div>
						</div>
						<div class="view" id="state_n" <?php if ($res['state'] == 'n'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								关闭应用控制后，该应用下的用户 <code>不允许任何操作</code>
							</p>
							<div class="form-group">
								<label>应用关闭通知</label>
								<input type="text" id="notice" class="form-control" placeholder="告诉用户为什么关闭应用" value="<?php echo $res['notice']; ?>">
							</div>
						</div>


						<div class="eruyi-fgx-z">
							<div class="eruyi-fgx-x"></div>
							<div class="eruyi-fgx-s"></div>
						</div>

						<div class="eruyi-checkbox">
							<input type="checkbox" id="reg_state" <?php if ($res['reg_state'] == 'y'): ?>checked<?php endif; ?> data-switch="success" onchange="reg_state_v(this.checked)" />
							<label for="reg_state" data-on-label="开启" data-off-label="关闭"></label>
							<label class="eruyi-label">注册控制</label>
						</div>
						<div class="view" id="reg_state_y" <?php if ($res['reg_state'] == 'y'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								开启注册后，该应用可以 <code>正常注册</code>
							</p>

							<div class="form-row">
								<div class="form-group col-md-12">
									<label class="col-form-label">注册方式</label>
									<select class="form-control" id="logon_way">
										<option value="0" <?php if ($res['logon_way'] == 0) echo 'selected = "selected"'; ?>>帐号</option>
										<option value="1" <?php if ($res['logon_way'] == 1) echo 'selected = "selected"'; ?>>机器码</option>
										<option value="2" <?php if ($res['logon_way'] == 2) echo 'selected = "selected"'; ?>>邀请码</option>
										<option value="3" <?php if ($res['logon_way'] == 3) echo 'selected = "selected"'; ?>>MAC地址</option>
									</select>
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label>IP重复注册间隔</label>
									<div class="input-group">
										<input type="number" id="reg_ipon" class="form-control" placeholder="设置IP重复注册间隔时间" value="<?php echo $res['reg_ipon']; ?>">
										<div class="input-group-prepend">
											<span class="input-group-text">小时</span>
										</div>
									</div>

								</div>
								<div class="form-group col-md-6">
									<label>设备重复注册间隔</label>
									<div class="input-group">
										<input type="number" id="reg_inon" class="form-control" placeholder="设置设备重复注册间隔时间" value="<?php echo $res['reg_inon']; ?>">
										<div class="input-group-prepend">
											<span class="input-group-text">小时</span>
										</div>
									</div>

								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<label>注册奖励类型</label>
									<select class="form-control" id="reg_award" onchange="reg_change()">
										<option value="vip" <?php if ($res['reg_award'] == 'vip') echo 'selected = "selected"'; ?>>会员</option>
										<option value="fen" <?php if ($res['reg_award'] == 'fen') echo 'selected = "selected"'; ?>>积分</option>
									</select>
								</div>
								<div class="form-group col-md-8">
									<label>注册奖励数</label>
									<div class="input-group">
										<input type="number" id="reg_award_num" class="form-control" placeholder="0则不奖励" value="<?php echo $res['reg_award_num']; ?>">
										<div class="input-group-prepend">
											<span class="input-group-text" id="reg_award_a"><?php if ($res['reg_award'] == 'vip'): ?>分钟<?php else: ?>积分<?php endif; ?></span>
										</div>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<label>邀请奖励类型</label>
									<select class="form-control" id="inv_award" onchange="inv_change()">
										<option value="vip" <?php if ($res['inv_award'] == 'vip') echo 'selected = "selected"'; ?>>会员</option>
										<option value="fen" <?php if ($res['inv_award'] == 'fen') echo 'selected = "selected"'; ?>>积分</option>
									</select>
								</div>
								<div class="form-group col-md-8">
									<label>邀请奖励数(非定制无效)</label>
									<div class="input-group">
										<input type="number" id="inv_award_num" class="form-control" placeholder="0则不奖励" value="<?php echo $res['inv_award_num']; ?>">
										<div class="input-group-prepend">
											<span class="input-group-text" id="inv_award_a"><?php if ($res['inv_award'] == 'vip'): ?>小时<?php else: ?>积分<?php endif; ?></span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="view" name="reg_state_n" id="reg_state_n" <?php if ($res['reg_state'] == 'n'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								关闭注册后，该应用 <code>禁止所有用户注册</code>
							</p>
							<div class="form-group">
								<label>注册关闭提示</label>
								<input type="text" id="reg_notice" class="form-control" placeholder="告诉用户为什么关闭注册" value="<?php echo $res['reg_notice']; ?>">
							</div>
						</div>

						<div class="eruyi-fgx-z">
							<div class="eruyi-fgx-x"></div>
							<div class="eruyi-fgx-s"></div>
						</div>

						<div class="eruyi-checkbox">
							<input type="checkbox" id="logon_state" <?php if ($res['logon_state'] == 'y'): ?>checked<?php endif; ?> data-switch="success" onchange="logon_state_v(this.checked)" />
							<label for="logon_state" data-on-label="开启" data-off-label="关闭"></label>
							<label class="eruyi-label">登录控制</label>
						</div>

						<div class="view" id="logon_state_y" <?php if ($res['logon_state'] == 'y'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								开启登录后，该应用下的用户可以 <code>正常登录</code> 使用软件（被禁封的用户除外）
							</p>
							<div class="form-row">
								<div class="form-group col-md-4">
									<label>登录时验证设备信息</label>
									<select class="form-control" id="logon_check_in" onchange="logon_check_in_v(this.value)">
										<option value="y" <?php if ($res['logon_check_in'] == 'y') echo 'selected = "selected"'; ?>>验证</option>
										<option value="n" <?php if ($res['logon_check_in'] == 'n') echo 'selected = "selected"'; ?>>不验证</option>
									</select>
								</div>
								<div class="form-group col-md-4">
									<label>多设备登录数</label>
									<input type="number" id="logon_num" class="form-control" placeholder="0或1则只允许同时登录一个设备" <?php if ($res['logon_check_in'] == 'y'): ?> disabled value="1" <?php elseif ($res['logon_check_in'] == 'n'): ?> value="<?php echo $res['logon_num']; ?>" <?php endif; ?>>
								</div>
								<div class="form-group col-md-4">
									<label>设备换绑间隔时间</label>
									<div class="input-group">
										<input type="number" id="logon_check_t" class="form-control" placeholder="0则不限制换绑间隔" value="<?php echo $res['logon_check_t']; ?>">
										<div class="input-group-prepend">
											<span class="input-group-text">小时</span>
										</div>
									</div>
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-4">
									<label>签到奖励类型</label>
									<select class="form-control" id="diary_award" onchange="diary_change()">
										<option value="vip" <?php if ($res['diary_award'] == 'vip') echo 'selected = "selected"'; ?>>会员</option>
										<option value="fen" <?php if ($res['diary_award'] == 'fen') echo 'selected = "selected"'; ?>>积分</option>
									</select>
								</div>
								<div class="form-group col-md-8">
									<label>签到奖励数</label>
									<div class="input-group">
										<input type="number" id="diary_award_num" class="form-control" placeholder="0则不奖励" value="<?php echo $res['diary_award_num']; ?>">
										<div class="input-group-prepend">
											<span class="input-group-text" id="diary_award_a"><?php if ($res['diary_award'] == 'vip'): ?>分钟<?php else: ?>积分<?php endif; ?></span>
										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="view" id="logon_state_n" <?php if ($res['logon_state'] == 'n'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								关闭登录后 <code>所有用户</code> 都无法登录该应用了
							</p>
							<div class="form-group">
								<label>登录关闭提示</label>
								<input type="text" id="logon_notice" class="form-control" placeholder="告诉用户为什么关闭登录" value="<?php echo $res['logon_notice']; ?>">
							</div>
						</div>

					</div>
					<div class="tab-pane" id="pay-ini">
						<div class="eruyi-checkbox">
							<input type="checkbox" id="pay_ali_state" <?php if ($res['pay_ali_state'] == 'y'): ?>checked<?php endif; ?> data-switch="info" onchange="pay_ali_state_v(this.checked)" />
							<label for="pay_ali_state" data-on-label="开启" data-off-label="关闭"></label>
							<label class="eruyi-label">支付宝</label>
						</div>
						<div class="view" id="pay_ali_state_y" <?php if ($res['pay_ali_state'] == 'y'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								开启支付后可接入所有<code>易支付</code>平台, 只需要简单填写信息即可完成无缝对接<code>支付充值</code> 购买会员用户组
							</p>
							<div class="form-group">
								<label>支付方式</label>
								<select class="form-control" id="pay_ali_type" onchange="pay_ali_type_v(this.value)">
									<option value="0" <?php if ($res['pay_ali_type'] == 0) echo 'selected = "selected"'; ?>>易支付</option>
									<option value="1" <?php if ($res['pay_ali_type'] == 1) echo 'selected = "selected"'; ?>>官方</option>

								</select>
							</div>
							<div class="view" id="pay_ali_type_0" <?php if ($res['pay_ali_type'] == 0): ?> style="display: block" <?php endif; ?>>
								<div class="form-group">
									<label>请求地址</label>
									<div class="input-group">
										<input type="text" class="form-control" id="pay_ali_eurl" placeholder="支持所有易支付平台，域名网址" value="<?php echo $res['pay_ali_eurl']; ?>">
										<div class="input-group-append">
											<button class="btn btn-dark" type="button" id="epay_ali">商户申请</button>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-4">
										<label>商户ID</label>
										<input id="pay_ali_eid" type="text" class="form-control" placeholder="商户ID" value="<?php echo $res['pay_ali_eid']; ?>">
									</div>
									<div class="form-group col-md-8">
										<label>商户KEY</label>
										<input id="pay_ali_ekey" type="text" class="form-control" placeholder="商户KEY" value="<?php echo $res['pay_ali_ekey']; ?>">
									</div>
									<div class="form-group col-md-12">
										<label>异步通知地址</label>
										<div class="input-group">
											<input id="pay_ali_notify" type="text" class="form-control" placeholder="异步通知地址" value="<?php if ($res['pay_ali_notify'] == '') {
																																		echo dirname(WEB_URL) . '/ali_notify.php';
																																	} else {
																																		echo $res['pay_ali_notify'];
																																	} ?>">
										</div>
									</div>
								</div>
							</div>
							<div class="view" id="pay_ali_type_1" <?php if ($res['pay_ali_type'] == 1): ?> style="display: block" <?php endif; ?>>
								<div class="form-group">
									<label>APPID</label>
									<input type="text" class="form-control" id="pay_ali_appid" placeholder="支付宝 APPID" value="<?php echo $res['pay_ali_appid']; ?>">
								</div>

								<div class="form-group">
									<label>支付宝公钥</label>
									<input id="pay_ali_public_key" type="text" class="form-control" placeholder="支付宝公钥" value="<?php echo $res['pay_ali_public_key']; ?>">
								</div>
								<div class="form-group">
									<label>商户私钥</label>
									<input id="pay_ali_private_key" type="text" class="form-control" placeholder="商户私钥" value="<?php echo $res['pay_ali_private_key']; ?>">
								</div>
							</div>

						</div>
						<div class="view" id="pay_ali_state_n" <?php if ($res['pay_ali_state'] == 'n'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								关闭支付宝后该应用则<code>无法使用支付宝</code>方式进行支付
							</p>
						</div>

						<div class="eruyi-fgx-z">
							<div class="eruyi-fgx-x"></div>
							<div class="eruyi-fgx-s"></div>
						</div>

						<div class="eruyi-checkbox">
							<input type="checkbox" id="pay_wx_state" <?php if ($res['pay_wx_state'] == 'y'): ?>checked<?php endif; ?> data-switch="success" onchange="pay_wx_state_v(this.checked)" />
							<label for="pay_wx_state" data-on-label="开启" data-off-label="关闭"></label>
							<label class="eruyi-label">微信</label>
						</div>
						<div class="view" id="pay_wx_state_y" <?php if ($res['pay_wx_state'] == 'y'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								开启支付后可接入所有<code>易支付</code>平台, 只需要简单填写信息即可完成无缝对接<code>支付充值</code> 购买会员用户组
							</p>
							<div class="form-group">
								<label>支付方式</label>
								<select class="form-control" id="pay_wx_type" onchange="pay_wx_type_v(this.value)">
									<option value="0" <?php if ($res['pay_wx_type'] == 0) echo 'selected = "selected"'; ?>>易支付</option>
									<option value="1" <?php if ($res['pay_wx_type'] == 1) echo 'selected = "selected"'; ?>>官方</option>

								</select>
							</div>
							<div class="view" id="pay_wx_type_0" <?php if ($res['pay_wx_type'] == 0): ?> style="display: block" <?php endif; ?>>
								<div class="form-group">
									<label>请求地址</label>
									<div class="input-group">
										<input type="text" class="form-control" id="pay_wx_eurl" placeholder="支持所有易支付平台，域名网址" value="<?php echo $res['pay_wx_eurl']; ?>">
										<div class="input-group-append">
											<button class="btn btn-dark" type="button" id="epay_wx">商户申请</button>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-4">
										<label>商户ID</label>
										<input id="pay_wx_eid" type="text" class="form-control" placeholder="商户ID" value="<?php echo $res['pay_wx_eid']; ?>">
									</div>
									<div class="form-group col-md-8">
										<label>商户KEY</label>
										<input id="pay_wx_ekey" type="text" class="form-control" placeholder="商户KEY" value="<?php echo $res['pay_wx_ekey']; ?>">
									</div>
									<div class="form-group col-md-12">
										<label>异步通知地址</label>
										<div class="input-group">
											<input id="pay_wx_notify" type="text" class="form-control" placeholder="异步通知地址" value="<?php if ($res['pay_wx_notify'] == '') {
																																		echo dirname(WEB_URL) . '/wx_notify.php';
																																	} else {
																																		echo $res['pay_wx_notify'];
																																	} ?>">
										</div>
									</div>
								</div>
							</div>

							<div class="view" id="pay_wx_type_1" <?php if ($res['pay_wx_type'] == 1): ?> style="display: block" <?php endif; ?>>
								<div class="form-group">
									<label>微信支付APPID</label>
									<input type="text" class="form-control" id="pay_wx_appid" placeholder="微信公众号APPID" value="<?php echo $res['pay_wx_appid']; ?>">
								</div>

								<div class="form-group">
									<label>微信支付MCHID</label>
									<input id="pay_wx_mchid" type="text" class="form-control" placeholder="微信支付商户ID" value="<?php echo $res['pay_wx_mchid']; ?>">
								</div>
								<div class="form-group">
									<label>微信支付KEY</label>
									<input id="pay_wx_key" type="text" class="form-control" placeholder="微信支付KEY" value="<?php echo $res['pay_wx_key']; ?>">
								</div>
								<div class="form-group">
									<label>微信支付APPSECRET</label>
									<input id="pay_wx_appsecret" type="text" class="form-control" placeholder="微信支付APPSECRET" value="<?php echo $res['pay_wx_appsecret']; ?>">
								</div>
							</div>

						</div>
						<div class="view" id="pay_wx_state_n" <?php if ($res['pay_wx_state'] == 'n'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								关闭支付后该应用则<code>无法使用</code>支付功能
							</p>
						</div>

						<div class="eruyi-fgx-z">
							<div class="eruyi-fgx-x"></div>
							<div class="eruyi-fgx-s"></div>
						</div>

						<div class="eruyi-checkbox">
							<input type="checkbox" id="pay_qq_state" <?php if ($res['pay_qq_state'] == 'y'): ?>checked<?php endif; ?> data-switch="secondary" onchange="pay_qq_state_v(this.checked)" />
							<label for="pay_qq_state" data-on-label="开启" data-off-label="关闭"></label>
							<label class="eruyi-label">QQ钱包</label>
						</div>
						<div class="view" id="pay_qq_state_y" <?php if ($res['pay_qq_state'] == 'y'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								开启支付后可接入所有<code>易支付</code>平台, 只需要简单填写信息即可完成无缝对接<code>支付充值</code> 购买会员用户组
							</p>

							<div class="form-group">
								<label>支付方式</label>
								<select class="form-control" id="pay_qq_type" onchange="pay_qq_type_v(this.value)">
									<option value="0" <?php if ($res['pay_qq_type'] == 0) echo 'selected = "selected"'; ?>>易支付</option>
									<option value="1" <?php if ($res['pay_qq_type'] == 1) echo 'selected = "selected"'; ?>>官方</option>

								</select>
							</div>
							<div class="view" id="pay_qq_type_0" <?php if ($res['pay_qq_type'] == 0): ?> style="display: block" <?php endif; ?>>
								<div class="form-group">
									<label>请求地址</label>
									<div class="input-group">
										<input type="text" class="form-control" id="pay_qq_eurl" placeholder="支持所有易支付平台，域名网址" value="<?php echo $res['pay_qq_eurl']; ?>">
										<div class="input-group-append">
											<button class="btn btn-dark" type="button" id="epay_qq">商户申请</button>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group  col-md-4">
										<label>商户ID</label>
										<input id="pay_qq_eid" type="text" class="form-control" placeholder="商户ID" value="<?php echo $res['pay_qq_eid']; ?>">
									</div>
									<div class="form-group  col-md-8">
										<label>商户KEY</label>
										<input id="pay_qq_ekey" type="text" class="form-control" placeholder="商户KEY" value="<?php echo $res['pay_qq_ekey']; ?>">
									</div>
									<div class="form-group col-md-12">
										<label>异步通知地址</label>
										<div class="input-group">
											<input id="pay_qq_notify" type="text" class="form-control" placeholder="异步通知地址" value="<?php if ($res['pay_qq_notify'] == '') {
																																		echo dirname(WEB_URL) . '/qq_notify.php';
																																	} else {
																																		echo $res['pay_qq_notify'];
																																	} ?>">
										</div>
									</div>
								</div>
							</div>

							<div class="view" id="pay_qq_type_1" <?php if ($res['pay_qq_type'] == 1): ?> style="display: block" <?php endif; ?>>
								<div class="form-group">
									<label>QQ钱包MCHID</label>
									<input id="pay_qq_mchid" type="text" class="form-control" placeholder="QQ钱包MCHID" value="<?php echo $res['pay_qq_mchid']; ?>">
								</div>
								<div class="form-group">
									<label>QQ钱包MCHKEY</label>
									<input id="pay_qq_mchkey" type="text" class="form-control" placeholder="QQ钱包MCHKEY" value="<?php echo $res['pay_qq_mchkey']; ?>">
								</div>
							</div>

						</div>
						<div class="view" id="pay_qq_state_n" <?php if ($res['pay_qq_state'] == 'n'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								关闭支付后该应用则<code>无法使用</code>支付功能
							</p>
						</div>
					</div>

					<div class="tab-pane" id="sms-ini">
						<div class="eruyi-checkbox">
							<input type="checkbox" id="smtp_state" <?php if ($res['smtp_state'] == 'y'): ?>checked<?php endif; ?> data-switch="secondary" onchange="smtp_state_v(this.checked)" />
							<label for="smtp_state" data-on-label="开启" data-off-label="关闭"></label>
							<label class="eruyi-label">邮箱控制</label>
						</div>

						<div class="view" id="smtp_state_y" <?php if ($res['smtp_state'] == 'y'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								开启邮箱控制后，用户 <code>可以使用邮箱获取验证码</code> 注册和找回密码
							</p>

							<div class="form-row">
								<div class="form-group  col-md-6">
									<label>SMTP服务器</label>
									<input id="smtp_host" type="text" class="form-control" placeholder="邮箱服务器" value="<?php echo $res['smtp_host']; ?>">
								</div>
								<div class="form-group  col-md-6">
									<label>端口</label>
									<input id="smtp_port" type="number" class="form-control" placeholder="邮箱端口" value="<?php echo $res['smtp_port']; ?>">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group  col-md-6">
									<label>SMTP用户名</label>
									<input id="smtp_user" type="text" class="form-control" placeholder="邮箱账号" value="<?php echo $res['smtp_user']; ?>">
								</div>
								<div class="form-group  col-md-6">
									<label>SMTP密码</label>
									<input id="smtp_pass" type="text" class="form-control" placeholder="邮箱密码" value="<?php echo $res['smtp_pass']; ?>">
								</div>
							</div>
						</div>
						<div class="view" id="smtp_state_n" <?php if ($res['smtp_state'] == 'n'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								关闭邮箱控制后，用户 <code>无法使用</code> 邮箱注册验证码和邮箱找回密码
							</p>
						</div>

						<div class="eruyi-fgx-z">
							<div class="eruyi-fgx-x"></div>
							<div class="eruyi-fgx-s"></div>
						</div>


						<div class="eruyi-checkbox">
							<input type="checkbox" id="sms_state" <?php if ($res['sms_state'] == 'y'): ?>checked<?php endif; ?> data-switch="bool" onchange="sms_state_v(this.checked)" />
							<label for="sms_state" data-on-label="开启" data-off-label="关闭"></label>
							<label class="eruyi-label">短信控制</label>
						</div>

						<div class="view" id="sms_state_y" <?php if ($res['sms_state'] == 'y'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								开启短信控制后，用户 <code>可以使用短信获取验证码</code> 注册和找回密码
							</p>
							<div class="form-row">
								<div class="form-group  col-md-12">
									<label>短信KEY</label>
									<input id="sms_key" type="text" class="form-control" placeholder="短信APPKEY" value="<?php echo $res['sms_key']; ?>">
								</div>
							</div>
						</div>
						<div class="view" id="sms_state_n" <?php if ($res['sms_state'] == 'n'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								关闭短信控制后，用户 <code>无法使用</code> 短信注册验证码和短信找回密码
							</p>
						</div>
					</div>

					<div class="tab-pane" id="safe-ini">
						<div class="eruyi-checkbox">
							<input type="checkbox" id="mi_state" <?php if ($res['mi_state'] == 'y'): ?>checked<?php endif; ?> data-switch="warning" onchange="mi_state_v(this.checked)" />
							<label for="mi_state" data-on-label="开启" data-off-label="关闭"></label>
							<label class="eruyi-label">安全控制</label>
						</div>
						<div class="view" id="mi_state_y" <?php if ($res['mi_state'] == 'y'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								开启安全控制后，可对应用 <code>数据</code> 进行加密, 防止数据泄露
							</p>
							<div class="form-group">
								<label>数据加密类型</label>
								<select class="form-control" id="mi_type" onchange="mi_type_v(this.value)">
									<option value="0" <?php if ($res['mi_type'] == 0) echo 'selected = "selected"'; ?>>不加密</option>
									<option value="1" <?php if ($res['mi_type'] == 1) echo 'selected = "selected"'; ?>>RC4加密</option>
									<option value="2" <?php if ($res['mi_type'] == 2) echo 'selected = "selected"'; ?>>RSA加密</option>
									<option value="3" <?php if ($res['mi_type'] == 3) echo 'selected = "selected"'; ?>>AES加密</option>
								</select>
							</div>
							<div class="view" id="mi_type_0" <?php if ($res['mi_type'] == 0): ?> style="display: block" <?php endif; ?>>
								<div class="alert alert-warning alert-dismissible fade show" role="alert">
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<strong>提示 - </strong> 该设置仅针对数据加密，不影响其他安全设置
								</div>
							</div>

							<div class="view" id="mi_type_1" <?php if ($res['mi_type'] == 1): ?> style="display: block" <?php endif; ?>>
								<div class="form-group">
									<label>RC4秘钥</label>
									<div class="input-group">
										<input type="text" id="mi_rc4_key" class="form-control" placeholder="RC4加解密秘钥" value="<?php echo $res['mi_rc4_key']; ?>">
										<div class="input-group-append">
											<button class="btn btn-dark" type="button" id="mi_skey">随机</button>
										</div>
									</div>
								</div>
							</div>

							<div class="view" id="mi_type_2" <?php if ($res['mi_type'] == 2): ?> style="display: block" <?php endif; ?>>
								<div class="form-group">
									<label>私钥</label>
									<textarea class="form-control" id="mi_rsa_private_key" rows="5" placeholder="加解密私钥"><?php echo $res['mi_rsa_private_key']; ?></textarea>
								</div>
								<div class="form-group">
									<label>公钥</label>
									<textarea class="form-control" id="mi_rsa_public_key" rows="5" placeholder="加解密公钥"><?php echo $res['mi_rsa_public_key']; ?></textarea>
								</div>
							</div>

							<div class="view" id="mi_type_3" <?php if ($res['mi_type'] == 3): ?> style="display: block" <?php endif; ?>>
								<!-- <div class="form-group">
										<label>AES密钥</label>
										<textarea class="form-control" id="mi_aes_key" rows="1" placeholder="密钥长度必须为32"><?php echo $res['mi_aes_key']; ?></textarea>
									</div>
									<div class="form-group">
										<label>AESIV</label>
										<textarea class="form-control" id="mi_aes_iv" rows="1" placeholder="IV长度必须为16"><?php echo $res['mi_aes_iv']; ?></textarea>
									</div> -->
								<label>AES密钥</label>
								<div class="input-group">
									<input type="text" id="mi_aes_key" class="form-control" placeholder="密钥长度必须为32" value="<?php echo $res['mi_aes_key']; ?>">
									<div class="input-group-append">
										<button class="btn btn-dark" type="button" id="mi_skey_aes">随机</button>
									</div>
								</div>

								<label>AES密钥</label>
								<div class="input-group">
									<input type="text" id="mi_aes_iv" class="form-control" placeholder="IV长度必须为16" value="<?php echo $res['mi_aes_iv']; ?>">
								</div>
							</div>

							<div class="form-group">
								<label>数据签名</label>
								<select class="form-control" id="mi_sign">
									<option value="n" <?php if ($res['mi_sign'] == 'n') echo 'selected = "selected"'; ?>>不签名</option>
									<option value="y" <?php if ($res['mi_sign'] == 'y') echo 'selected = "selected"'; ?>>签名</option>
								</select>
							</div>
							<div class="alert alert-warning alert-dismissible fade show" role="alert">
								<button type="button" class="close" data-dismiss="alert" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<strong>提示 - </strong> 若使用数据签名，可有效防止数据被篡改
							</div>
							<div class="form-group">
								<label>时间差校验</label>
								<div class="input-group">
									<input id="mi_time" type="number" class="form-control" placeholder="时间校验" value="<?php echo $res['mi_time']; ?>">
									<div class="input-group-prepend">
										<span class="input-group-text">秒</span>
									</div>
								</div>
							</div>
							<div class="alert alert-warning alert-dismissible fade show" role="alert">
								<button type="button" class="close" data-dismiss="alert" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<strong>提示 - </strong> 对客户设备时间与服务器时间进行时差校验，避免用户修改本地时间非法使用VIP功能，设置 0 则不校验
							</div>
						</div>
						<div class="view" id="mi_state_n" <?php if ($res['mi_state'] == 'n'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								关闭安全控制后，该应用 <code>数据</code> 将以明文传输，不使用任何安全配置
							</p>
						</div>
					</div>

					<div class="tab-pane" id="bb-ini">
						<div class="eruyi-checkbox">
							<input type="checkbox" id="android_state" <?php if ($res['android_state'] == 'y'): ?>checked<?php endif; ?> data-switch="success" onchange="android_v(this.checked)" />
							<label for="android_state" data-on-label="开启" data-off-label="关闭"></label>
							<label class="eruyi-label">聚合版本</label>
						</div>

						<div class="view" id="android_y" <?php if ($res['android_state'] == 'y'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								开启聚合版本后，可根据接口获取 <code>聚合版本配置</code>
							</p>

							<div class="form-row">
								<div class="form-group col-md-2">
									<label>应用版本</label>
									<input type="number" id="android_bb" class="form-control" placeholder="1.0" value="<?php echo $res['android_bb']; ?>">

								</div>

								<div class="form-group col-md-1">
									<label>下载类型</label>
									<select class="form-control" id="downloadtype1" onchange="logon_check_in_a(this.value)">
										<option value="0" <?php if ($res['downloadtype1'] == '0') echo 'selected = "selected"'; ?>>直连</option>
										<option value="1" <?php if ($res['downloadtype1'] == '1') echo 'selected = "selected"'; ?>>蓝奏云</option>
										<option value="2" <?php if ($res['downloadtype1'] == '2') echo 'selected = "selected"'; ?>>乐家市场</option>
									</select>
								</div>

								<div class="form-group col-md-1">
									<label>密码</label>
									<input type="text" id="downloadpwd1" class="form-control" placeholder="无密码留空" <?php if ($res['downloadtype1'] == '0'): ?> disabled value="<?php echo $res['downloadpwd1']; ?>" <?php elseif ($res['downloadtype1'] == '1'): ?> value="<?php echo $res['downloadpwd1']; ?>" <?php endif; ?>>
								</div>

								<div class="form-group col-md-8">
									<label>更新地址</label>
									<input type="text" id="android_url" class="form-control" placeholder="版本更新地址" value="<?php echo $res['android_url']; ?>">
								</div>

							</div>
							<div class="form-row">
								<div class="form-group col-md-12">
									<label>更新内容</label>
									<textarea class="form-control" id="android_show" rows="5" placeholder="版本更新内容"><?php echo $res['android_show']; ?></textarea>
								</div>
							</div>

						</div>
						<div class="view" id="android_n" <?php if ($res['android_state'] == 'n'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								关闭聚合版本后，则无法根据接口获取 <code>聚合版本配置</code>
							</p>
						</div>

						<div class="eruyi-fgx-z">
							<div class="eruyi-fgx-x"></div>
							<div class="eruyi-fgx-s"></div>
						</div>

						<div class="eruyi-checkbox">
							<input type="checkbox" id="ios_state" <?php if ($res['ios_state'] == 'y'): ?>checked<?php endif; ?> data-switch="success" onchange="ios_v(this.checked)" />
							<label for="ios_state" data-on-label="开启" data-off-label="关闭"></label>
							<label class="eruyi-label">293版本</label>
						</div>

						<div class="view" id="ios_y" <?php if ($res['ios_state'] == 'y'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								开启293版本后，可根据接口获取 <code>293版本配置</code>
							</p>

							<div class="form-row">
								<div class="form-group col-md-2">
									<label>应用版本</label>
									<input type="number" id="ios_bb" class="form-control" placeholder="1.0" value="<?php echo $res['ios_bb']; ?>">

								</div>

								<div class="form-group col-md-1">
									<label>下载类型</label>
									<select class="form-control" id="downloadtype2" onchange="logon_check_in_b(this.value)">
										<option value="0" <?php if ($res['downloadtype2'] == '0') echo 'selected = "selected"'; ?>>直连</option>
										<option value="1" <?php if ($res['downloadtype2'] == '1') echo 'selected = "selected"'; ?>>蓝奏云</option>
										<option value="2" <?php if ($res['downloadtype2'] == '2') echo 'selected = "selected"'; ?>>乐家市场</option>
									</select>
								</div>

								<div class="form-group col-md-1">
									<label>密码</label>
									<input type="text" id="downloadpwd2" class="form-control" placeholder="无密码留空" <?php if ($res['downloadtype2'] == '0'): ?> disabled value="<?php echo $res['downloadpwd2']; ?>" <?php elseif ($res['downloadtype2'] == '1'): ?> value="<?php echo $res['downloadpwd2']; ?>" <?php endif; ?>>
								</div>

								<div class="form-group col-md-8">
									<label>更新地址</label>
									<input type="text" id="ios_url" class="form-control" placeholder="版本更新地址" value="<?php echo $res['ios_url']; ?>">
								</div>

							</div>
							<div class="form-row">
								<div class="form-group col-md-12">
									<label>更新内容</label>
									<textarea class="form-control" id="ios_show" rows="5" placeholder="版本更新内容"><?php echo $res['ios_show']; ?></textarea>
								</div>
							</div>

						</div>
						<div class="view" id="ios_n" <?php if ($res['ios_state'] == 'n'): ?> style="display: block" <?php endif; ?>>
							<p class="text-muted">
								关闭293版本后，则无法根据接口获取 <code>293版本配置</code>
							</p>
						</div>
					</div>

					<div class="tab-pane" id="tq-ini">
						<div class="form-row">
							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">热门推荐文字及阴影</label>
								<select class="form-control" id="Home_text_shadow">
									<option value="0" <?php if ($main['Home_text_shadow'] == '0') echo 'selected = "selected"'; ?>>启用</option>
									<option value="1" <?php if ($main['Home_text_shadow'] == '1') echo 'selected = "selected"'; ?>>停用</option>
								</select>
							</div>
							<div class="form-group col-md-2">
								<label class="col-form-label">开屏广告时间</label>
								<div class="input-group">
									<input type="number" class="form-control" id="Ad_time" placeholder="3" value="<?php echo $main['Ad_time']; ?>">
									<div class="input-group-prepend">
										<span class="input-group-text">秒</span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">跳过广告</label>
								<select class="form-control" id="Ad_jump">
									<option value="0" <?php if ($main['Ad_jump'] == '0') echo 'selected = "selected"'; ?>>允许</option>
									<option value="1" <?php if ($main['Ad_jump'] == '1') echo 'selected = "selected"'; ?>>禁止</option>
								</select>
							</div>
							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">初装跳片头时间</label>
								<select class="form-control" id="play_jump">
									<option value="0秒" <?php if ($main['play_jump'] == '0秒') echo 'selected = "selected"'; ?>>0秒</option>
									<option value="10秒" <?php if ($main['play_jump'] == '10秒') echo 'selected = "selected"'; ?>>10秒</option>
									<option value="15秒" <?php if ($main['play_jump'] == '15秒') echo 'selected = "selected"'; ?>>15秒</option>
									<option value="20秒" <?php if ($main['play_jump'] == '20秒') echo 'selected = "selected"'; ?>>20秒</option>
									<option value="30秒" <?php if ($main['play_jump'] == '30秒') echo 'selected = "selected"'; ?>>30秒</option>
									<option value="60秒" <?php if ($main['play_jump'] == '60秒') echo 'selected = "selected"'; ?>>60秒</option>
									<option value="90秒" <?php if ($main['play_jump'] == '90秒') echo 'selected = "selected"'; ?>>90秒</option>
									<option value="120秒" <?php if ($main['play_jump'] == '120秒') echo 'selected = "selected"'; ?>>120秒</option>
									<option value="150秒" <?php if ($main['play_jump'] == '150秒') echo 'selected = "selected"'; ?>>150秒</option>
									<option value="180秒" <?php if ($main['play_jump'] == '180秒') echo 'selected = "selected"'; ?>>180秒</option>
									<option value="240秒" <?php if ($main['play_jump'] == '240秒') echo 'selected = "selected"'; ?>>240秒</option>
									<option value="300秒" <?php if ($main['play_jump'] == '300秒') echo 'selected = "selected"'; ?>>300秒</option>
								</select>
							</div>
							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">初装跳片尾时间</label>
								<select class="form-control" id="play_jump_end">
									<option value="0秒" <?php if ($main['play_jump_end'] == '0秒') echo 'selected = "selected"'; ?>>0秒</option>
									<option value="10秒" <?php if ($main['play_jump_end'] == '10秒') echo 'selected = "selected"'; ?>>10秒</option>
									<option value="15秒" <?php if ($main['play_jump_end'] == '15秒') echo 'selected = "selected"'; ?>>15秒</option>
									<option value="20秒" <?php if ($main['play_jump_end'] == '20秒') echo 'selected = "selected"'; ?>>20秒</option>
									<option value="30秒" <?php if ($main['play_jump_end'] == '30秒') echo 'selected = "selected"'; ?>>30秒</option>
									<option value="60秒" <?php if ($main['play_jump_end'] == '60秒') echo 'selected = "selected"'; ?>>60秒</option>
									<option value="90秒" <?php if ($main['play_jump_end'] == '90秒') echo 'selected = "selected"'; ?>>90秒</option>
									<option value="120秒" <?php if ($main['play_jump_end'] == '120秒') echo 'selected = "selected"'; ?>>120秒</option>
									<option value="150秒" <?php if ($main['play_jump_end'] == '150秒') echo 'selected = "selected"'; ?>>150秒</option>
									<option value="180秒" <?php if ($main['play_jump_end'] == '180秒') echo 'selected = "selected"'; ?>>180秒</option>
									<option value="240秒" <?php if ($main['play_jump_end'] == '240秒') echo 'selected = "selected"'; ?>>240秒</option>
									<option value="300秒" <?php if ($main['play_jump_end'] == '300秒') echo 'selected = "selected"'; ?>>300秒</option>
								</select>
							</div>
							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">扫码登录</label>
								<select class="form-control" id="Login_control">
									<option value="0" <?php if ($main['Login_control'] == '0') echo 'selected = "selected"'; ?>>隐藏</option>
									<option value="1" <?php if ($main['Login_control'] == '1') echo 'selected = "selected"'; ?>>显示</option>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label class="col-form-label">退出简介</label>
								<div class="input-group">
									<input type="text" class="form-control" id="Exit_Message" placeholder="播放失败可尝试重新播放或更换线路" value="<?php echo $main['Exit_Message']; ?>">
								</div>
							</div>
							<div class="form-group col-md-3">
								<label class="col-form-label">解析客户端地址Client或http://xx.com/Client/</label>
								<div class="input-group">
									<input type="text" class="form-control" id="Client" placeholder="Client" value="<?php echo $main['Client']; ?>">
								</div>
							</div>
							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">反馈类型</label>
								<select class="form-control" id="Fb_type">
									<option value="0" <?php if ($main['Fb_type'] == '0') echo 'selected = "selected"'; ?>>对话框</option>
									<option value="1" <?php if ($main['Fb_type'] == '1') echo 'selected = "selected"'; ?>>消息框</option>
								</select>
							</div>
							<div class="form-group col-md-2">
								<label class="col-form-label">视频跑马公告起始时间</label>
								<div class="input-group">
									<input type="number" class="form-control" id="Vod_Notice_starting_time" placeholder="10" value="<?php echo $main['Vod_Notice_starting_time']; ?>">
									<div class="input-group-prepend">
										<span class="input-group-text">秒</span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-2">
								<label class="col-form-label">视频跑马公告停留时间</label>
								<div class="input-group">
									<input type="number" class="form-control" id="Vod_Notice_end_time" placeholder="60" value="<?php echo $main['Vod_Notice_end_time']; ?>">
									<div class="input-group-prepend">
										<span class="input-group-text">秒</span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-12">
								<label class="col-form-label">节日/远程LOGO</label>
								<div class="input-group">
									<input type="text" class="form-control" id="Logo_url" placeholder="http(s)://xxx.com/xxx.png" value="<?php echo $main['Logo_url']; ?>">
								</div>
							</div>

							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">强制UI</label>
								<select class="form-control" id="Force_Style" onchange="logon_check_in_c(this.value)">
									<option value="0" <?php if ($main['Force_Style'] == '0') echo 'selected = "selected"'; ?>>停用</option>
									<option value="1" <?php if ($main['Force_Style'] == '1') echo 'selected = "selected"'; ?>>启用</option>
								</select>
							</div>
							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">初始UI</label>
								<select class="form-control" id="Interface_Style" onchange="logon_check_in_d(this.value)">
									<option value="0" <?php if ($main['Interface_Style'] == '0') echo 'selected = "selected"'; ?>>经典</option>
									<option value="1" <?php if ($main['Interface_Style'] == '1') echo 'selected = "selected"'; ?>>现代</option>
									<option value="2" <?php if ($main['Interface_Style'] == '2') echo 'selected = "selected"'; ?>>现代(圆角)</option>
									<option value="3" <?php if ($main['Interface_Style'] == '3') echo 'selected = "selected"'; ?>>经典(圆角)</option>
									
									<option value="4" <?php if ($main['Interface_Style'] == '4') echo 'selected = "selected"'; ?>>主题5</option>
									<option value="5" <?php if ($main['Interface_Style'] == '5') echo 'selected = "selected"'; ?>>主题6</option>
									<option value="6" <?php if ($main['Interface_Style'] == '6') echo 'selected = "selected"'; ?>>主题7</option>
									<option value="7" <?php if ($main['Interface_Style'] == '7') echo 'selected = "selected"'; ?>>主题8</option>
									<!--<option value="8" <?php if ($main['Interface_Style'] == '8') echo 'selected = "selected"'; ?>>随机(非强制UI无效)</option>-->
								</select>
							</div>
							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">允许切换UI</label>
								<select class="form-control" id="Allow_changing_styles" <?php if ($main['Force_Style'] == '1'): ?> disabled <?php elseif ($main['Force_Style'] == '0'): ?> <?php endif; ?>>
									<option value="0" <?php if ($main['Allow_changing_styles'] == '0') echo 'selected = "selected"'; ?>>拒绝</option>
									<option value="1" <?php if ($main['Allow_changing_styles'] == '1') echo 'selected = "selected"'; ?>>允许</option>
								</select>
							</div>
							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">专题</label>
								<!--<select class="form-control" id="Topic" <?php if ($main['Interface_Style'] != '0'): ?> disabled   <?php endif; ?>>-->
								<select class="form-control" id="Topic">
									<option value="0" <?php if ($main['Topic'] == '0') echo 'selected = "selected"'; ?>>隐藏</option>
									<option value="1" <?php if ($main['Topic'] == '1') echo 'selected = "selected"'; ?>>显示</option>
								</select>
							</div>
							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">播放LOGO</label>
								<select class="form-control" id="vod_Logo">
									<option value="0" <?php if ($main['vod_Logo'] == '0') echo 'selected = "selected"'; ?>>隐藏</option>
									<option value="1" <?php if ($main['vod_Logo'] == '1') echo 'selected = "selected"'; ?>>显示</option>
								</select>
							</div>
							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">设置页</label>
								<select class="form-control" id="Settings_page">
									<option value="0" <?php if ($main['Settings_page'] == '0') echo 'selected = "selected"'; ?>>八格(常规)</option>
									<option value="1" <?php if ($main['Settings_page'] == '1') echo 'selected = "selected"'; ?>>四格(定制)</option>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">角标模式</label>
								<select class="form-control" id="CornerLabelView">
									<option value="0" <?php if ($main['CornerLabelView'] == '0') echo 'selected = "selected"'; ?>>显示</option>
									<option value="1" <?php if ($main['CornerLabelView'] == '1') echo 'selected = "selected"'; ?>>隐藏</option>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label class="col-form-label">密码提示语</label>
								<div class="input-group">
									<input type="text" class="form-control" id="Pwd_text" placeholder="类目维护暂不对外" value="<?php echo $main['Pwd_text']; ?>">
								</div>
							</div>

							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">剧集数量</label>
								<select class="form-control" id="EpisodesNumber">
									<option value="0" <?php if ($main['EpisodesNumber'] == '0') echo 'selected = "selected"'; ?>>隐藏</option>
									<option value="1" <?php if ($main['EpisodesNumber'] == '1') echo 'selected = "selected"'; ?>>显示</option>
								</select>
							</div>

							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">更新集数</label>
								<select class="form-control" id="UpdateNumber">
									<option value="0" <?php if ($main['UpdateNumber'] == '0') echo 'selected = "selected"'; ?>>隐藏</option>
									<option value="1" <?php if ($main['UpdateNumber'] == '1') echo 'selected = "selected"'; ?>>显示</option>
								</select>
							</div>

							<div class="form-group col-md-4">
								<label for="f_user" class="col-form-label">选集类型</label>
								<select class="form-control" id="xuanjitype">
									<option value="0" <?php if ($main['xuanjitype'] == '0') echo 'selected = "selected"'; ?>>按钮</option>
									<option value="1" <?php if ($main['xuanjitype'] == '1') echo 'selected = "selected"'; ?>>列表</option>
								</select>
							</div>

							<div class="form-group col-md-4">
								<label class="col-form-label">选集列表每组</label>
								<div class="input-group">
									<input type="number" class="form-control" id="xuanjinumber" placeholder="8" value="<?php echo $main['xuanjinumber']; ?>">
									<div class="input-group-prepend">
										<span class="input-group-text">集</span>
									</div>
								</div>
							</div>

							<div class="form-group col-md-4">
								<label for="f_user" class="col-form-label">换台反转</label>
								<select class="form-control" id="reverse">
									<option value="0" <?php if ($main['reverse'] == '0') echo 'selected = "selected"'; ?>>正向</option>
									<option value="1" <?php if ($main['reverse'] == '1') echo 'selected = "selected"'; ?>>反转</option>
								</select>
							</div>

							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">播放线路记忆</label>
								<select class="form-control" id="remember_source">
									<option value="0" <?php if ($main['remember_source'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
									<option value="1" <?php if ($main['remember_source'] == '1') echo 'selected = "selected"'; ?>>开启</option>
								</select>
							</div>

							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">同片搜索</label>
								<select class="form-control" id="Same_source_search">
									<option value="0" <?php if ($main['Same_source_search'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
									<option value="1" <?php if ($main['Same_source_search'] == '1') echo 'selected = "selected"'; ?>>开启</option>
								</select>
							</div>

							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">远程/语音搜索(广告时间不得>1)</label>
								<select class="form-control" id="search">
									<option value="0" <?php if ($main['search'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
									<option value="1" <?php if ($main['search'] == '1') echo 'selected = "selected"'; ?>>开启</option>
								</select>
							</div>

							<div class="form-group col-md-3">
								<label class="col-form-label">语音/远程端口</label>
								<div class="input-group">
									<input type="number" class="form-control" id="searchport" placeholder="9978" value="<?php echo $main['searchport']; ?>">
									<div class="input-group-prepend">
										<span class="input-group-text">端口</span>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="tab-pane" id="sc-ini">

						<div class="form-row">
							<div class="form-group col-md-12">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">通用设置</span>
									</div>
								</div>
							</div>
						</div>

						<div class="form-row">

							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">初装解码</label>
								<select class="form-control" id="play_decode">
									<option value="硬解码" <?php if ($main['play_decode'] == '硬解码') echo 'selected = "selected"'; ?>>硬解码(推荐)</option>
									<option value="软解码" <?php if ($main['play_decode'] == '软解码') echo 'selected = "selected"'; ?>>软解码</option>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">初装画面比例</label>
								<select class="form-control" id="play_ratio">
									<option value="原始比例" <?php if ($main['play_ratio'] == '原始比例') echo 'selected = "selected"'; ?>>原始比例</option>
									<option value="4:3 缩放" <?php if ($main['play_ratio'] == '4:3 缩放') echo 'selected = "selected"'; ?>>4:3 缩放</option>
									<option value="16:9缩放" <?php if ($main['play_ratio'] == '16:9缩放') echo 'selected = "selected"'; ?>>16:9缩放</option>
									<option value="全屏拉伸" <?php if ($main['play_ratio'] == '全屏拉伸') echo 'selected = "selected"'; ?>>全屏拉伸</option>
									<option value="等比缩放" <?php if ($main['play_ratio'] == '等比缩放') echo 'selected = "selected"'; ?>>等比缩放(推荐)</option>
									<option value="全屏裁剪" <?php if ($main['play_ratio'] == '全屏裁剪') echo 'selected = "selected"'; ?>>全屏裁剪</option>
								</select>
							</div>

							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">资源超时跳帧</label>
								<select class="form-control" id="videotimeout">
									<option value="3000000" <?php if ($main['videotimeout'] == '3000000') echo 'selected = "selected"'; ?>>3秒</option>
									<option value="5000000" <?php if ($main['videotimeout'] == '5000000') echo 'selected = "selected"'; ?>>5秒</option>
									<option value="10000000" <?php if ($main['videotimeout'] == '10000000') echo 'selected = "selected"'; ?>>10秒</option>
									<option value="15000000" <?php if ($main['videotimeout'] == '15000000') echo 'selected = "selected"'; ?>>15秒</option>
									<option value="20000000" <?php if ($main['videotimeout'] == '20000000') echo 'selected = "selected"'; ?>>20秒(推荐)</option>
									<option value="20000000" <?php if ($main['videotimeout'] == '30000000') echo 'selected = "selected"'; ?>>30秒</option>
									<option value="20000000" <?php if ($main['videotimeout'] == '40000000') echo 'selected = "selected"'; ?>>40秒</option>
									<option value="20000000" <?php if ($main['videotimeout'] == '50000000') echo 'selected = "selected"'; ?>>50秒</option>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">续传检查</label>
								<select class="form-control" id="http_detect_range_support">
									<option value="0" <?php if ($main['http_detect_range_support'] == '0') echo 'selected = "selected"'; ?>>不检查</option>
									<option value="1" <?php if ($main['http_detect_range_support'] == '1') echo 'selected = "selected"'; ?>>检查(推荐)</option>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">资源重试</label>
								<select class="form-control" id="reconnect">
									<option value="0" <?php if ($main['reconnect'] == '0') echo 'selected = "selected"'; ?>>否</option>
									<option value="1" <?php if ($main['reconnect'] == '1') echo 'selected = "selected"'; ?>>是(推荐)</option>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label class="col-form-label">播放重连次数</label>
								<div class="input-group">
									<input type="number" class="form-control" id="resources_reconnect" placeholder="5" value="<?php echo $main['resources_reconnect']; ?>">
									<div class="input-group-prepend">
										<span class="input-group-text">次</span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">直播流媒体优化</label>
								<select class="form-control" id="live_streaming">
									<option value="0" <?php if ($main['live_streaming'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
									<option value="1" <?php if ($main['live_streaming'] == '1') echo 'selected = "selected"'; ?>>开启(推荐)</option>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">画面质量</label>
								<select class="form-control" id="skip_loop_filter">
									<option value="-16" <?php if ($main['skip_loop_filter'] == '-16') echo 'selected = "selected"'; ?>>不丢弃任何</option>
									<option value="0" <?php if ($main['skip_loop_filter'] == '0') echo 'selected = "selected"'; ?>>丢弃无用的</option>
									<option value="8" <?php if ($main['skip_loop_filter'] == '8') echo 'selected = "selected"'; ?>>丢弃非引用</option>
									<option value="16" <?php if ($main['skip_loop_filter'] == '16') echo 'selected = "selected"'; ?>>丢弃双向帧</option>
									<option value="32" <?php if ($main['skip_loop_filter'] == '32') echo 'selected = "selected"'; ?>>丢弃非关键帧</option>
									<option value="48" <?php if ($main['skip_loop_filter'] == '48') echo 'selected = "selected"'; ?>>全部丢弃(推荐)</option>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">系统导航</label>
								<select class="form-control" id="Navigation_mode">
									<option value="0" <?php if ($main['Navigation_mode'] == '0') echo 'selected = "selected"'; ?>>显示</option>
									<option value="1" <?php if ($main['Navigation_mode'] == '1') echo 'selected = "selected"'; ?>>隐藏</option>
								</select>
							</div>

							<div class="form-group col-md-3">
								<label class="col-form-label">高负载丢帧(需关闭显示预加载)</label>
								<div class="input-group">
									<input type="number" class="form-control" id="framedrop" placeholder="120" value="<?php echo $main['framedrop']; ?>">
									<div class="input-group-prepend">
										<span class="input-group-text">帧</span>
									</div>
								</div>
							</div>

							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">自动播放片源</label>
								<select class="form-control" id="start_on_prepared">
									<option value="0" <?php if ($main['start_on_prepared'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
									<option value="1" <?php if ($main['start_on_prepared'] == '1') echo 'selected = "selected"'; ?>>开启</option>
								</select>
							</div>

							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">异步解码</label>
								<select class="form-control" id="async_init_decoder">
									<option value="0" <?php if ($main['async_init_decoder'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
									<option value="1" <?php if ($main['async_init_decoder'] == '1') echo 'selected = "selected"'; ?>>开启</option>
								</select>
							</div>

							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">显示预加载(缓冲区)</label>
								<select class="form-control" id="packet_buffering">
									<option value="0" <?php if ($main['packet_buffering'] == '0') echo 'selected = "selected"'; ?>>关闭(极速)</option>
									<option value="1" <?php if ($main['packet_buffering'] == '1') echo 'selected = "selected"'; ?>>开启(安全)</option>

								</select>
							</div>

						</div>

						<div class="eruyi-fgx-z">
							<div class="eruyi-fgx-x"></div>
							<div class="eruyi-fgx-s"></div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-12">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">点播设置</span>
									</div>
								</div>
							</div>
						</div>

						<div class="form-row">



							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">初装播放器内核</label>
								<select class="form-control" id="play_core">
									<option value="自动" <?php if ($main['play_core'] == '自动') echo 'selected = "selected"'; ?>>自动内核</option>
									<option value="系统" <?php if ($main['play_core'] == '系统') echo 'selected = "selected"'; ?>>系统内核</option>
									<option value="IJK" <?php if ($main['play_core'] == 'IJK') echo 'selected = "selected"'; ?>>IJK内核(推荐)</option>
									<option value="EXO" <?php if ($main['play_core'] == 'EXO') echo 'selected = "selected"'; ?>>EXO内核</option>
									<option value="阿里" <?php if ($main['play_core'] == '阿里') echo 'selected = "selected"'; ?>>阿里内核</option>
								</select>
							</div>

							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">自动换源</label>
								<select class="form-control" id="Auto_Source">
									<option value="0" <?php if ($main['Auto_Source'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
									<option value="1" <?php if ($main['Auto_Source'] == '1') echo 'selected = "selected"'; ?>>开启</option>
								</select>
							</div>

							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">卡顿换源(需开启自动换源和显示预加载)</label>
								<select class="form-control" id="vod_caton_check">
									<option value="0" <?php if ($main['vod_caton_check'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
									<option value="1" <?php if ($main['vod_caton_check'] == '1') echo 'selected = "selected"'; ?>>开启</option>
								</select>
							</div>

							<div class="form-group col-md-3">
								<label class="col-form-label">卡顿换源时间</label>
								<div class="input-group">
									<input type="number" class="form-control" id="seizing_time" placeholder="8" value="<?php echo $main['seizing_time']; ?>">
									<div class="input-group-prepend">
										<span class="input-group-text">秒</span>
									</div>
								</div>
							</div>




						</div>

						<div class="eruyi-fgx-z">
							<div class="eruyi-fgx-x"></div>
							<div class="eruyi-fgx-s"></div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-12">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">直播设置</span>
									</div>
								</div>
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">初装播放器内核</label>
								<select class="form-control" id="live_core">
									<option value="自动" <?php if ($main['live_core'] == '自动') echo 'selected = "selected"'; ?>>自动内核</option>
									<option value="系统" <?php if ($main['live_core'] == '系统') echo 'selected = "selected"'; ?>>系统内核</option>
									<option value="IJK" <?php if ($main['live_core'] == 'IJK') echo 'selected = "selected"'; ?>>IJK内核(推荐)</option>
									<option value="EXO" <?php if ($main['live_core'] == 'EXO') echo 'selected = "selected"'; ?>>EXO内核</option>
									<option value="阿里" <?php if ($main['live_core'] == '阿里') echo 'selected = "selected"'; ?>>阿里内核</option>
								</select>
							</div>

							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">卡顿校验(需开启显示预加载)</label>
								<select class="form-control" id="caton_check">
									<option value="0" <?php if ($main['caton_check'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
									<option value="1" <?php if ($main['caton_check'] == '1') echo 'selected = "selected"'; ?>>开启</option>
								</select>
							</div>

							<div class="form-group col-md-2">
								<label class="col-form-label">卡顿校验时间</label>
								<div class="input-group">
									<input type="number" class="form-control" id="check_time" placeholder="5" value="<?php echo $main['check_time']; ?>">
									<div class="input-group-prepend">
										<span class="input-group-text">秒</span>
									</div>
								</div>
							</div>

							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">卡顿解决方式</label>
								<select class="form-control" id="Tackle_mode">
									<option value="0" <?php if ($main['Tackle_mode'] == '0') echo 'selected = "selected"'; ?>>重载</option>
									<option value="1" <?php if ($main['Tackle_mode'] == '1') echo 'selected = "selected"'; ?>>换源</option>
								</select>
							</div>

							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">源用尽处理</label>
								<select class="form-control" id="live_no_source">
									<option value="0" <?php if ($main['live_no_source'] == '0') echo 'selected = "selected"'; ?>>重新换源</option>
									<option value="1" <?php if ($main['live_no_source'] == '1') echo 'selected = "selected"'; ?>>切换频道</option>
								</select>
							</div>

							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">显示实时网速</label>
								<select class="form-control" id="networkspeed">
									<option value="0" <?php if ($main['networkspeed'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
									<option value="1" <?php if ($main['networkspeed'] == '1') echo 'selected = "selected"'; ?>>开启</option>
								</select>
							</div>

							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">换台风格</label>
								<select class="form-control" id="epg">
									<option value="0" <?php if ($main['epg'] == '0') echo 'selected = "selected"'; ?>>点播风格</option>
									<option value="1" <?php if ($main['epg'] == '1') echo 'selected = "selected"'; ?>>现代风格</option>
									<option value="2" <?php if ($main['epg'] == '2') echo 'selected = "selected"'; ?>>经典风格</option>
								</select>
							</div>

							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">换台方式</label>
								<select class="form-control" id="switchs">
									<option value="0" <?php if ($main['switchs'] == '0') echo 'selected = "selected"'; ?>>定帧</option>
									<option value="1" <?php if ($main['switchs'] == '1') echo 'selected = "selected"'; ?>>遮挡</option>
								</select>
							</div>

							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">记忆直播源</label>
								<select class="form-control" id="memory_source">
									<option value="0" <?php if ($main['memory_source'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
									<option value="1" <?php if ($main['memory_source'] == '1') echo 'selected = "selected"'; ?>>记忆</option>
								</select>
							</div>

							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">记忆直播频道</label>
								<select class="form-control" id="memory_channel">
									<option value="0" <?php if ($main['memory_channel'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
									<option value="1" <?php if ($main['memory_channel'] == '1') echo 'selected = "selected"'; ?>>记忆</option>
								</select>
							</div>

							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">进度条时间</label>
								<select class="form-control" id="no_time_adjust">
									<option value="0" <?php if ($main['no_time_adjust'] == '0') echo 'selected = "selected"'; ?>>播放时间</option>
									<option value="1" <?php if ($main['no_time_adjust'] == '1') echo 'selected = "selected"'; ?>>真实时间</option>
								</select>
							</div>

							<div class="form-group col-md-2">
								<label for="f_user" class="col-form-label">无限缓冲(非直播流关闭)</label>
								<select class="form-control" id="infbuf">
									<option value="0" <?php if ($main['infbuf'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
									<option value="1" <?php if ($main['infbuf'] == '1') echo 'selected = "selected"'; ?>>开启</option>
								</select>
							</div>

						</div>


					</div>

					<div class="tab-pane" id="ts-ini">
						<div class="form-row">
							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">嗅探调试</label>
								<select class="form-control" id="Sniff_debug_mode">
									<option value="0" <?php if ($main['Sniff_debug_mode'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
									<option value="1" <?php if ($main['Sniff_debug_mode'] == '1') echo 'selected = "selected"'; ?>>开启</option>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">解析调试</label>
								<select class="form-control" id="Play_timeout_debug">
									<option value="0" <?php if ($main['Play_timeout_debug'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
									<option value="1" <?php if ($main['Play_timeout_debug'] == '1') echo 'selected = "selected"'; ?>>开启</option>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">播放器DEBUG</label>
								<select class="form-control" id="Ijk_log_debug">
									<option value="1" <?php if ($main['Ijk_log_debug'] == '1') echo 'selected = "selected"'; ?>>关闭</option>
									<option value="0" <?php if ($main['Ijk_log_debug'] == '0') echo 'selected = "selected"'; ?>>开启</option>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">抓包检测</label>
								<select class="form-control" id="Vpn_check">
									<option value="1" <?php if ($main['Vpn_check'] == '1') echo 'selected = "selected"'; ?>>开启</option>
									<option value="0" <?php if ($main['Vpn_check'] == '0') echo 'selected = "selected"'; ?>>调试</option>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">XP检测</label>
								<select class="form-control" id="Xp_check">
									<option value="1" <?php if ($main['Xp_check'] == '1') echo 'selected = "selected"'; ?>>开启</option>
									<option value="0" <?php if ($main['Xp_check'] == '0') echo 'selected = "selected"'; ?>>调试</option>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label class="col-form-label">APK签名MD5</label>
								<div class="input-group">
									<input type="text" class="form-control" id="Verifysign" placeholder="e89b158e4bcf988ebd09eb83f5378e87" value="<?php echo $main['Verifysign']; ?>">
								</div>
							</div>
							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">签名验证</label>
								<select class="form-control" id="Verifysign_check">
									<option value="1" <?php if ($main['Verifysign_check'] == '1') echo 'selected = "selected"'; ?>>验证</option>
									<option value="0" <?php if ($main['Verifysign_check'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label for="f_user" class="col-form-label">应用名校验</label>
								<select class="form-control" id="Name_check">
									<option value="1" <?php if ($main['Name_check'] == '1') echo 'selected = "selected"'; ?>>校验</option>
									<option value="0" <?php if ($main['Name_check'] == '0') echo 'selected = "selected"'; ?>>关闭</option>
								</select>
							</div>
						</div>



					</div>


				</div>
			</div> <!-- end card-body-->
		</div> <!-- end card-->
	</div> <!-- end col -->
</div>
<!-- end row-->


<!-- Form row -->
<div class="row">
	<div class="col-12">
		<div class="card">
			<div class="card-body">
				<button type="submit" class="btn btn-block btn-primary" id="submit">确认修改</button>
			</div> <!-- end card-body -->
		</div> <!-- end card-->
	</div> <!-- end col -->
</div>

<script>
	$("#app_adm").addClass("active");
	$('#submit').click(function() {
		let t = window.jQuery;

		var state = document.getElementById("state").checked ? 'y' : 'n';
		var logon_state = document.getElementById("logon_state").checked ? 'y' : 'n';
		var reg_state = document.getElementById("reg_state").checked ? 'y' : 'n';
		var mi_state = document.getElementById("mi_state").checked ? 'y' : 'n';
		var smtp_state = document.getElementById("smtp_state").checked ? 'y' : 'n';
		var sms_state = document.getElementById("sms_state").checked ? 'y' : 'n';
		var pay_ali_state = document.getElementById("pay_ali_state").checked ? 'y' : 'n';
		var pay_wx_state = document.getElementById("pay_wx_state").checked ? 'y' : 'n';
		var pay_qq_state = document.getElementById("pay_qq_state").checked ? 'y' : 'n';
		var android_state = document.getElementById("android_state").checked ? 'y' : 'n';
		var ios_state = document.getElementById("ios_state").checked ? 'y' : 'n';

		var name = $("#name").val();
		var appkey = $("#appkey").val();
		var mode = $("#mode").val();
		var notice = $("#notice").val();

		var reg_ipon = $("#reg_ipon").val();
		var reg_inon = $("#reg_inon").val();
		var reg_award = $("#reg_award").val();
		var reg_award_num = $("#reg_award_num").val();
		var inv_award = $("#inv_award").val();
		var inv_award_num = $("#inv_award_num").val();
		var reg_notice = $("#reg_notice").val();

		var logon_check_in = $("#logon_check_in").val();
		var logon_check_t = $("#logon_check_t").val();
		var logon_num = $("#logon_num").val();
		var diary_award = $("#diary_award").val();
		var diary_award_num = $("#diary_award_num").val();
		var logon_notice = $("#logon_notice").val();

		var pay_ali_eurl = $("#pay_ali_eurl").val();
		var pay_ali_eid = $("#pay_ali_eid").val();
		var pay_ali_ekey = $("#pay_ali_ekey").val();
		var pay_ali_notify = $("#pay_ali_notify").val();

		var pay_wx_eurl = $("#pay_wx_eurl").val();
		var pay_wx_eid = $("#pay_wx_eid").val();
		var pay_wx_ekey = $("#pay_wx_ekey").val();
		var pay_wx_notify = $("#pay_wx_notify").val();

		var pay_qq_eurl = $("#pay_qq_eurl").val();
		var pay_qq_eid = $("#pay_qq_eid").val();
		var pay_qq_ekey = $("#pay_qq_ekey").val();
		var pay_qq_notify = $("#pay_qq_notify").val();

		var pay_ali_appid = $("#pay_ali_appid").val();
		var pay_ali_public_key = $("#pay_ali_public_key").val();
		var pay_ali_private_key = $("#pay_ali_private_key").val();
		var pay_wx_appid = $("#pay_wx_appid").val();
		var pay_wx_mchid = $("#pay_wx_mchid").val();
		var pay_wx_key = $("#pay_wx_key").val();
		var pay_wx_appsecret = $("#pay_wx_appsecret").val();
		var pay_qq_mchid = $("#pay_qq_mchid").val();
		var pay_qq_mchkey = $("#pay_qq_mchkey").val();

		var smtp_host = $("#smtp_host").val();
		var smtp_user = $("#smtp_user").val();
		var smtp_pass = $("#smtp_pass").val();
		var smtp_port = $("#smtp_port").val();

		var sms_key = $("#sms_key").val();

		var mi_type = $("#mi_type").val();
		var mi_sign = $("#mi_sign").val();
		var mi_time = $("#mi_time").val();
		var mi_aes_key = $("#mi_aes_key").val();
		var mi_aes_iv = $("#mi_aes_iv").val();
		var mi_rsa_private_key = $("#mi_rsa_private_key").val();
		var mi_rsa_public_key = $("#mi_rsa_public_key").val();
		var mi_rc4_key = $("#mi_rc4_key").val();

		var ios_bb = $("#ios_bb").val();
		var ios_url = $("#ios_url").val();
		var ios_show = $("#ios_show").val();
		var downloadtype2 = $("#downloadtype2").val();
		var downloadpwd2 = $("#downloadpwd2").val();

		var android_bb = $("#android_bb").val();
		var android_url = $("#android_url").val();
		var android_show = $("#android_show").val();
		var downloadtype1 = $("#downloadtype1").val();
		var downloadpwd1 = $("#downloadpwd1").val();

		var logon_way = $("#logon_way").val();

		//--------------------------------------addstart by xg@20250817--------------------------------------
		var Base_host = $("#Base_host").val();
		var User_url = $("#User_url").val();
		var Api_url = $("#Api_url").val();
		var Fb_url = $("#Fb_url").val();
		var Ad_url = $("#Ad_url").val();
		var Home_text_shadow = $("#Home_text_shadow").val();
		var Ad_time = $("#Ad_time").val();
		var Ad_jump = $("#Ad_jump").val();
		var play_jump = $("#play_jump").val();
		var play_jump_end = $("#play_jump_end").val();
		var Login_control = $("#Login_control").val();
		var Exit_Message = $("#Exit_Message").val();
		var Client = $("#Client").val();
		var Fb_type = $("#Fb_type").val();
		var Vod_Notice_starting_time = $("#Vod_Notice_starting_time").val();
		var Vod_Notice_end_time = $("#Vod_Notice_end_time").val();
		var Logo_url = $("#Logo_url").val();
		var EpisodesNumber = $("#EpisodesNumber").val();
		var Force_Style = $("#Force_Style").val();
		var Interface_Style = $("#Interface_Style").val();
		var Allow_changing_styles = $("#Allow_changing_styles").val();
		var Topic = $("#Topic").val();
		var vod_Logo = $("#vod_Logo").val();
		var CornerLabelView = $("#CornerLabelView").val();
		var Pwd_text = $("#Pwd_text").val();
		var play_core = $("#play_core").val();
		var play_decode = $("#play_decode").val();
		var play_ratio = $("#play_ratio").val();
		var packet_buffering = $("#packet_buffering").val();
		var videotimeout = $("#videotimeout").val();
		var http_detect_range_support = $("#http_detect_range_support").val();
		var reconnect = $("#reconnect").val();
		var resources_reconnect = $("#resources_reconnect").val();
		var live_streaming = $("#live_streaming").val();
		var skip_loop_filter = $("#skip_loop_filter").val();
		var Navigation_mode = $("#Navigation_mode").val();
		var Sniff_debug_mode = $("#Sniff_debug_mode").val();
		var Play_timeout_debug = $("#Play_timeout_debug").val();
		var Ijk_log_debug = $("#Ijk_log_debug").val();
		var Vpn_check = $("#Vpn_check").val();
		var Xp_check = $("#Xp_check").val();
		var Verifysign = $("#Verifysign").val();
		var Verifysign_check = $("#Verifysign_check").val();
		var Name_check = $("#Name_check").val();
		var Random_ad = $("#Random_ad").val();
		var Settings_page = $("#Settings_page").val();
		var Auto_Source = $("#Auto_Source").val();
		var UpdateNumber = $("#UpdateNumber").val();

		var vod_caton_check = $("#vod_caton_check").val();
		var seizing_time = $("#seizing_time").val();
		var framedrop = $("#framedrop").val();
		var start_on_prepared = $("#start_on_prepared").val();
		var async_init_decoder = $("#async_init_decoder").val();
		var live_core = $("#live_core").val();
		var caton_check = $("#caton_check").val();
		var check_time = $("#check_time").val();
		var Tackle_mode = $("#Tackle_mode").val();
		var networkspeed = $("#networkspeed").val();
		var epg = $("#epg").val();
		var switchs = $("#switchs").val();
		var memory_source = $("#memory_source").val();
		var memory_channel = $("#memory_channel").val();
		var no_time_adjust = $("#no_time_adjust").val();
		var infbuf = $("#infbuf").val();
		var live_no_source = $("#live_no_source").val();
		var xuanjitype = $("#xuanjitype").val();
		var xuanjinumber = $("#xuanjinumber").val();
		var reverse = $("#reverse").val();
		var remember_source = $("#remember_source").val();
		var Same_source_search = $("#Same_source_search").val();
		var search = $("#search").val();
		var searchport = $("#searchport").val();
		//--------------------------------------addend by xg@20250817--------------------------------------

		document.getElementById('submit').innerHTML = "<span class=\"spinner-border spinner-border-sm mr-1\" role=\"status\" aria-hidden=\"true\"></span>正在修改";
		document.getElementById('submit').disabled = true;



		var appData = {
			id: <?php echo $id; ?>,
			state: state,
			logon_state: logon_state,
			reg_state: reg_state,
			mi_state: mi_state,
			smtp_state: smtp_state,
			sms_state: sms_state,
			pay_ali_state: pay_ali_state,
			pay_wx_state: pay_wx_state,
			pay_qq_state: pay_qq_state,
			android_state: android_state,
			ios_state: ios_state,

			name: name,
			appkey: appkey,
			mode: mode,
			notice: notice,

			reg_ipon: reg_ipon,
			reg_inon: reg_inon,
			reg_award: reg_award,
			reg_award_num: reg_award_num,
			inv_award: inv_award,
			inv_award_num: inv_award_num,
			reg_notice: reg_notice,

			logon_check_in: logon_check_in,
			logon_check_t: logon_check_t,
			logon_num: logon_num,
			diary_award: diary_award,
			diary_award_num: diary_award_num,
			logon_notice: logon_notice,

			pay_ali_eurl: pay_ali_eurl,
			pay_ali_eid: pay_ali_eid,
			pay_ali_ekey: pay_ali_ekey,
			pay_ali_notify: pay_ali_notify,

			pay_wx_eurl: pay_wx_eurl,
			pay_wx_eid: pay_wx_eid,
			pay_wx_ekey: pay_wx_ekey,
			pay_wx_notify: pay_wx_notify,

			pay_qq_eurl: pay_qq_eurl,
			pay_qq_eid: pay_qq_eid,
			pay_qq_ekey: pay_qq_ekey,
			pay_qq_notify: pay_qq_notify,

			pay_ali_appid: pay_ali_appid,
			pay_ali_public_key: pay_ali_public_key,
			pay_ali_private_key: pay_ali_private_key,
			pay_wx_appid: pay_wx_appid,
			pay_wx_mchid: pay_wx_mchid,
			pay_wx_key: pay_wx_key,
			pay_wx_appsecret: pay_wx_appsecret,
			pay_qq_mchid: pay_qq_mchid,
			pay_qq_mchkey: pay_qq_mchkey,

			smtp_host: smtp_host,
			smtp_user: smtp_user,
			smtp_pass: smtp_pass,
			smtp_port: smtp_port,

			sms_key: sms_key,

			mi_type: mi_type,
			mi_sign: mi_sign,
			mi_time: mi_time,
			mi_aes_key: mi_aes_key,
			mi_aes_iv: mi_aes_iv,
			mi_rsa_private_key: mi_rsa_private_key,
			mi_rsa_public_key: mi_rsa_public_key,
			mi_rc4_key: mi_rc4_key,

			ios_bb: ios_bb,
			ios_url: ios_url,
			ios_show: ios_show,
			downloadtype2: downloadtype2,
			downloadpwd2: downloadpwd2,

			android_bb: android_bb,
			android_url: android_url,
			android_show: android_show,
			downloadtype1: downloadtype1,
			downloadpwd1: downloadpwd1,

			logon_way: logon_way
		}
		var mainData = {
			//--------------------------------------add by xg@20250817--------------------------------------
			Base_host: Base_host,
			User_url: User_url,
			Api_url: Api_url,
			Fb_url: Fb_url,
			Ad_url: Ad_url,
			Home_text_shadow,
			Ad_time: Ad_time,
			Ad_jump: Ad_jump,
			play_jump: play_jump,
			play_jump_end: play_jump_end,
			Login_control: Login_control,
			Exit_Message: Exit_Message,
			Client: Client,
			Fb_type: Fb_type,
			Vod_Notice_starting_time: Vod_Notice_starting_time,
			Vod_Notice_end_time: Vod_Notice_end_time,
			Logo_url: Logo_url,
			EpisodesNumber: EpisodesNumber,
			Force_Style: Force_Style,
			Interface_Style: Interface_Style,
			Allow_changing_styles: Allow_changing_styles,
			Topic: Topic,
			vod_Logo: vod_Logo,
			CornerLabelView: CornerLabelView,
			Pwd_text,
			Pwd_text,
			play_core: play_core,
			play_decode: play_decode,
			play_ratio: play_ratio,
			packet_buffering: packet_buffering,
			videotimeout: videotimeout,
			http_detect_range_support: http_detect_range_support,
			reconnect: reconnect,
			resources_reconnect: resources_reconnect,
			live_streaming: live_streaming,
			skip_loop_filter: skip_loop_filter,
			Navigation_mode: Navigation_mode,
			Sniff_debug_mode: Sniff_debug_mode,
			Play_timeout_debug: Play_timeout_debug,
			Ijk_log_debug: Ijk_log_debug,
			Vpn_check: Vpn_check,
			Xp_check: Xp_check,
			Verifysign: Verifysign,
			Verifysign_check: Verifysign_check,
			Name_check: Name_check,
			Random_ad: Random_ad,
			Settings_page: Settings_page,
			Auto_Source: Auto_Source,
			UpdateNumber: UpdateNumber,

			vod_caton_check: vod_caton_check,
			seizing_time: seizing_time,
			framedrop: framedrop,
			start_on_prepared: start_on_prepared,
			async_init_decoder: async_init_decoder,
			live_core: live_core,
			caton_check: caton_check,
			check_time: check_time,
			Tackle_mode: Tackle_mode,
			networkspeed: networkspeed,
			epg: epg,
			switchs: switchs,
			memory_source: memory_source,
			memory_channel: memory_channel,
			no_time_adjust: no_time_adjust,
			infbuf: infbuf,
			live_no_source: live_no_source,
			xuanjitype: xuanjitype,
			xuanjinumber: xuanjinumber,
			reverse: reverse,
			remember_source: remember_source,
			Same_source_search: Same_source_search,
			search: search,
			searchport: searchport
			//--------------------------------------addend by xg@20250817--------------------------------------
		}

		// console.log(data);
		// return false;

		$.ajax({
			cache: false,
			type: "POST", //请求的方式
			url: "ajax.php?act=app_edit", //请求的文件名
			data: {
				id: <?php echo $id; ?>,
				name: name,
				appData: appData,
				mainData: mainData
			},
			dataType: 'json',
			success: function(data) {
				console.log(data);
				document.getElementById('submit').disabled = false;
				document.getElementById('submit').innerHTML = "确认修改";
				if (data.code == 200) {
					t.NotificationApp.send("成功", data.msg, "top-center", "rgba(0,0,0,0.2)", "success")
					//window.setTimeout("window.location='"+window.location.href+"'",1000);
				} else {
					t.NotificationApp.send("失败", data.msg, "top-center", "rgba(0,0,0,0.2)", "error")
				}
			}
		});
		return false; //重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
	});


	function mi_type_v(i) {
		if (i == 0) {
			$("#mi_type_0").css("display", "block");
			$("#mi_type_1").css("display", "none");
			$("#mi_type_2").css("display", "none");
			$("#mi_type_3").css("display", "none");
		} else if (i == 1) {
			$("#mi_type_0").css("display", "none");
			$("#mi_type_1").css("display", "block");
			$("#mi_type_2").css("display", "none");
			$("#mi_type_3").css("display", "none");
		} else if (i == 2) {
			$("#mi_type_0").css("display", "none");
			$("#mi_type_1").css("display", "none");
			$("#mi_type_2").css("display", "block");
			$("#mi_type_3").css("display", "none");
		} else if (i == 3) {
			$("#mi_type_0").css("display", "none");
			$("#mi_type_1").css("display", "none");
			$("#mi_type_2").css("display", "none");
			$("#mi_type_3").css("display", "block");
		}
	}

	function pay_ali_type_v(i) {
		if (i == 0) {
			$("#pay_ali_type_0").css("display", "block");
			$("#pay_ali_type_1").css("display", "none");
			$("#pay_ali_type_2").css("display", "none");
		} else if (i == 1) {
			$("#pay_ali_type_0").css("display", "none");
			$("#pay_ali_type_1").css("display", "block");
			$("#pay_ali_type_2").css("display", "none");

		} else if (i == 2) {
			$("#pay_ali_type_0").css("display", "none");
			$("#pay_ali_type_1").css("display", "none");
			$("#pay_ali_type_2").css("display", "block");
		}
	}

	function pay_wx_type_v(i) {
		if (i == 0) {
			$("#pay_wx_type_0").css("display", "block");
			$("#pay_wx_type_1").css("display", "none");
			$("#pay_wx_type_2").css("display", "none");
		} else if (i == 1) {
			$("#pay_wx_type_0").css("display", "none");
			$("#pay_wx_type_1").css("display", "block");
			$("#pay_wx_type_2").css("display", "none");
		} else if (i == 2) {
			$("#pay_wx_type_0").css("display", "none");
			$("#pay_wx_type_1").css("display", "none");
			$("#pay_wx_type_2").css("display", "block");
		}
	}

	function pay_qq_type_v(i) {
		if (i == 0) {
			$("#pay_qq_type_0").css("display", "block");
			$("#pay_qq_type_1").css("display", "none");
			$("#pay_qq_type_2").css("display", "none");
		} else if (i == 1) {
			$("#pay_qq_type_0").css("display", "none");
			$("#pay_qq_type_1").css("display", "block");
			$("#pay_qq_type_2").css("display", "none");

		} else if (i == 2) {
			$("#pay_qq_type_0").css("display", "none");
			$("#pay_qq_type_1").css("display", "none");
			$("#pay_qq_type_2").css("display", "block");
		}
	}

	function smtp_state_v(i) {
		//console.log(i);
		if (i == true) {
			$("#smtp_state_y").css("display", "block");
			$("#smtp_state_n").css("display", "none");
		} else {
			$("#smtp_state_y").css("display", "none");
			$("#smtp_state_n").css("display", "block");
		}
	}

	function sms_state_v(i) {
		//console.log(i);
		if (i == true) {
			$("#sms_state_y").css("display", "block");
			$("#sms_state_n").css("display", "none");
		} else {
			$("#sms_state_y").css("display", "none");
			$("#sms_state_n").css("display", "block");
		}
	}

	function mi_state_v(i) {
		//console.log(i);
		if (i == true) {
			$("#mi_state_y").css("display", "block");
			$("#mi_state_n").css("display", "none");
		} else {
			$("#mi_state_y").css("display", "none");
			$("#mi_state_n").css("display", "block");
		}
	}

	function pay_ali_state_v(i) {
		//console.log(i);
		if (i == true) {
			$("#pay_ali_state_y").css("display", "block");
			$("#pay_ali_state_n").css("display", "none");
		} else {
			$("#pay_ali_state_y").css("display", "none");
			$("#pay_ali_state_n").css("display", "block");
		}
	}

	function pay_wx_state_v(i) {
		//console.log(i);
		if (i == true) {
			$("#pay_wx_state_y").css("display", "block");
			$("#pay_wx_state_n").css("display", "none");
		} else {
			$("#pay_wx_state_y").css("display", "none");
			$("#pay_wx_state_n").css("display", "block");
		}
	}

	function pay_qq_state_v(i) {
		//console.log(i);
		if (i == true) {
			$("#pay_qq_state_y").css("display", "block");
			$("#pay_qq_state_n").css("display", "none");
		} else {
			$("#pay_qq_state_y").css("display", "none");
			$("#pay_qq_state_n").css("display", "block");
		}
	}


	function state_v(i) {
		if (i == true) {
			$("#state_y").css("display", "block");
			$("#state_n").css("display", "none");
		} else {
			$("#state_y").css("display", "none");
			$("#state_n").css("display", "block");
		}
	}

	function logon_check_in_v(i) {
		if (i == 'y') {
			$("#logon_num").val("1");
			$("#logon_num").attr("disabled", true);
		} else {

			$("#logon_num").attr("disabled", false);
		}
	}

	function android_v(i) {
		if (i == true) {
			$("#android_y").css("display", "block");
			$("#android_n").css("display", "none");
		} else {
			$("#android_y").css("display", "none");
			$("#android_n").css("display", "block");
		}
	}

	function ios_v(i) {
		if (i == true) {
			$("#ios_y").css("display", "block");
			$("#ios_n").css("display", "none");
		} else {
			$("#ios_y").css("display", "none");
			$("#ios_n").css("display", "block");
		}
	}

	function reg_state_v(i) {
		if (i == true) {
			$("#reg_state_y").css("display", "block");
			$("#reg_state_n").css("display", "none");
		} else {
			$("#reg_state_y").css("display", "none");
			$("#reg_state_n").css("display", "block");
		}
	}

	function logon_state_v(i) {
		if (i == true) {
			$("#logon_state_y").css("display", "block");
			$("#logon_state_n").css("display", "none");
		} else {
			$("#logon_state_y").css("display", "none");
			$("#logon_state_n").css("display", "block");
		}
	}

	function reg_change() {
		if ($('#reg_award').val() == 'vip') {
			document.getElementById('reg_award_a').innerHTML = "分钟";
		} else {
			document.getElementById('reg_award_a').innerHTML = "积分";
		}
	}

	function diary_change() {
		if ($('#diary_award').val() == 'vip') {
			document.getElementById('diary_award_a').innerHTML = "分钟";
		} else {
			document.getElementById('diary_award_a').innerHTML = "积分";
		}
	}

	function inv_change() {
		if ($('#inv_award').val() == 'vip') {
			document.getElementById('inv_award_a').innerHTML = "小时";
		} else {
			document.getElementById('inv_award_a').innerHTML = "积分";
		}
	}

	$('#copy_id').click(function() {
		let t = window.jQuery;
		var appid = "<?php echo $id; ?>";
		var oInput = document.createElement('input');
		oInput.value = appid;
		document.body.appendChild(oInput);
		oInput.select(); // 选择对象
		document.execCommand("Copy"); // 执行浏览器复制命令
		oInput.className = 'oInput';
		oInput.style.display = 'none';
		t.NotificationApp.send("成功", 'APPID复制成功', "top-center", "rgba(0,0,0,0.2)", "success")
	});

	$('#copy_key').click(function() {
		let t = window.jQuery;
		var appkey = $("#appkey").val();
		var oInput = document.createElement('input');
		oInput.value = appkey;
		document.body.appendChild(oInput);
		oInput.select(); // 选择对象
		document.execCommand("Copy"); // 执行浏览器复制命令
		oInput.className = 'oInput';
		oInput.style.display = 'none';
		t.NotificationApp.send("成功", 'APPKEY复制成功', "top-center", "rgba(0,0,0,0.2)", "success")
	});

	$('#bian_key').click(function() {
		var appkey = randomString(32);
		$("#appkey").val(appkey);
	});

	$('#mi_skey').click(function() {
		var mi_type = $("#mi_type").val();
		if (mi_type == 1) {
			var key = randomString(32);
		} else {
			var key = randomString(16);
		}
		$("#mi_rc4_key").val(key);
	});

	$('#alipay').click(function() {
		window.open('https://openhome.alipay.com/dev/workspace/key-manage');
		return false; //重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
	});

	function randomString(len) {
		len = len || 32;
		var $chars = 'ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz2345678'; /****默认去掉了容易混淆的字符oOLl,9gq,Vv,Uu,I1****/
		var maxPos = $chars.length;
		var pwd = '';
		for (i = 0; i < len; i++) {
			pwd += $chars.charAt(Math.floor(Math.random() * maxPos));
		}
		return pwd;
	}

	function logon_check_in_a(i) {
		if (i == '0') {
			$("#downloadpwd1").val("<?php echo $res['downloadpwd1']; ?>");
			$("#downloadpwd1").attr("disabled", true);
		} else {
			$("#downloadpwd1").attr("disabled", false);
		}
	}

	function logon_check_in_b(i) {
		if (i == '0') {
			$("#downloadpwd2").val("<?php echo $res['downloadpwd2']; ?>");
			$("#downloadpwd2").attr("disabled", true);
		} else {
			$("#downloadpwd2").attr("disabled", false);
		}
	}

	$('#mi_skey_aes').click(function() {
		var key = randomString(32);
		$("#mi_aes_key").val(key);
		var key = randomString(16);
		$("#mi_aes_iv").val(key);
	});
	
			function logon_check_in_d(i) {
// 			if(i=='0'){
// 				$("#Topic").val("<?php echo $main['Topic']; ?>");
// 				$("#Topic").attr("disabled",false);
// 			}else{
// 			    $("#Topic").val("<?php echo 0; ?>");
// 				$("#Topic").attr("disabled",true);
// 			}
		}
	
	
</script>