
<!DOCTYPE html>
<html class="no-js">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<link rel="shorcut icon" type="text/css" href="<?php echo base_url().'assets/images/favicon.ico'?>">
	<title>Bahasa Kita | NLP and AI (Speech Recognition) Solutions for Bahasa Indonesia</title>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta name="description" content="NLP and AI (Speech Recognition) Solutions for Bahasa Indonesia, Indonesia, Bahasa Indonesia, Teknologi Suara, Teknologi Pemprosesan Suara, Kecerdasan Buat, Chatbot Bahasa Indonesia, Voice Chatbot, Voice Chatbot bahasa Indonesia" />
	<meta name="application-name" content="Bahasa Kita"/>
	<meta name="referrer" content="no-referrer-when-downgrade"/>
	<meta property="og:site_name" content="Bahasa Kita"/>
	<meta property="og:url" content="https://bahasakita.co.id/">
	<meta property="og:title" content="Bahasa Kita | NLP and AI (Speech Recognition) Solutions for Bahasa Indonesia">
	<meta property="og:description" content="NLP and AI (Speech Recognition) Solutions for Bahasa Indonesia, Indonesia, Bahasa Indonesia, Teknologi Suara, Teknologi Pemprosesan Suara, Kecerdasan Buat, Chatbot Bahasa Indonesia, Voice Chatbot, Voice Chatbot bahasa Indonesia"/>
	<meta name="keywords" content="" />
	<meta name="author" content="Bahasa Kita" />
	
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
	<!-- Animate.css -->
	<link rel="stylesheet" href="<?php echo base_url().'theme/css/animate.css'?>">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="<?php echo base_url().'theme/css/icomoon.css'?>">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="<?php echo base_url().'theme/css/bootstrap.css'?>">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="<?php echo base_url().'theme/css/flexslider.css'?>">
	<!-- Theme style  -->
	<link rel="stylesheet" href="<?php echo base_url().'theme/css/style.css'?>">

	<!-- Modernizr JS -->
	<script src="<?php echo base_url().'theme/js/modernizr-2.6.2.min.js'?>"></script>

	</head>
	<body>


	<div id="fh5co-page">
	<header id="fh5co-header" role="banner">
		<div class="container">
			<div class="header-inner">
			<a href="<?php echo base_url().''?>" title="Go to Home"><img alt="bk logo" class="logo" src="assets/images/mylogo.png"</a>
				<nav role="navigation">
				<ul>
						<li><a href="<?php echo base_url().'about'?>">Tentang Kami</a></li>
						<li><a href="<?php echo base_url().'services'?>">Solusi</a></li>
						<li><a href="<?php echo base_url().'blog'?>">Blog</a></li>
						<li><a href="<?php echo base_url().'career'?>">Karir</a></li>
						<li><a href="<?php echo base_url().'contact'?>">Hubungi Kami</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>


	<aside id="fh5co-hero" clsas="js-fullheight">
		<div class="flexslider js-fullheight">
			<ul class="slides">
		   	<li style="background-color: #3E8AEE">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="col-md-10 col-md-offset-1 text-center js-fullheight slider-text">
		   				<div class="slider-text-inner">
		   					<h3 class="main-title">Get in touch. Don't be shy.</h3>
		   					<p class="fh5co-lead">Kami siap melayani Anda 24/7</p>
		   				</div>
		   			</div>
		   		</div>
		   	</li>
		  	</ul>
	  	</div>
	</aside>

	<div class="fh5co-contact animate-box">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<h3>Hubungi Kami</h3>
					<p>Untuk informasi tambahan, demo, dan pertanyaan lain, silahkan mengisi formulir berikut dan kami akan memberikan balasan secepatnya.</p>
				</div>

				<div class="col-md-8 col-md-push-1 col-sm-12 col-sm-push-0 col-xs-12 col-xs-push-0">
				<?php echo $this->session->flashdata('msg');?>
					<div class="row">
					<form method="post" action="<?php echo base_url().'kontak/kirim_pesan'?>">
						<div class="col-md-6">
							<div class="form-group">
								<input class="form-control" name="nama" placeholder="Nama" type="text" required>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input class="form-control" name="email" placeholder="Email" type="email" required>
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<textarea name="pesan" class="form-control" id="" cols="30" rows="7" placeholder="Message" required></textarea>
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<input value="Kirim Pesan" class="btn btn-primary" type="submit">
							</div>
						</div>
					</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="map" class="animate-box" data-animate-effect="fadeIn">
		<center>
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3624.4459797851464!2d106.94262424165832!3d-6.236250393352607!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e698cc00addf099%3A0x2a46009e7956286a!2sPT.%20Bahasa%20Kinerja%20Utama!5e0!3m2!1sid!2sid!4v1580802217460!5m2!1sid!2sid" width="100%" height="500px" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
		</center>
	</div>

	
	<?php $this->load->view('v_footer');?>
	</div>


	<!-- jQuery -->
	<script src="<?php echo base_url().'theme/js/jquery.min.js'?>"></script>
	<!-- jQuery Easing -->
	<script src="<?php echo base_url().'theme/js/jquery.easing.1.3.js'?>"></script>
	<!-- Bootstrap -->
	<script src="<?php echo base_url().'theme/js/bootstrap.min.js'?>"></script>
	<!-- Waypoints -->
	<script src="<?php echo base_url().'theme/js/jquery.waypoints.min.js'?>"></script>
	<!-- Flexslider -->
	<script src="<?php echo base_url().'theme/js/jquery.flexslider-min.js'?>"></script>


	<!-- MAIN JS -->
	<script src="<?php echo base_url().'theme/js/main.js'?>"></script>

	</body>
</html>
