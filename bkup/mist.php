<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>MusicMist</title>

<link rel="shortcut icon" href="img/favicon.ico">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<link rel="canonical" href="some html of musicmist .html"/>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type">
<meta content="utf-8" http-equiv="encoding">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script src="https://connect.soundcloud.com/sdk.js"></script>
<script src="mistScript.js" type="text/javascript"></script>
<meta property="og:site_name" content="MusicMist"/>
<meta property="og:title" content="Home"/>
<meta itemprop="name" content="Home"/>
<meta property="og:url" content="http://not finalised yet :P"/>
<meta itemprop="url" content="http://not finalised yet :P"/>
<meta property="og:type" content="article"/>
<meta name="description" content="MusicMist is a online music streaming website that plays you random music  " />

<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="css/animate-custom.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/supersized.css" type="text/css" media="screen" />
<link rel="stylesheet" href="theme/supersized.shutter.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/feedback.css" type="text/css" media="screen" />

<script type="text/javascript" src="js/jquery.easing.min.js"></script>
<script type="text/javascript" src="js/supersized.3.2.7.min.js"></script>
<script type="text/javascript" src="theme/supersized.shutter.min.js"></script>
<script type="text/javascript" src="feedback.js"></script>
<link href='http://fonts.googleapis.com/css?family=Josefin+Sans:300,400' rel='stylesheet' type='text/css'>

<script type="text/javascript">
			
			jQuery(function($){

				$('#title').addClass('animated fadeInDown');
				$('#subTitle').addClass('animated pulse');
				$('#line').addClass('animated bounceIn');
				$('#content').addClass('animated pulse');
				$('#sharingKit').addClass('animated fadeInUp');
				$.supersized({
					// Functionality
					slide_interval          :   0,		
					transition              :   1, 			
					transition_speed		:	30000,		
					// Components							
					slide_links				:	'blank',	
					slides 					:  	[
														{image : 'img/bg.jpg', title : '', thumb : '', url : ''},
														{image : 'img/bg1.jpg', title : '', thumb : '', url : ''},
														{image : 'img/bg2.jpg', title : '', thumb : '', url : ''},
														{image : 'img/bg3.jpg', title : '', thumb : '', url : ''},
														{image : 'img/bg4.jpg', title : '', thumb : '', url : ''},
														{image : 'img/bg5.jpg', title : '', thumb : '', url : ''},
														{image : 'img/bg6.jpg', title : '', thumb : '', url : ''},
														{image : 'img/bg7.jpg', title : '', thumb : '', url : ''},
														{image : 'img/bg8.jpg', title : '', thumb : '', url : ''},
														{image : 'img/bg9.jpg', title : '', thumb : '', url : ''},

												]
					
				});
		    });
		    
		</script>
		
	</head>
	


<body>


<div class='fullscreenDiv'>
<div class="centerCover">
<div class="center" id="center"><br/><br/><br/><br/>
<p class="title" id="title">Music<span style="font-weight:100;">Mist</span></p>
<p class="line" id="line"><br/></p>
<div class="subTitle" id="subTitle"></div>
<div class="content" id="content"><br/></div>
<p class="sharingKit" id="sharingKit">
<span class="socialFeild" id ="msg" onclick="feed()"><img src="img/envelope.png"/></span> 
<span class="socialFeild" id="fb"><a href="https://www.facebook.com/msicmist" target="fb"><img src="img/facebook.png"/></a></span>
</p>
</div>
</div>
<div class="musicPlayer">
<div class="play">

<!--<div>
	<input type="range" id="progBar" value="0">
</div>-->


<!--<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<div class="fb-like-box" data-href="https://www.facebook.com/FacebookDevelopers" data-colorscheme="light" data-show-faces="true" data-header="true" data-stream="false" data-show-border="true"></div>-->

	<div>
 	<input id="stop" type="image" src="./img/stop.png" >
 	</div>
	<div>
 	<input id="play" type="image" src="./img/play1.png" >
 	</div>
 	<div>
 	<input id="pause" type="image" src="./img/pause.png" style="display: none;">
 	</div>
 	<div>
 	<input id="next" type="image" src="./img/next2.png" >
 	</div>
 	<div>
 	<input id="volup" type="image" src="./img/plus.png">
 	</div>
 	<div>
 	<input id="voldown" type="image" src="./img/minus.png" >
 	</div>
		<!--<input type="range" id="volume-bar" min="0" max="1" step="0.1" value="1">-->

</div>
</div>
</div>​
<div id ="volDisplay">volume is</div>
<script>/*
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-12927306-2', 'max9xs.com');
  ga('send', 'pageview');*/
</script>
</body>
</html>
