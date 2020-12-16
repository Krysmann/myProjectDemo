<?php
	header('content-type:text/html;charset=utf-8');
	error_reporting(E_ALL ^ E_DEPRECATED);	
	$password1=$_POST['password1'];
	$password2=$_POST['password2'];
	if($password1=='' && $password2==''){
		die('密码不能为空');
	}
	else{
		if($password1==$password2){
			$username=$_POST['username'];
			$password=$_POST['password1'];
			$gender=$_POST['gender'];
			$email=$_POST['email'];
			$type=$_POST['type'];
			$binarydata=$_POST['binarydata'];
			$link=mysqli_connect("localhost","root","","keybox");
			mysqli_set_charset($link,'utf8');
			$username=mysqli_real_escape_string($link,$username);
			$email=mysqli_real_escape_string($link,$email);
			$gender=mysqli_real_escape_string($link,$gender);
			$type=mysqli_real_escape_string($link,$type);
			$binarydata=mysqli_real_escape_string($link,$binarydata);
			$sql1="select id from user where username = '$username'";
			$res1=mysqli_query($link,$sql1);
			if(	mysqli_fetch_row($res1)){
				die('用户名存在，请换个用户名！');
			}
			$sql2="select id from user where email = '$email'";
			$res2=mysqli_query($link,$sql2);
			if(mysqli_fetch_row($res2)){
				die('该邮箱已存在，请换个邮箱！');
			}
			$password = md5($password);
			$sql="insert into user(username,password,email,gender,type,binarydata) values('$username','$password','$email','$gender','$type','$binarydata')";
			$res=mysqli_query($link,$sql);
			define('APP','keybox');
			require'backindex.html';
		}
		else{
			die('密码不一致!');
		}
	}
	
?>
