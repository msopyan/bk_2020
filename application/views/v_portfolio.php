
<!DOCTYPE html>
<html class="no-js">
<meta charset="utf-8">
	<head>
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
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

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
						<li><a href="<?php echo base_url().'contact'?>">Kontak</a></li>
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
		   					<h2>Our Awesome Products</h2>
		   					<p class="fh5co-lead"> Read the latest new and stories about </p>
		   				</div>
		   			</div>
		   		</div>
		   	</li>
		  	</ul>
	  	</div>
	</aside>



	<div id="fh5co-grid-products" class="animate-box">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>See our products</h2>
					<p>Kami terlah mengerjakan banyak project.</p>
				</div>
			</div>
		</div>
		<?php
			foreach ($data->result_array() as $i) :
				$port_id=$i['port_id'];
				$port_judul=$i['port_judul'];
				$port_deskripsi=$i['port_deskripsi'];
				$port_author=$i['port_author'];
				$port_image=$i['port_image'];
				$port_tglpost=$i['tanggal'];

		?>
		<div class="col-md-4">
			<a href="#" ><img src="<?php echo base_url().'assets/images/'.$port_image;?>" class="img-responsive"></a>
				<div class="v-align">
					<div class="v-align-middle"><br/>
						<h3 class="title"><?php echo $port_judul;?></h3>
						<h5 class="category">Web Application</h5>
					</div>
				</div>
		</div>
		<?php endforeach;?>


	</div>
	<br/>
	<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<br/>
					<p><?php echo $page;?></p>
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
	<!-- Easy PieChart -->
	<script src="<?php echo base_url().'theme/js/jquery.easypiechart.min.js'?>"></script>
	<!-- Flexslider -->
	<script src="<?php echo base_url().'theme/js/jquery.flexslider-min.js'?>"></script>
	<!-- Stellar -->
	<script src="<?php echo base_url().'theme/js/jquery.stellar.min.js'?>"></script>

	<!-- MAIN JS -->
	<script src="<?php echo base_url().'theme/js/main.js'?>"></script>

	</body>
</html>
