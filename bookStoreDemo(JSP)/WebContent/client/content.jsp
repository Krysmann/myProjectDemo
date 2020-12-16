<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>商品展示页</title>
		<link href="${pageContext.request.contextPath}/client/css/content.css" rel="stylesheet" type="text/css" />				
	</head>
	<body>
	<a href="#" id="head"></a>
		<!--header begin-->
			<%@ include file="header.jsp" %>
		<!--header end-->
		
		<!--banner begin-->
			<%@ include file="banner.jsp" %>
		<!--banner end-->
		
		<!-- content begin -->
		<div class="content">
			<div class="btn-chooseBook">
				<ul class="Booktype-list">
					<li class="btntype current">人物传记</li>
					<li class="btntype">中外历史</li>
					<li class="btntype">人文科学</li>
					<li class="btntype">社会科学</li>
				</ul>				
			</div>
			<div class="booklist-box">
				<ul id="booklist" class="booklist booklist-biography">
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/biography/1.jpg">						
						</article>
						<div class="booktext">
							<h1> 
								<% out.print(request.getAttribute("bookNames0"));%>
							</h1>
							<h2>¥65.40</h2>
							<h4>[英]迪克·威尔逊(Dick Wilson)著，国外研究毛泽东思想资料选辑编辑组译</h4>
							<h5>《毛泽东传》是由外国知名学者迪克·威尔逊撰写的毛泽东传记。</h5>
							<br>
							<br>
							<a href="${bookurl0}" width="100px">
								<img width="100px" src="${pageContext.request.contextPath}/client/img/click.png">
							</a>
							<a href="${pageContext.request.contextPath}/client/bookMessage.jsp" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click2.png"></a>
						</div>						
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/biography/2.jpg">						
						</article>
						<div class="booktext">
							<h1><% out.print(request.getAttribute("bookNames1"));%></h1>
							<h2>¥68.30</h2>
							<h4>毛泽东著</h4>
							<h5>这部选集，包括了毛泽东同志在中国革命各个时期中的重要著作。</h5>
							<br><br>
							<a href="${bookurl1}" width="100px">
								<img width="100px" src="${pageContext.request.contextPath}/client/img/click.png">
							</a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/biography/3.jpg">						
						</article>
						<div class="booktext">
							<h1><% out.print(request.getAttribute("bookNames2"));%></h1>
							<h2>¥49.40</h2>
							<h4>中央党校采访实录编辑室</h4>
							<h5>以图文并茂的方式真实还原习总书记奋斗的青年时代</h5>
							<br><a href="${bookurl2}" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/biography/4.jpg">						
						</article>
						<div class="booktext">
							<h1><% out.print(request.getAttribute("bookNames3"));%></h1>
							<h2>¥58.80</h2>
							<h4>[英]迪克·威尔逊(Dick Wilson)著</h4>
							<h5>从外国学者的视角，全面生动地讲述了周恩来波澜起伏的一生</h5>
							<br><a href="${bookurl3}" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/biography/5.jpg">						
						</article>
						<div class="booktext">
							<h1><% out.print(request.getAttribute("bookNames4"));%></h1>
							<h2>¥47.20</h2>
							<h4>[英]理查德·伊文思著</h4>
							<h5>从外国学者的视角，全面生动地讲述了邓小平波澜起伏的一生</h5>
							<br><a href="${bookurl4}" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/biography/6.jpg">						
						</article>
						<div class="booktext">
							<h1><% out.print(request.getAttribute("bookNames5"));%></h1>
							<h2>¥46.50</h2>
							<h4>[美]罗伯特·劳伦斯·库恩著</h4>
							<h5>《他改变了中国:江泽民传》这本传记介绍了江泽民同志的人生历程</h5>
							<br><a href="${bookurl5}" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/biography/7.jpg">						
						</article>
						<div class="booktext">
							<h1><% out.print(request.getAttribute("bookNames6"));%></h1>
							<h2>¥54.50</h2>
							<h4>彭德怀著</h4>
							<h5>本书内容主要是彭德怀同志在被“审查”期间撰写，以1970年所写的一份自传式材料为基础，以其他几份材料做补充。</h5>
							<br><a href="${bookurl6}" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/biography/8.jpg">						
						</article>
						<div class="booktext">
							<h1><% out.print(request.getAttribute("bookNames7"));%></h1>
							<h2>¥47.90</h2>
							<h4>关河五十州著</h4>
							<h5>刘伯承是震撼20世纪中国军界的一代名将，早在护国战争、护法战争时期就以“军神”闻名；在中国共产党的军事将领中，他的资历也少有人及</h5>
							<br><a href="${bookurl7}" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
				</ul>
				<ul id="booklist" class="booklist booklist-history">
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/history/1.jpg">						
						</article>
						<div class="booktext">
							<h1>世界简史</h1>
							<h2>¥39.80</h2>
							<h4>威尔斯著</h4>
							<h5>《世界简史》，全世界狂销200万册，被翻译成30多个国家的文字，50多个版本，可谓是经典中的经典</h5>
							<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/history/2.jpg">						
						</article>
						<div class="booktext">
							<h1>中国通史</h1>
							<h2>¥28.00</h2>
							<h4>吕思勉著</h4>
							<h5>吕著《中国通史》分为上、下两册</h5>
							<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/history/3.jpg">						
						</article>
						<div class="booktext">
							<h1>人类砍头小史</h1>
							<h2>¥42.10</h2>
							<h4>[英]弗朗西斯·拉尔森(Frances Larson)著，秦传安 译</h4>
							<h5>关于砍头，你想知道的，都在这里！</h5>
							<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/history/4.jpg">						
						</article>
						<div class="booktext">
							<h1>做一个幸福的中国人</h1>
							<h2>¥26.20</h2>
							<h4>花千芳著</h4>
							<h5>《我们的征途是星辰大海》作者再推新作 用草根年轻人的诚意和警醒对当代中国发声</h5>
							<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/history/5.jpg">						
						</article>
						<div class="booktext">
							<h1>大国崛起</h1>
							<h2>¥47.00</h2>
							<h4>唐晋著</h4>
							<h5>重磅推荐： 世界历史波澜壮阔，大国兴衰构成了其中重要的篇章</h5>
							<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/history/6.jpg">						
						</article>
						<div class="booktext">
							<h1>大秦帝国战国风云与帝国主义</h1>
							<h2>¥37.20</h2>
							<h4>郑吉威著</h4>
							<h5>大秦帝国战国风云与帝国主义</h5>
							<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/history/7.jpg">						
						</article>
						<div class="booktext">
							<h1>民族与中国古代史</h1>
							<h2>¥18.70</h2>
							<h4>傅斯年著</h4>
							<h5>这本未竟之书，已足以使傅斯年坐上20世纪中国史学大师的宝座，享有大师的荣誉。</h5>
							<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/history/8.jpg">						
						</article>
						<div class="booktext">
							<h1>煮酒品三国</h1>
							<h2>¥28.00</h2>
							<h4>沈忱著</h4>
							<h5>作者学识丰富，娓娓道来之中豁然开朗，令人耳目一新。和一些专家在电视上论讲三国历史，迎合现代趣味不同，</h5>
							<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
				</ul>
				<ul id="booklist" class="booklist booklist-humanities">
				<li>
					<article>
						<img src="${pageContext.request.contextPath}/client/img/book/humanities/1.jpg">						
					</article>
					<div class="booktext">
						<h1>九型人格</h1>
						<h2>¥12.30</h2>
						<h4>马北著</h4>
						<h5>揭秘隐秘人格，发挥性格优势。</h5>
						<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
					</div>
				</li>
				<li>
					<article>
						<img src="${pageContext.request.contextPath}/client/img/book/humanities/2.jpg">						
					</article>
					<div class="booktext">
						<h1>单独中的洞见</h1>
						<h2>¥33.10</h2>
						<h4>张方宇著</h4>
						<h5>中国版《沉思录》：关于人生的洞见与思考。</h5>
						<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
					</div>
				</li>
				<li>
					<article>
						<img src="${pageContext.request.contextPath}/client/img/book/humanities/3.jpg">						
					</article>
					<div class="booktext">
						<h1>我们内心的冲突</h1>
						<h2>¥36.70</h2>
						<h4>卡伦·霍妮著</h4>
						<h5>重磅推荐： 1.百万册纪念版，历时2年，逐字全新修订，最适合大众阅读的经典译本。</h5>
						<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
					</div>
				</li>
				<li>
					<article>
						<img src="${pageContext.request.contextPath}/client/img/book/humanities/4.jpg">						
					</article>
					<div class="booktext">
						<h1>极简社交</h1>
						<h2>¥34.70</h2>
						<h4>王励新著</h4>
						<h5>交际的广度决定了你人生的高度！每个人都有潜藏的社交天性，提升交往能力，让你在人群中脱颖而出！</h5>
						<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
					</div>
				</li>
				<li>
					<article>
						<img src="${pageContext.request.contextPath}/client/img/book/humanities/5.jpg">						
					</article>
					<div class="booktext">
						<h1>罗生门</h1>
						<h2>¥35.20</h2>
						<h4>芥川龙之介著</h4>
						<h5>芥川龙之介经典小说集，暗黑人性的深度书写。 人性之初，荫于谎言。</h5>
						<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
					</div>
				</li>
				<li>
					<article>
						<img src="${pageContext.request.contextPath}/client/img/book/humanities/6.jpg">						
					</article>
					<div class="booktext">
						<h1>自卑与超越</h1>
						<h2>¥24.70</h2>
						<h4>(奥)阿尔弗雷德·阿德勒著，马晓娜译</h4>
						<h5>心理学大师经典作品 《自卑与超越：你要清楚自己应该怎样过好这一生》的作者阿德勒是个体心理学的创始人，人本主义心理学先驱，现代自我心理学之父。</h5>
						<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
					</div>
				</li>
				<li>
					<article>
						<img src="${pageContext.request.contextPath}/client/img/book/humanities/7.jpg">						
					</article>
					<div class="booktext">	
						<h1>自控力</h1>
						<h2>¥34.70</h2>
						<h4>周宇著</h4>
						<h5>真正拉开你与他人差距的不是智力，而是自控力！从职场到家庭，从心理到生理，多维度解析如何用自控力提升成功力。 </h5>
						<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
					</div>
				</li>
				<li>
					<article>
						<img src="${pageContext.request.contextPath}/client/img/book/humanities/8.jpg">						
					</article>
					<div class="booktext">
						<h1>记忆编码</h1>
						<h2>¥34.70</h2>
						<h4>[俄]亚瑟·杜姆切夫 著，雷雨晴 译</h4>
						<h5>天才和庸才的差距不是智商，而是记忆力！</h5>
						<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
					</div>
				</li>
				</ul>
				<ul id="booklist" class="booklist booklist-science">
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/science/1.jpg">						
						</article>
						<div class="booktext">
							<h1>Java从入门到精通</h1>
							<h2>¥62.10</h2>
							<h4>明日科技著</h4>
							<h5>软件开发视频大讲堂 丛书是清华社计算机专业基础类零售图书1畅销的品牌之一。</h5>
							<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/science/2.jpg">						
						</article>
						<div class="booktext">
							<h1>帕金森定律</h1>
							<h2>¥27.20</h2>
							<h4>徐志晶著</h4>
							<h5>国内首部全方位解读帕金森定律的的作品。</h5>
							<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/science/3.jpg">						
						</article>
						<div class="booktext">
							<h1>幸福家庭心理学</h1>
							<h2>¥48.00</h2>
							<h4>刘凤鸣著</h4>
							<h5>幸福家庭心理学</h5>
							<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/science/4.jpg">						
						</article>
						<div class="booktext">
							<h1>微表情密码</h1>
							<h2>¥34.70</h2>
							<h4>[波兰]卡西亚·韦佐夫斯基[波兰]帕特里克·韦佐夫斯基 著，陈天然 译</h4>
							<h5>全球分部超过20个国家的 身体语言中心 最新研究成果，风靡社交媒体的微表情学习热潮。</h5>
							<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/science/5.jpg">						
						</article>
						<div class="booktext">
							<h1>性格心理学</h1>
							<h2>¥32.00</h2>
							<h4>邹宏明著</h4>
							<h5>5分钟透析个性，10分钟诊断问题人生，本书包含了所有你需要了解自己和他人的精彩信息。</h5>
							<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/science/6.jpg">						
						</article>
						<div class="booktext">
							<h1>成交心理学</h1>
							<h2>¥48.00</h2>
							<h4>邓焱中 著</h4>
							<h5>成交心理学</h5>
							<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/science/7.jpg">						
						</article>
						<div class="booktext">	
							<h1>行为心理学</h1>
							<h2>¥48.00</h2>
							<h4>袁莹 著</h4>
							<h5>行为心理学</h5>
							<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
					<li>
						<article>
							<img src="${pageContext.request.contextPath}/client/img/book/science/8.jpg">						
						</article>
						<div class="booktext">
							<h1>黑羊效应</h1>
							<h2>¥38.20</h2>
							<h4>陈俊钦 著</h4>
							<h5>七十年前，卡尔维诺写给世界的黑羊预言，著名心理学家陈俊钦历时二十多年终于将其完美破解。</h5>
							<br><a href="${pageContext.request.contextPath}/ListBookServlet" width="100px"><img width="100px" src="${pageContext.request.contextPath}/client/img/click.png"></a>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!-- content end -->
		
		<!-- sidebar begin -->
		<div class="sidebar">
			<ul class="sidebar-ul">
				<li><a href="${pageContext.request.contextPath}/client/index.jsp">返回首页</a></li>
				<li><a href="${pageContext.request.contextPath}/PurchaseServlet">购物车</span></li>
				<li><a href="#head" class="sidebar-back">返回顶部</span></li>
			</ul>
		</div>
		<!-- sidebar end -->
		<script src="${pageContext.request.contextPath}/client/js/content.js"></script>
	</body>
</html>