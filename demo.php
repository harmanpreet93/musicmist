require 'demo_ext.php';


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>A Cool Login System With PHP MySQL &amp jQuery | Tutorialzine demo</title>
    
    <link rel="stylesheet" type="text/css" href="demo.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="login_panel/css/slide.css" media="screen" />
    
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
    
    <!-- PNG FIX for IE6 -->
    <!-- http://24ways.org/2007/supersleight-transparent-png-in-ie6 -->
    <!--[if lte IE 6]>
        <script type="text/javascript" src="login_panel/js/pngfix/supersleight-min.js"></script>
    <![endif]-->
    
    <script src="login_panel/js/slide.js" type="text/javascript"></script>
    
    <?php echo $script; ?>
</head>

<body>

<!-- Panel -->
<div id="toppanel">
	<div id="panel">
		<div class="content clearfix">
			<div class="left">
				<h1>Register Now!</h1>
				<h2>Its absolutely FREE!</h2>		
				<p class="grey">Just enter a username of your choice and your e-mail and you're good to go!</p>
				<h2>leave a comment</h2>
				<p class="grey">We would love to hear from you! So go ahead and leave a comment about your experience in the<a href="" title="Leave Comment"> Comments </a>Section</p>
			</div>
            
            
            <?php
			
			if(!isset($_SESSION['id'])):
			
			?>
            
			<div class="left">
				<!-- Login Form -->
				<form class="clearfix" action="" method="post">
					<h1>Member Login</h1>
                    
                    <?php
					if (isset($_SESSION['msg']['login-err'])) {
						if($_SESSION['msg']['login-err'])
						{
							echo '<div class="err">'.$_SESSION['msg']['login-err'].'</div>';
							unset($_SESSION['msg']['login-err']);
						}
					}
					?>
					
					<label class="grey" for="username">Username:</label>
					<input class="field" type="text" name="username" id="username" value="" size="23" />
					<label class="grey" for="password">Password:</label>
					<input class="field" type="password" name="password" id="password" size="23" />
	            	<label><input name="rememberMe" id="rememberMe" type="checkbox" checked="checked" value="1" /> &nbsp;Remember me</label>
        			<div class="clear"></div>
					<input type="submit" name="submit" value="Login" class="bt_login" />
				</form>
			</div>
			<div class="left right">			
				<!-- Register Form -->
				<form action="" method="post">
					<h1>Not a member yet? Sign Up!</h1>		
                    
                    <?php
						
						if ( isset($_SESSION['msg']['reg-err']) ) {
							
							if($_SESSION['msg']['reg-err'])
							{
								echo '<div class="err">'.$_SESSION['msg']['reg-err'].'</div>';
								unset($_SESSION['msg']['reg-err']);
							}
						}

						if ( isset($_SESSION['msg']['reg-success']) ) {

							if($_SESSION['msg']['reg-success'])
							{
								echo '<div class="success">'.$_SESSION['msg']['reg-success'].'</div>';
								unset($_SESSION['msg']['reg-success']);
							}
						}
					?>
                    		
					<label class="grey" for="username">Username:</label>
					<input class="field" type="text" name="username" id="username" value="" size="23" />
					<label class="grey" for="email">Email:</label>
					<input class="field" type="text" name="email" id="email" size="23" />
					<label>A password will be e-mailed to you.</label>
					<input type="submit" name="submit" value="Register" class="bt_register" />
				</form>
			</div>
            
            <?php

			else:
			
			?>
            
            <div class="left">
            
            <h1>You are now logged in!</h1>
        
            <a href="registered.php">Play Music!</a>
            <p>- or -</p>
            <a href="?logoff">Log out</a>
            
            </div>
            
            <div class="left right">
            </div>
            
            <?php
			endif;
			?>

		</div>
	</div> <!-- /login -->	

    <!-- The tab on top -->	
	<div class="tab">
		<ul class="login">
	    	<li class="left">&nbsp;</li>
	        <li>Hello <?php if ( isset($_SESSION['usr']) ) { echo $_SESSION['usr']; } else { echo 'Guest'; } ?>!</li>
			<li class="sep">|</li>
			<li id="toggle">
				<a id="open" class="open" href="#"><?php if ( isset($_SESSION['id']) ) {echo 'Open Panel';} else {echo 'Log In | Register';}?></a>
				<a id="close" style="display: none;" class="close" href="#">Close Panel</a>			
			</li>
	    	<li class="right">&nbsp;</li>
		</ul> 
	</div> <!-- / top -->
	
</div> <!--panel -->

<div class="pageContent">
    <div class="fond"><img src="../images/competences.jpg" border="0" alt="" /></div>
	<div class="clearfix inner">
	<div class="competences">
	<div class ="sub">  Discover MUSIC you never knew</div>
</div>

</body>
</html>
