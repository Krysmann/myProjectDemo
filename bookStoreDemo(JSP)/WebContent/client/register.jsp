<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>注册</title>
		<link href="${pageContext.request.contextPath}/client/css/register.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<!--  formbox-->
		<div class="box">
			<div style="position: absolute;left: -150px;top: -205px;">
				<img src="${pageContext.request.contextPath}/client/img/pikaq.gif" style="position: fixed;z-index: -1;"/>
			</div>
			<a href="${pageContext.request.contextPath}/client/index.jsp" style="margin-left: 20px;">返回首页</a>
			<h1 style="padding-bottom: -10px;">欢迎注册书城会员</h1>
			<form method="post" action="${pageContext.request.contextPath}/registerServlet">
				<table class="profile-table">
					<tr><td><input type="text" name="username" id="username" placeholder="账号由2~16位组成" /></td></tr>
					<tr><td><input type="password" name="password1" id="pw1" placeholder="请输入账号密码"/></td></tr>
					<tr><td><input type="password" name="password2" id="pw2" placeholder="请再次输入账号密码"/></td></tr>	
					<tr><td><input type="text" id="inputCode" placeholder="请输入验证码"/></td></tr>	
					<tr><td><img src="${pageContext.request.contextPath}/checkServlet"></td></tr>	
					<tr><td colspan="2" class="td-btn">
						<input type="submit" value="注册" class="button" onclick="validateCode()" />
						<input type="reset" value="重新填写" class="button" />
					</td></tr>
				</table>
			</form>
		</div>
		<!-- footer-->
		<div class="footer">
			<div class="footer-pic">
				<div class="footer-pic-inner">
				    <a name="foot_1" target="_blank"><span>正规渠道正品保障</span></a>
					<a name="foot_2" target="_blank"><span>放心购物货到付款</span></a>
				    <a name="foot_3" target="_blank"><span>250城市次日送达</span></a>
				    <a name="foot_4" target="_blank"><span>上门退换 购物无忧</span></a>
				</div>
			</div>
			
			<div class="footer-div">
				<a href="#">关于我们</a>|
		    	<a href="#">联系我们</a>|
		    	<a href="#">人才招聘</a>|
		   		<a href="#">商家入驻</a>|
		    	<a href="#">广告服务</a>|
		    	<a href="#">手机书城</a>|
		    	<a href="#">友情链接</a>|
		    	<a href="#">销售联盟</a>|
		    	<a href="#">English Site</a>
				<p>
					Copyright©2017-2020 Lzfbookstore.coright All Rights Reserved					
				</p>
				<p>
					Lzf书城 版权所有				
				</p>
			</div>
		</div>
		<!--footer end-->	
		<script src="${pageContext.request.contextPath}/client/js/register.js"></script>
	</body>
</html>
