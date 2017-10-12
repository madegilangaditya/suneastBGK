
<?php
	include 'adminpage/koneksi.php';
	
	?>
	
<!DOCTYPE HTML>
<html>
<head>
<title>Sun East </title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Medicinal Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="applisalonion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />	
<link rel="stylesheet" href="css/slider.css">
<script src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--/web-font-->
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
<!--/script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>

<link href="css/owl.carousel.css" rel="stylesheet">
							    <script src="js/owl.carousel.js"></script>
<link rel="shortcut icon" href="gambar/suneast-icon.png"/>
</head>
<body>
<!--start-home-->

<div class="main-header" id="house">
			<div class="header-strip">
			   <div class="container">
				<p class="location"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> <a href=" dintara.kitchen@gmail.com"> dintara.kitchen@gmail.com</a></p>
				<p class="phonenum"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span> (0361) 710 948</p>
				<div class="social-icons">
					<ul>					
						<li><a href="#"><i class="facebook"> </i></a></li>
						<li><a href="#"><i class="twitter"> </i></a></li>
						<li><a href="#"><i class="google-plus"> </i></a></li>	
						<li><a href="#"><i class="dribble"> </i></a></li>										
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			</div>
			
		<!--header-top-->
			<div class="header-top">
			  <div class="container">
					 <nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
						<div class="logo">
							<h1><a class="navbar-brand" href="index.html"> <img src="gambar/suneast-logo.jpg" style="width:255px" alt=" " /></a></h1>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						  <div class="top-menu">
							<nav class="menu menu--francisco">
									<ul class="nav navbar-nav menu__list">
										<li class="menu__item"><a href="index.php" class="menu__link"><span class="menu__helper">Home</span></a></li>
										<li class="menu__item" class ="dropdown"><a href="index.php?page=about" class="menu__link"><span class="menu__helper">Company Profile</span></a></li>
										<li class="menu__item" class ="dropdown"><a href="about.html" class="menu__link"  data-toggle="dropdown" class="dropdown-toggle btn-default"><span class="menu__helper">Product</span></a>
										<ul class="dropdown-menu">
											<li><a href="index.php?page=bakery">Bakery Equipment</a></li>
											<li><a href="index.php?page=gas">Gas Range</a></li>
											<li><a href="index.php?page=induction">Induction Cooker</a></li>
											<li><a href="index.php?page=middle">Middle Kitchen</a></li>
										</ul>
										</li>
										<li class="menu__item"><a href="index.php?page=gallery" class="menu__link"><span class="menu__helper">Portofolio</span></a></li>
										<li class="menu__item"><a href="index.php?page=contact" class="menu__link"><span class="menu__helper">Contact Us</span></a></li>
									</ul>
								</nav>
							</div>
					</div>
					<!-- /.navbar-collapse -->
				</nav>

			   <div class="clearfix"></div>
			</div>
	</div>
	
	<?php 
	if(isset($_GET["page"])){
		$page=$_GET["page"];
		$halaman = "$page.php";
		if(!file_exists($halaman) || empty($page)){
			include"404.php";
		}else{
			include"$halaman";
		}
	}else{
		include"home.php";
	}
?>	
	
<!--//header-top-->
 

        <!-- /Line Slider -->
	</div>
    <!--footer-->
	

		<!--//team-->
			<!---news-->
						
	<!--//reviews-->
	<!--/start-footer-section-->
			<div class="footer-section">
				<div class="container">
					<div class="footer-grids wow bounceIn animated" data-wow-delay="0.4s">
						<div class="col-md-4 footer-grid">
						<h4>About <span>Sun East</span></h4>
						<div class="border2"></div>
						  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id arcu neque, at convallis est felis.</p>
						  <p class="sub">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id arcu neque, at convallis est felis.</p>
						</div>
						<div class="col-md-4 footer-grid tags">
								<h4><span>Links</span></h4>
								<div class="border2"></div>
							<ul class="tag">
								<li><a href="index.php">Home</a></li>
								<li><a href="index.php?page=about">Company Profile</a></li>
								<li><a href="index.php?page=bakery">Bakery Equipment</a></li>
								<li><a href="index.php?page=gas">Gas Range</a></li>
								<li><a href="index.php?page=induction">Induction Cooker</a></li>
								<li><a href="index.php?page=middle">Middle Kitchen</a></li>
								<li><a href="index.php?page=contact">Contact Us</a></li>
								<li><a href="index.php?page=gallery">Portofolio</a></li>
								
							</ul>
						</div>
						<div class="col-md-4 footer-grid ">
								<h4>Our <span>Office</span></h4>
								<div class="border2"></div>
								
							
								<p class="location"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>    Jl. Merta Sari 68F, Suwung Batan 
								Kendal, Denpasar, BALI - INDONESIA.</p>
								
							
								<div class="clearfix"></div>
								
								<div class="clearfix"></div>
						</div>
						
						
					</div>
			</div>
		</div>
	<!--//end-footer-section-->
	<!--//footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>© 2016 Sun East. All rights reserved | Powered by <a href="http://baligatra.com">Baligatra</a></p>
		</div>
	</div>
		<!--start-smooth-scrolling-->
						<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
								<!--end-smooth-scrolling-->
		<a href="#house" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<script src="js/bootstrap.js"></script>

</body>
</html>