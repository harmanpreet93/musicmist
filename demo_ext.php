<?php

define('INCLUDE_CHECK',true);

require 'connect.php';
require 'functions.php';
// Those two files can be included only if INCLUDE_CHECK is defined


session_name('Login');
// Starting the session

session_set_cookie_params(2*7*24*60*60);
// Making the cookie live for 2 weeks

session_start();

if (isset($_SESSION['id'])) {
	if($_SESSION['id'] && !isset($_COOKIE['Remember']) && !$_SESSION['rememberMe'])
	{
		// If you are logged in, but you don't have the Remember cookie (browser restart)
		// and you have not checked the rememberMe checkbox:

		$_SESSION = array();
		session_destroy();
		
		// Destroy the session
	}
}


if(isset($_GET['logoff']))
{
	$_SESSION = array();
	session_destroy();
	
	header("Location: demo.php");
	exit;
}


if (isset($_POST['submit'])) {

if($_POST['submit']=='Login')
{
	// Checking whether the Login form has been submitted
	
	$err = array();
	// Will hold our errors
	
	
	if(!$_POST['username'] || !$_POST['password'])
		$err[] = 'All the fields must be filled in!';
	
	if(!count($err))
	{
		$_POST['username'] = mysql_real_escape_string($_POST['username']);
		$_POST['password'] = mysql_real_escape_string($_POST['password']);
		$_POST['rememberMe'] = (int)$_POST['rememberMe'];
		
		// Escaping all input data

		$row = mysql_fetch_assoc(mysql_query("SELECT id,usr FROM userTable WHERE usr='{$_POST['username']}' AND pass='".md5($_POST['password'])."'"));

		if($row['usr'])
		{
			// If everything is OK login
			
			$_SESSION['usr']=$row['usr'];
			$_SESSION['id'] = $row['id'];
			$_SESSION['rememberMe'] = $_POST['rememberMe'];
			
			// Store some data in the session
			
			setcookie('Remember',$_POST['rememberMe']);
		}
		else $err[]='Wrong username and/or password!';
	}
	
	if($err)
	$_SESSION['msg']['login-err'] = implode('<br />',$err);
	// Save the error messages in the session

	header("Location: demo.php");
	exit;
}
else if($_POST['submit']=='Register')
{
	// If the Register form has been submitted
	echo "<script type='text/javascript'>alert($pass);</script>";

	echo $pass;
	$err = array();
	
	if(strlen($_POST['username'])<4 || strlen($_POST['username'])>32)
	{
		$err[]='Your username must be between 3 and 32 characters!';
	}
	
	if(preg_match('/[^a-z0-9\-\_\.]+/i',$_POST['username']))
	{
		$err[]='Your username contains invalid characters!';
	}
	
	if(!checkEmail($_POST['email']))
	{
		$err[]='Your email is not valid!';
	}
	
	if(!count($err))
	{
		// If there are no errors
		
		$pass = substr(md5($_SERVER['REMOTE_ADDR'].microtime().rand(1,100000)),0,6);
		// Generate a random password
		
		$_POST['email'] = mysql_real_escape_string($_POST['email']);
		$_POST['username'] = mysql_real_escape_string($_POST['username']);
		// Escape the input data
		$songIndices = UniqueRandomNumbersWithinRange(1,15,15);			//creating a song order for the user
  		$encodedIndices = json_encode($songIndices);
		
		mysql_query("	INSERT INTO userTable(usr,pass,email,regIP,dt,trackOrder)
						VALUES(
						
							'".$_POST['username']."',
							'".md5($pass)."',
							'".$_POST['email']."',
							'".$_SERVER['REMOTE_ADDR']."',
							NOW() ,
							'$encodedIndices'
							
						)");
		
		if(mysql_affected_rows($link)==1)
		{
			send_mail(	'udhavs2gud@gmail.com',
						$_POST['email'],
						'Registration System Demo - Your New Password',
						'Your password is: '.$pass);

			$_SESSION['msg']['reg-success']='We sent you an email with your new password!';
		}
		else $err[]='This username is already taken!';
	}

	if(count($err))
	{
		$_SESSION['msg']['reg-err'] = implode('<br />',$err);
	}	
	
	header("Location: demo.php");
	exit;
}
}

$script = '';

if (isset($_SESSION['msg'])) {
	if($_SESSION['msg'])
	{
		// The script below shows the sliding panel on page load
		
		$script = '
		<script type="text/javascript">
		
			$(function(){
			
				$("div#panel").show();
				$("#toggle a").toggle();
			});
		
		</script>';
	
	}	
}
?>