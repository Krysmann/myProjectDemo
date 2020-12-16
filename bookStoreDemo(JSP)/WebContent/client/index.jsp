<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>首页</title>
		<link href="${pageContext.request.contextPath}/client/css/index.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<!--header begin-->
			<%@ include file="header.jsp" %>
		<!--header end-->
		
		<!--banner begin-->
			<%@ include file="banner.jsp" %>
		<!--banner end-->
	
		<!--slideshow begin  -->
		<div id="slideshow">
			<div class="slideshow-list">
		    	<ul>
		        	<li><img src="${pageContext.request.contextPath}/client/img/slideshow/slideshow1.jpg" width="750" height="335" /></li>
		        	<li><img src="${pageContext.request.contextPath}/client/img/slideshow/slideshow2.jpg" width="750" height="335" /></li>
		        	<li><img src="${pageContext.request.contextPath}/client/img/slideshow/slideshow3.jpg" width="750" height="335" /></li>
		        	<li><img src="${pageContext.request.contextPath}/client/img/slideshow/slideshow4.jpg" width="750" height="335" /></li>
		        	<li><img src="${pageContext.request.contextPath}/client/img/slideshow/slideshow5.jpg" width="750" height="335" /></li>
		        	<li><img src="${pageContext.request.contextPath}/client/img/slideshow/slideshow6.jpg" width="750" height="335" /></li>
		        	<li><img src="${pageContext.request.contextPath}/client/img/slideshow/slideshow7.jpg" width="750" height="335" /></li>
		        	<li><img src="${pageContext.request.contextPath}/client/img/slideshow/slideshow8.jpg" width="750" height="335" /></li>
		        	<li><img src="${pageContext.request.contextPath}/client/img/slideshow/slideshow9.jpg" width="750" height="335" /></li>
		    	</ul>
			</div>
			<div class="advertising">
				<div class="advertising-list">
					<a href="${pageContext.request.contextPath}/ListBookServlet"><input type="image" src="${pageContext.request.contextPath}/client/img/advertising/1.jpg" title="请点击这里" width="250px" height="81px"/></a>
					<a href="${pageContext.request.contextPath}/ListBookServlet"><input type="image" src="${pageContext.request.contextPath}/client/img/advertising/2.jpg" title="请点击这里" width="250px" height="81px"/></a>
					<a href="${pageContext.request.contextPath}/ListBookServlet"><input type="image" src="${pageContext.request.contextPath}/client/img/advertising/3.jpg" title="请点击这里" width="250px" height="81px"/></a>
					<a href="${pageContext.request.contextPath}/ListBookServlet"><input type="image" src="${pageContext.request.contextPath}/client/img/advertising/4.jpg" title="请点击这里" width="250px" height="81px"/></a>
				</div>			
			</div>
		</div>
		<!-- slideshow end -->
		
		<!--footer-->
			<%@ include file="footer.jsp" %>
		<!--footer end-->
		<script src="${pageContext.request.contextPath}/client/js/index.js"></script>
	</body>
</html>
