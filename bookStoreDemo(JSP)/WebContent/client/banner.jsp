<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/index.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="banner">
			<div class="banner-div">
				<div class="banner-logo">
					<img src="${pageContext.request.contextPath}/client/img/index/storeWebLogo.png">
				</div>
				<div class="banner-middle">
					<div class="banner-search">
						<input type="text" class="input-text" name="search-name" id="search-name" value="最多人搜:Java从入门到精通"/>				
						<input type="button" class="input-sub1"/>
						<input type="submit" class="input-sub2" value="购物车" onclick="window.location.href = '${pageContext.request.contextPath}/PurchaseServlet'" />
					</div>
					<div class="banner-ul">
						<ul>
							<li class="banner-first-li">搜索最多：</li>
							<li><a href="#">Java面向对象思想与程序设计</a></li>
							<li><a href="#">Java Web程序设计任务教程</a></li>
							<li><a href="#">Java从入门到精通</a></li>
							<li><a href="#">Html5+CSS开发实战</a></li>
							<li><a href="#">C程序设计</a></li>
							<li><a href="#">Linux编程</a></li>
							<li><a href="#">计算机网络</a></li>
						</ul>
					</div>
				</div>									
				<img src="${pageContext.request.contextPath}/client/img/index/banner.jpg" class="banner-img"/>	
			</div>
		</div>
</body>
</html>