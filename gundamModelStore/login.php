<?php
	header('content-type:text/html;charset=utf-8');
	error_reporting(E_ALL ^ E_DEPRECATED);
	$error=array();
	if(!empty($_POST)){
		$username=isset($_POST['username']) ? trim($_POST['username']) : '';
    	$password=isset($_POST['password']) ? $_POST['password'] : '';
	
		require'check_form.lib.php';
		if(($result=checkUsername($username)) !== true ) $error[]=$result;
		if(($result=checkPassword($password)) !== true ) $error[]=$result;
		if(empty($error)){
	    	$link=mysqli_connect("localhost","root","","keybox");
   			mysqli_set_charset($link,'utf8');
    		$username=mysqli_real_escape_string($link,$username);
    		$sql="select id,password,email,gender from user where username='$username'";
    		if($rst = mysqli_query($link,$sql)){
    			$row = mysqli_fetch_assoc($rst);
			}
	    }
		$password=md5($password);
		if($password == $row['password']){
			session_start();
			$_SESSION['user']=array(
			'id' => $row['id'],
			'username' => $username
			);	
			header('Location: user.php');
			die;	
	  	}	
  		$error[] = '用户名不存在或密码错误。';
	}
	define('APP','keybox');
	require 'index.php';
?>