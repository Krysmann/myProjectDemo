<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.Book" %>
<%@page import="model.BookDB" %>
<%@page import="tools.ListBookServlet" %>
<%@page import="tools.PurchaseServlet" %>
<%request.setCharacterEncoding("utf-8"); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>我的购物车</title>
		<link href="${pageContext.request.contextPath}/client/css/cart.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<!--header begin-->
		<%@ include file="header.jsp"%>
		<!--header end-->
		
		<!--banner begin-->
		<%@ include file="banner.jsp" %>
		<!--banner end-->
			
		<!-- cart begin -->
		<!-- content begin -->
   		<div class="content">
        <div class="content-head">
            <span>我的购物车</span>
        </div>
        <c:if test="${booksName0==null }">
        <div class="content-body">
            <div class="content-body-img"><img src="${pageContext.request.contextPath }/client/img/cartnot.png" alt="cartnot"></div>
            <span class="content-body-txt">您的购物车里什么也没有哦~</span>
            <div class="content-body-btn"><button onclick="window.location.href='../ListBookServlet'">去逛逛</button></div>
        </div>
        </c:if>
        <c:if test="${booksName0!=null }">
        <div class="goods">
            <div class="top">
                <label><input type="checkbox" id="topCheckAll">全选</label>
                <ul>
                    <li>商品</li>
                    <li>数量</li>
                    <li>操作</li>
                </ul>
            </div>
            <div class="mid">
                <div class="goods-info">
                    <label><input type="checkbox" class="check"></label>
                    <ul>
                        <li>${booksName0 }</li>
                        <li>
                            <div class="count">
                                <div class="count-area">
                                    <input type="number" class="num" value="1">
                                </div>
                            </div>
                        </li>
                        <li><button class="delbtn">删除</button></li>
                    </ul>
                </div>
                <c:if test="${booksName1!=null }">
                <div class="goods-info">
                    <label><input type="checkbox" class="check"></label>
                    <ul>
                        <li>${booksName1 }</li>
                        <li>
                            <div class="count">
                                <div class="count-area">
                                    <input type="number" class="num" value="1">
                                </div>
                            </div>
                        </li>
                        <li><button class="delbtn">删除</button></li>
                    </ul>
                </div>
                </c:if>
                <c:if test="${booksName2!=null }">
                <div class="goods-info">
                    <label><input type="checkbox" class="check"></label>
                    <ul>
                        <li>${booksName2 }</li>
                        <li>
                            <div class="count">
                                <div class="count-area">
                                    <input type="number" class="num" value="1">
                                </div>
                            </div>
                        </li>
                        <li><button class="delbtn">删除</button></li>
                    </ul>
                </div>
                </c:if>
                <c:if test="${booksName3!=null }">
                <div class="goods-info">
                    <label><input type="checkbox" class="check"></label>
                    <ul>
                        <li>${booksName3 }</li>
                        <li>
                            <div class="count">
                                <div class="count-area">
                                    <input type="number" class="num" value="1">
                                </div>
                            </div>
                        </li>
                        <li><button class="delbtn">删除</button></li>
                    </ul>
                </div>
                </c:if>
                <c:if test="${booksName4!=null }">
                <div class="goods-info">
                    <label><input type="checkbox" class="check"></label>
                    <ul>
                        <li>${booksName4 }</li>
                        <li>
                            <div class="count">
                                <div class="count-area">
                                    <input type="number" class="num" value="1">
                                </div>
                            </div>
                        </li>
                        <li><button class="delbtn">删除</button></li>
                    </ul>
                </div>
                </c:if>
           	</div>
            <div class="bottom">
                <label><input type="checkbox" id="bottomCheckAll">全选</label>
                <ul>
                    <li><button class="del">删除</button></li>
                    <li><button class="pay">立即结算</button></li>
                </ul>
            </div>
        </div>
        </c:if>
    	</div>	
    	<!-- content end -->	
		<script src="${pageContext.request.contextPath}/client/js/cart.js"></script>
	</body>
</html>