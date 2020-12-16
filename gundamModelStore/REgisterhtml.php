<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>注册</title>
		<link rel="stylesheet" type="text/css" href="css/register.css"/>
	</head>
	<body>	
	<!---->
	<div class="box">
		<div style="position: absolute;left: -150px;top: -205px;">
			<img src="img/pikaq.gif" style="position: fixed;z-index: -1;"/>
		</div>
		<h1 style="padding-bottom: -10px;">欢迎注册K宝会员</h1>
		<form method="post" action="register.php">
			<table class="profile-table">
				<tr><td><input type="text" name="username" placeholder="账号由2~16位组成" /></td></tr>
				<tr><td><input type="text" name="email" placeholder="请输入您的邮箱" /></td></tr>
				<tr><td><input type="text" name="gender" placeholder="请填写你的性别(请写拼音)" /></td></tr>
				<tr><td><input type="text" name="type" placeholder="请填写jpg或者jepg" /></td></tr>
				<tr><td><input type="file" name="binarydata"/></td></tr>
				<tr><td><input type="password" name="password1" id="pw1" placeholder="请输入账号密码"/></td></tr>
				<tr><td><input type="password" name="password2" id="pw2" placeholder="请再次输入账号密码"/></td></tr>	
				<tr><td colspan="2" class="td-btn">
					<input type="submit" value="完成注册" class="button" />
					<input type="reset" value="重新填写" class="button" />
				</td></tr>
			</table>
		</form>
	</div>
	<br><br><br><br><br>
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
	<script src="js/index.js"></script>
	</body>
</html>