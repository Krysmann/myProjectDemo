<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>毛泽东传(精装典藏版)</title>
		<link href="${pageContext.request.contextPath}/client/css/bookMessage.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<!--header begin-->
			<%@ include file="header.jsp" %>
		<!--header end-->
		
		<!--banner begin-->
			<%@ include file="banner.jsp" %>
		<!--banner end-->
		
		<!-- detailmsg begin -->
		<div class="detailmsg">
			<div class="imgbox">
				<img src="${pageContext.request.contextPath}/client/img/book/biography/1.jpg" width="400px" height="400px" />
				<div class="imgmask"></div>
				<div class="bigimgbox">
					<img src="${pageContext.request.contextPath}/client/img/book/biography/1.jpg" class="bigimg" width="800px" height="800px" style="position: absolute;left: 0;top: 0;" />
				</div>
			</div>
			<div class="detailinfo">
				<div class="infobox" id="infobox">
					<span style="margin-left: 10px;">书城自营</span>
					<h3 class="info">毛泽东传(精装典藏版)(纪念毛泽东诞辰120周年，畅销西方的经典传记)</h3>
					<br>
					<h5 class="info">作者: [英] 迪克·威尔逊(Dick Wilson)著，国外研究毛泽东思想资料选辑编辑组　译</h5>
					<h5 class="info">出版社: 国际文化出版公司 出版时间: 2013年04月</h5><br>
					<h2 class="info price">现特价：65.40</h2><br>
					<h5 class="info grayinfo">原价：78.00</h5><br>
					&nbsp;&nbsp;配送至：<select>
						<option>广州</option>
						<option>北京</option>
						<option>上海</option>
						<option>成都</option>
						<option>佛山</option>
					</select><br><br>
					<a href="${pageContext.request.contextPath}/ListBookServlet" style="margin-left:10px"><img src="${pageContext.request.contextPath}/client/img/click.png"></a>
				</div>
			</div>
			<div class="msgbox">
				<h4 style="width: 120px;text-align: center;font-size: 24px;margin-left: 100px;margin-top: 40px;border-top: 1px solid;border-right: 1px solid;border-left: 1px solid;">产品特色</h4>
				<img src="${pageContext.request.contextPath}/client/img/book/biography/mao.jpg" />
			</div>
		</div>
	
		<script src="${pageContext.request.contextPath}/client/js/bookMessage.js"></script>
	</body>
</html>