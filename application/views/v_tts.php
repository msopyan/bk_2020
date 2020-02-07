
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
		   					<h3 class="main-title">Our Awesome Products</h3>
		   					<p class="fh5co-lead"> Read the latest new and stories about </p>
		   				</div>
		   			</div>
		   		</div>
		   	</li>
		  	</ul>
	  	</div>
    </aside>

    <div id="fh5co-value-tts" class="animate-box">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-left fh5co-heading">
					<h2>Magically generate sharable smart notes that sync audio, text, and image.</h2>
				</div>
				<div class="col-md-4 text-center item-block">
					<span class="icon"><img src="<?php echo base_url().'theme/images/1.png'?>" class="img-responsive"></span>
					<h3>Terbaik</h3>
					<p>Percayakan pekerjaan rutin kepada kecerdasan buatan untuk hasil yang akurat.</p>
				</div>
				<div class="col-md-4 text-center item-block">
					<span class="icon"><img src="<?php echo base_url().'theme/images/2.png'?>" class="img-responsive"></span>
					<h3>Terbaik</h3>
					<p>Dengan otomatisasi, mempermudah pelanggan dalam mengakses layanan bisnis Anda.</p>
				</div>
				<div class="col-md-4 text-center item-block">
					<span class="icon"><img src="<?php echo base_url().'theme/images/3.png'?>" class="img-responsive"></span>
					<h3>Terbaik</h3>
					<p>AI dapat belajar dari data yang dikumpulkan untuk memprediksi kejadian di masa depan.</p>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-tts" class="animate-box fadeInUp animated">
		<div class="container w-75">
    		<div class="container my-1" id="general_alerts"></div>
    			<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Let's Synthesize</h2>
					<p>Synthesize natural high fidelity text-to-speech voice with the cutting edge machine technology.</p>
				</div>
    			<div class="row mt-3 px-0 px-xl-5 px-lg-5 px-md-5 px-sm-0">
        			<div class="col-12 card card-body bg-light">
            			<form accept-charset="UTF-8" method="POST">
                			<textarea class="form-control" id="ttsbk-textarea" placeholder="Type in your text"rows="5" style="resize: none"></textarea>
               					<p class="float-right mt-3" id="ttsbk-count"></p>
                			<button class="btn btn-primary mt-3" type="submit" id="ttsbk-send">Synthesize</button>
            			</form>
        			</div>
    			</div>
    			<div class="row mt-3 px-0 px-xl-5 px-lg-5 px-md-5 px-sm-0" id="ttsbk-result-placeholder">
    		</div>
		</div>
	</div>

	<div id="fh5co-call-action" class="animate-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 text-call-action col-md-8">
					<p>Tertarik untuk mendapatkan solusi Kecerdasan Buatan dengan kami</p>
				</div>
				<div class="col-md-1 col-md-push-1">
					<p><a href="<?php echo base_url().'contact'?>" class="btn btn-primary btn-outline with-arrow">Get started <i class="icon-arrow-right"></i></a></p>
				</div>
			</div>
		</div>
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
