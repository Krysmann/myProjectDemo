<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>用户中心</title>
	</head>
	<link href="css/index.css" rel="stylesheet" type="text/css" />
	<link href="css/index2.css" rel="stylesheet" type="text/css" />
	<link href="css/usercenter.css" rel="stylesheet" type="text/css" />
	<body>
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
						<a href="user_center.html">
							<?php
								header('content-type:text/html;charset=utf-8');
								error_reporting(E_ALL ^ E_DEPRECATED);
								session_start();
								if(isset($_SESSION['user'])){
									$login = true;
									$userinfo = $_SESSION['user'];
								}
								else{
									$login = false;
								}
								define('APP','keybox');
							?>	
							<?php echo $userinfo['username']; ?>
						</a>						
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
		
		<!--container begin-->
		<div class="container">
			<div class="back">
				<a href="user_center.php">←</a>
			</div>
			<div class="headimg">
				<?php 
					$link=mysqli_connect("localhost","root","","keybox");
   					mysqli_set_charset($link,'utf8');
    				$id = $userinfo['id'];
					$sql="select id,binarydata from user where id='$id'";
					$rst=mysqli_query($link,$sql);
					$row=mysqli_fetch_assoc($rst);
					$info=array('id'=>$row['id']);
					if(!empty($_FILES['pic'])){
						$pic_info=$_FILES['pic'];
						if($pic_info['error']>0){
							$error_msg='上传错误:';							
						echo $error_msg;
						return false;
						}
						$type=substr(strrchr($pic_info['name'],'.'),1);
						if($type !='jpg'){
							echo '图像类型不符合要求，允许的类型为JPG';
							return false;
						}
						$new_file=$info['id'].'.jpg';
						$filename='img/headimg/'.$new_file;
						if(!move_uploaded_file($pic_info['tmp_name'],$filename)){
							echo '头像上传失败';
							return false;
						}
					}
				?>
				<a href="img/headimg.jpg"><img src="<?php echo 'img/headimg/'.$info['id'].'.jpg?rand='.rand(); ?>" onerror="this.src='img/headimg.jpg'"  /></a>
				<a href="#" onclick="alert('暂时无法修改头像')">修改头像</a>
			</div>
			<div class="information">
				
				<form method="post">
					<?php
						$link=mysqli_connect("localhost","root","","keybox");
						mysqli_set_charset($link,'utf8');
						$id=$userinfo['id'];
						if(!empty($_POST)){
							$changedata=array('username','gender','email');
							foreach($changedata as $value){
								$savedata[$value] = isset($_POST[$value]) ? $_POST[$value] : '';
							}
							if($savedata['gender']!='nan' && $savedata['gender']!='nv'){
								die('保存失败，未添加性别');
							}
							$sql="update user set ";
							foreach($savedata as $k=>$value){
								$sql  .="$k='".mysqli_real_escape_string($link,$value)."',";
							}	
							$sql=rtrim($sql,',')."where id =$id";
							$res=mysqli_query($link,$sql);
							echo $res ? "保存成功" : "保存失败: $sql<br>" .mysqli_error($res);
						}
					?>
					<ul class="info-form-ul2"><br>
						<li>昵称：</li><input type="text" name="username"><br>	
						<li>性别：</li><input type="text" name="gender"><br>	
						<li>邮箱：</li><input type="text" name="email"><br>	
						<li><input type="submit" /></li>
						<li><input type="reset" /></li>
					</ul>					
				</form>			
			</div>
		</div>
	</body>
</html>