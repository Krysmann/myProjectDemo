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
	require 'index.php';
?>