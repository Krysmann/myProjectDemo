<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/client/css/index.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="header-div">
			<!--header-left-->
			<div class="header-div-left">
				<span>当前位置：</span>
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
				当前访问人数:${totalCount}
					<li class="item">
						<a href="${pageContext.request.contextPath}/client/login.jsp" id="openmodal">
							<c:if test="${username==null}">
								你好请登录
							</c:if>
							<c:if test="${username!=null}">
								${username}&nbsp;&nbsp;&nbsp;<a href="/201702250121LZF/logoutServlet">退出</a>								
							</c:if>
						</a>
					</li>
					<li class="spacer"></li>
					<li class="item">
						<a href="${pageContext.request.contextPath}/client/register.jsp" style="color: #F10215;">免费注册</a>
					</li>
					<li class="spacer"></li>
					<li class="item pointer1">
						<a href="#">我的空间</a>
						<i>▽</i>
						<div class="right-div1">
							<ul class="div1-ul">
								<li><a href="#">待处理订单</a></li>
								<li><a href="#">我的消息</a></li>
								<li><a href="#">我的关注</a></li>
								<li><a href="#">退换货</a></li>
								<li><a href="#">我的书豆</a></li>
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
					<li class="item"><a href="#">手机客户端</a></li>		
				</ul>
			</div>
		</div>
</body>
</html>