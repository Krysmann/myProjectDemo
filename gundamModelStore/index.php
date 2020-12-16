<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>K宝模型</title>
	</head>
	<link type="text/css" href="css/index.css" rel="stylesheet" />
	<link type="text/css" href="css/index2.css" rel="stylesheet" />
	<link type="text/css" href="css/modal.css" rel="stylesheet" />
	<body>
		<!--modal begin-->
		<div class="modal" id="modal">
			<div class="container">
				<div class="close" id="closemodal">X</div>
				<img src="img/pikaq.gif" style="position: absolute;left: 0;right: 0;top: 50px; width: 400px;"/>
				<form method="post" action="login.php">
					<div class="reg">
						<div class="tips">
							<div class="cont-wrapper">
								<p style="text-align: center;color: #B5B5B5;">K宝模型不会以任何理由要求您转账汇款，谨防诈骗</p>							
							</div>							
						</div>
						<div class="login-tab-l">
							<a href="#" onclick="alert('暂不支持扫码登录')">扫码登录</a>
						</div>						
						<div class="login-tab-r">
							<a href="#">账户登录</a>
						</div>
						<div class="login-form">
							<form method="post" action="login.php">
								<div class="form-item-username">
									<input style="width: 300px;height: 30px;line-height: 30px;position: absolute;left: 50px;top: 70px;" type="text" name="username" class="form-item-text" value placeholder="邮箱/用户名"/>
								</div>
								<div class="form-item-password">
									<input style="width: 300px;height: 30px;line-height: 30px;position: absolute;left: 50px;top: 130px;"  type="password" name="password" id="pw1" class="form-item-password" value placeholder="密码"/>
								</div>
								<br><br><br><br><br><br><br><br>
								<div class="form-item-forgetpw">
									<a href="#">忘记密码</a>
								</div>
								<div class="form-item-submit">
									<input style="width: 300px;height: 30px;background: #F10215;border: 1px solid #F10215;color: #FFFFFF;" type="submit" value="登   录"/>
										<br><br>
									<input style="width: 300px;height: 30px;background: #FFFFFF;border: 1px solid #F10215;color: #F10215;" type="button" value="注   册" onclick="window.open('REgisterhtml.php')"/>
								</div>
								<div class="form-item-ul">
									<ul class="item-ul" style="position: absolute;">
										<li><img src="img/icon/QQ.png" style="width: 30px; height: 30px;position: absolute;left: -10px;top: -6px;"  ><a href="#" onclick="alert('暂不支持QQ登录')">QQ</a></li>
										<li><img src="img/icon/Wechat.png" style="width: 30px; height: 30px;position: absolute;left: 58px;top: -6px;" ><a href="#" onclick="alert('暂不支持微信登录')">微信</a></li>
									</ul>
								</div>
							</form>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!--modal end-->
		
		<!--header begin-->
		<div class="header-div">
			<!--header-left-->
			<div class="header-div-left">
				<a href="#" class="active">广东</a>
					<div class="left-div">
						<div class="left-div1">
							<ul class="provice">
								<li><a href="#">北京</a></li>
								<li><a href="#">上海</a></li>
								<li><a href="#">天津</a></li>
								<li><a href="#">重庆</a></li>
								<li><a href="#">河北</a></li>
								<li><a href="#">山西</a></li>
								<li><a href="#">河南</a></li>
								<li><a href="#">辽宁</a></li>
								<li><a href="#">吉林</a></li>
								<li><a href="#">黑龙江</a></li>
								<li><a href="#">内蒙古</a></li>
								<li><a href="#">江苏</a></li>
								<li><a href="#">山东</a></li>
								<li><a href="#">安徽</a></li>
								<li><a href="#">浙江</a></li>
								<li><a href="#">福建</a></li>
								<li><a href="#">湖北</a></li>
								<li><a href="#">湖南</a></li>
								<li class="special"><a href="#" class="active">广东</a></li>
								<li><a href="#">广西</a></li>
								<li><a href="#">江西</a></li>
								<li><a href="#">四川</a></li>
								<li><a href="#">海南</a></li>
								<li><a href="#">贵州</a></li>
								<li><a href="#">云南</a></li>
								<li><a href="#">西藏</a></li>
								<li><a href="#">山西</a></li>
								<li><a href="#">甘肃</a></li>
								<li><a href="#">青海</a></li>
								<li><a href="#">宁夏</a></li>
								<li><a href="#">新疆</a></li>							
							</ul>
						</div>
						<hr style="width: 290px;margin: 0 auto;"/>
						<div class="left-div2">
							<ul class="regions">
								<li>地区专享版本</li><br>
								<li><a href="#">港澳地区</a></li>
								<li><a href="#">中国台湾</a></li>
								<li><a href="#">海外全球</a></li>
							</ul>
						</div>
					</div>				
			</div>		
		
			<!--header-right-->
			<div class="header-div-right">
				<ul class="right-ul">
					<li class="item">
						<?php if($login): ?>
						<span style="color: #F10215;"><a href="user_center.php"><?php echo $userinfo['username']; ?></a></span>
						<?php else: ?>
						<a href="#" id="openmodal">你好,请登录</a>	
						<?php endIf; ?>
					</li>
					<li class="spacer"></li>
					<li class="item">
						<a href="REgisterhtml.php" style="color: #F10215;">免费注册</a>
					</li>
					<li class="spacer"></li>
					<li class="item"><a href="#">我的订单</a></li>
					<li class="spacer"></li>
					<li class="item"><a href="#">K宝会员</a></li>
					<li class="spacer"></li>
					<li class="item pointer1">
						<a href="#">我的K宝</a>
						<i>▽</i>
						<div class="right-div1">
							<ul class="div1-ul">
								<li><a href="#">待处理订单</a></li>
								<li><a href="#">我的消息</a></li>
								<li><a href="#">我的关注</a></li>
								<li><a href="#">退换货</a></li>
								<li><a href="#">我的K豆</a></li>
								<li><a href="#">我的优惠券</a></li>
							</ul>
						</div>
					</li>
					<li class="spacer"></li>
					<li class="item pointer2">
						<a href="#">客户服务</a>
						<i>▽</i>
						<div class="right-div2">
							<ul class="div2-ul">
								<li><a href="#">帮助中心</a></li>
								<li><a href="#">售后服务</a></li>
								<li><a href="#">在线客服</a></li>
								<li><a href="#">意见建议</a></li>
								<li><a href="#">客服邮箱</a></li>
								<li><a href="#">联系方式</a></li>
							</ul>
						</div>
					</li>
					<li class="spacer"></li>
					<li class="item pointer3">
						<a href="#">网站导航</a>
						<i>▽</i>
						<div class="right-div3">
							<ul class="div3-ul">
								<li>
									<a href="#"><img src="img/bandai.jpg"></a>
									<h3>日本BANDAI公司</h3>
								</li>
								<li>
									<a href="#"><img src="img/BANPRESTO.jpg"></a>
									<h3>日本BANPRESTO公司</h3>
								</li>
							</ul>
						</div>
					</li>
					<li class="spacer"></li>
					<li class="item"><a href="#">手机客户端</a></li>		
				</ul>
			</div>
		</div>
		<!--header end-->
		
		<!--banner begin-->
		<div class="banner">
			<div class="banner-div">
				<div class="banner-logo">
					<img src="img/LOGO.jpg">
				</div>
				<div class="banner-middle">
					<div class="banner-search">
						<input type="text" class="input-text"/>	
						<input type="submit" class="input-sub1"/>
						<input type="submit" class="input-sub2" value="购物车" />
					</div>
					<div class="banner-ul">
						<ul>
							<li class="banner-first-li">搜索最多：</li>
							<li><a href="#">PG独角兽高达</a></li>
							<li><a href="#">MB强袭高达</a></li>
							<li><a href="#">MB红异端改</a></li>
							<li><a href="#">RG强袭自由</a></li>
							<li><a href="#">RG脉冲高达</a></li>
							<li><a href="#">Decade S.H.F真骨雕</a></li>
							<li><a href="#">SDCS巴巴托斯天狼座帝王形态</a></li>
						</ul>
					</div>
					<div class="guanggao">
						<div>
							<h4>广告位招租</h4>
						</div>
					</div>				
				</div>	
			</div>
		</div>
		<!--banner end-->
		
		<!--content begin-->
		<div id="content">
			<div class="content_bg">
				<div class="style">
					<span>
						<a href="webRG/web1.html">
							<img src="img/gundam/rg元祖高达.jpg" style="width: 250px;height: 200px;">						
							<h2>RG01 RX-78-2元祖163280</h2>
							<span class="cannotbuy">￥<b>90</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg夏亚红扎古.jpg" style="width: 250px;height: 200px;">
							<h2>RG02 夏亚红扎古165511</h2>
							<span class="cannotbuy">￥<b>90</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg空战强袭.jpg" style="width: 250px;height: 200px;">	
							<h2>RG03 空战突击169492</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg扎古11.jpg" style="width: 250px;height: 200px;">	
							<h2>RG04 扎古II 170388</h2>
							<span class="cannotbuy">￥<b>90</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg自由高达.jpg" style="width: 250px;height: 200px;">	
							<h2>RG05 自由高达171625</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>							
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg空中霸王.jpg" style="width: 250px;height: 200px;">
							<h2>RG06 空中霸王175306</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg泰坦斯黑兔.jpg" style="width: 250px;height: 200px;">	
							<h2>RG07 泰坦斯黑兔171716</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg奥古白兔.jpg" style="width: 250px;height: 200px;">
							<h2>RG08 奥古白兔176319</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>							
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg正义高达.jpg" style="width: 250px;height: 200px;">
							<h2>RG09 正义敢达176512</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">								
							<img src="img/gundam/rgZETA高达.jpg" style="width: 250px;height: 200px;">
							<h2>RG10 ZETA高达178539</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg命运高达.jpg" style="width: 250px;height: 200px;">
							<h2>RG11 命运高达181595</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg陆战78.jpg" style="width: 250px;height: 200px;">
							<h2>RG12 RX-78-2陆战型 182654</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg1号机.jpg" style="width: 250px;height: 200px;">
							<h2>RG13 宇宙型试作1号机182655</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg强袭自由.jpg" style="width: 250px;height: 200px;">
							<h2>RG14 强袭自由185139</h2>
							<span class="cannotbuy">￥<b>180</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg能天使.jpg" style="width: 250px;height: 200px;">
							<h2>RG15 能天使高达189481</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg红魔蟹.jpg" style="width: 250px;height: 200px;">
							<h2>RG16 红魔蟹 190183</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg飞翼.jpg" style="width: 250px;height: 200px;">
							<h2>RG17 飞翼高达194380</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg00.jpg" style="width: 250px;height: 200px;">
							<h2>RG18 强化00 196427</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg红异端.jpg" style="width: 250px;height: 200px;">
							<h2>RG19 红异端200634</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg飞翼EW.jpg" style="width: 250px;height: 200px;">
							<h2>RG20 飞翼EW 203222</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg量子00.jpg" style="width: 250px;height: 200px;">
							<h2>RG21 量子00 206312</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg新安洲.jpg" style="width: 250px;height: 200px;">
							<h2>RG22 新安洲 207590</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg创制强袭.jpg" style="width: 250px;height: 200px;">
							<h2>RG23 创制强袭 210510</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg金色异端.jpg" style="width: 250px;height: 200px;">
							<h2>RG24 金色异端 5055460</h2>
							<span class="cannotbuy">￥<b>150</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg独角兽.jpg" style="width: 250px;height: 200px;">
							<h2>RG25 独角兽(普通版) 216741</h2>
							<span class="cannotbuy">￥<b>180</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg红扎古11.jpg" style="width: 250px;height: 200px;">
							<h2>RG26 扎古II 219594</h2>
							<span class="cannotbuy">￥<b>100</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg报丧女妖.jpg" style="width: 250px;height: 200px;">
							<h2>RG27 报丧女妖 221060</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg多鲁基斯.jpg" style="width: 250px;height: 200px;">
							<h2>RG28 多鲁基斯 225740</h2>
							<span class="cannotbuy">￥<b>120</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg沙扎比.jpg" style="width: 250px;height: 200px;">
							<h2>RG29 沙扎比 230363</h2>
							<span class="cannotbuy">￥<b>180</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#" >
							<img src="img/gundam/rg全装备独角兽.jpg" style="width: 250px;height: 200px;">
							<h2>RG30 全装备独角兽 5055586</h2>
							<span class="cannotbuy">￥<b>260</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg海盗骷髅.jpg" style="width: 250px;height: 200px;">
							<h2>RG31 海盗骷髅 5057617</h2>
							<span class="cannotbuy">￥<b>150</b>.00(已售罄)</span>
						</a>
					</span>	
					<span>
						<a href="#">
							<img src="img/gundam/rg牛高达.jpg" style="width: 250px;height: 200px;">
							<h2>RG32 牛高达 5057842</h2>
							<span class="cannotbuy">￥<b>200</b>.00(已售罄)</span>
						</a>							
					</span>	
				</div>
			</div>
		</div>
		<!--content end-->
	
		<!--footer-->
		<div class="footer">
			<div class="footer-div">
				<a href="#">关于我们</a>|
            	<a href="#">联系我们</a>|
            	<a href="#">人才招聘</a>|
           		<a href="#">商家入驻</a>|
            	<a href="#">广告服务</a>|
            	<a href="#">手机K宝</a>|
            	<a href="#">友情链接</a>|
            	<a href="#">销售联盟</a>|
            	<a href="#">模玩社区</a>|
            	<a href="#">English Site</a>
				<p>
					Copyright©2017-2019 KRYSMANN.coright All Rights Reserved					
				</p>
				<p>
					Krysmann K宝模型店 版权所有				
				</p>
			</div>
		</div>
		<!--footer end-->	
	</body>
	<script src="js/index.js"></script>
</html>
<div class="links">
            
</div>