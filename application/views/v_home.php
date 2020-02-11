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
	<link rel="shortcut icon" href="<?php echo base_url().'theme/favicon.ico'?>">

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
	<?php
            error_reporting(0);
            function limit_words($string, $word_limit){
                $words = explode(" ",$string);
                return implode(" ",array_splice($words,0,$word_limit));
            }

        ?>

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


	<aside id="fh5co-hero" class="js-fullheight">
		<div class="flexslider js-fullheight">
			<ul class="slides">
		   	<li style="background-image: url(<?php echo base_url().'theme/images/background_home.png'?>);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="col-lg-8 text-left js-fullheight slider-text">
		   				<div class="slider-text-inner">
		   					<h3 class="main-title">Memberikan solusi dengan teknologi</h3>
							<p class="sub-title">Cari tahu bagaimana Pemrosesan Bahasa Alami dan Teknologi Kecerdasan Buatan dalam Bahasa Indonesia memberikan solusi untuk anda.</p>   
							<p><a href="#" class="btn btn-primary btn-lg">Lanjut</a></p>
		   				</div>
		   			</div>
		   		</div>
		   	</li>
		  	</ul>
	  	</div>
	</aside>

	<div id="fh5co-why-us" class="animate-box">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Apa yang dapat AI berikan?</h2>
				</div>
				<div class="col-md-4 text-center item-block">
					<span class="icon"><img src="<?php echo base_url().'theme/images/1.png'?>" class="img-responsive"></span>
					<h3>Efisiensi Pengeluaran</h3>
					<p>Percayakan pekerjaan rutin kepada kecerdasan buatan untuk hasil yang akurat.</p>
				</div>
				<div class="col-md-4 text-center item-block">
					<span class="icon"><img src="<?php echo base_url().'theme/images/2.png'?>" class="img-responsive"></span>
					<h3>Pengalaman Baru untuk Pelanggan</h3>
					<p>Dengan otomatisasi, mempermudah pelanggan dalam mengakses layanan bisnis Anda.</p>
				</div>
				<div class="col-md-4 text-center item-block">
					<span class="icon"><img src="<?php echo base_url().'theme/images/3.png'?>" class="img-responsive"></span>
					<h3>Masa Depan</h3>
					<p>AI dapat belajar dari data yang dikumpulkan untuk memprediksi kejadian di masa depan.</p>
				</div>
			</div>
		</div>
	</div>
	
	<div id="fh5co-solution" class="animate-box">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Cari tau solusi kecerdasan buatan yang cocok untuk bisnis Anda!</h2>
				</div>
			</div>
			<div class="row">
        		<div class="column-33" class="animate-box">
          			<img src="<?php echo base_url().'theme/images/img-konten-home-notula.png'?>" alt="App" width="335" height="340">
        		</div>
        		<div class="column-66">
          			<h1 class="large-font">Produk</h1>
            		<p class="text-content">Berbagai produk kami mulai dari efisiensi rapat dengan transkripsi otomatis, hiburan sarat dengan edukasi hingga perangkat yang mengatur berbagai IoT.</p>
          			<a href="#" class="link-product" title="Transkripsi rapat secara otomatis, realtime dan aman. Dapat dilakukan secara pararel dan menghasilkan risalah tanpa harus menunggu lama.">Notula</a>
          			<div>
            			<a href="#" class="link-product" title="Transkripsi rapat secara otomatis. real time dan lebih ringan dari Notula. Memiliki berbagai fitur yang bisa kamu tambahkan sesuai kebutuhan.">Notula Lite</a>
          			</div>
          			<div>
            			<a href="#" class="link-product" title="Cara baru menikmati komik dan membuat podcast cukup dengan menulisnya! Jadilah yang terpilih untuk mencoba pengalaman baru ini.">T-Man</a>
          			</div>
          			<div>
            			<a href="#" class="link-product" title="Punya pertanyaan, ingin menyalakan lampu, mengganti channel televisi dan lain-lain? Suarakan keinginanmu dengan smart speaker berbahasa Indonesia dibuat oleh Bahasa Kita.">Smart Speaker</a>
          			</div>
        		</div>
      		</div>
			<div class="container">
      			<div class="row">
        			<div class="column-66" >
          				<h1 class="large-font">Layanan</h1>
            			<p class="text-content">Suarakan produk anda di berbagai kanal  serta dapatkan insight dari pelanggan bisnis anda dengan kecerdasan buatan.</p>
          				<a href="#" class="link-product" title="Jangkau lebih banyak pelanggan dan tingkatkan efisiensi bisnis anda dengan mesin konversi teks ke suara dan sebaliknya dalam Bahasa Indonesia">Text to Speech</a>
          			<div>
            			<a href="#" class="link-product" title="Tinggalkan cara lama dan rasakan peningkatan kualitas layanan call center anda dengan teknologi Smart Call Center yang memberikan insight untuk anda dan pengalaman baru untuk pelanggan anda.">Smart Call Center</a>
					</div>
				</div>
				<div class="column-33">
         			<img src="<?php echo base_url().'theme/images/img-konsultasi-home.png'?>" width="330" height="340" >
       			</div>
			</div>
			<div class="col-md-12 text-center">
				<p><a href="<?php echo base_url().'services'?>" class="btn btn-primary btn-outline with-arrow">View More <i class="icon-arrow-right"></i></a></p>
			</div>
		</div>
	</div>
	
	<div id="fh5co-client" class="animate-box">
		<div class="container">
			<div class="text-center fh5co-heading">
				<h2>Klien kami yang luar biasa</h2>
			</div>
			<div class="row">
				<div class="col-md-2 item-block">
					<span class="icon"><img src="<?php echo base_url().'theme/images/references/kpk.png'?>" class="img-responsive"></span>
				</div>
				<div class="col-md-4 item-block">
					<span class="icon"><img src="<?php echo base_url().'theme/images/references/ma.png'?>" class="img-responsive"></span>
				</div>
				<div class="col-md-2  item-block">
					<span class="icon"><img src="<?php echo base_url().'theme/images/references/dpr.png'?>" class="img-responsive"></span>
				</div>
				<div class="col-md-4 item-block">
					<span class="icon"><img src="<?php echo base_url().'theme/images/references/kemenkes.png'?>" class="img-responsive"></span>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-blog" class="animate-box">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>ARTIKEL TERBARU</h2>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
			<?php
				foreach ($post->result_array() as $j) :
					$post_id=$j['tulisan_id'];
					$post_judul=$j['tulisan_judul'];
					$post_isi=$j['tulisan_isi'];
					$post_author=$j['tulisan_author'];
					$post_image=$j['tulisan_gambar'];
					$post_tglpost=$j['tanggal'];
					$post_slug=$j['tulisan_slug'];
			?>
				<div class="col-md-4">
					<a class="fh5co-entry" href="<?php echo base_url().'artikel/'.$post_slug;?>">
						<figure>
						<img src="<?php echo base_url().'assets/images/'.$post_image;?>" alt="" class="img-responsive">
						</figure>
						<div class="fh5co-copy">
							<h3><?php echo $post_judul;?></h3>
							<span class="fh5co-date"><?php echo $post_tglpost.' | '.$post_author;?></span>
							<?php echo limit_words($post_isi,20).'...';?>
						</div>
					</a>
				</div>
				<?php endforeach;?>

				<div class="col-md-12 text-center">
					<p><a href="<?php echo base_url().'blog'?>" class="btn btn-primary btn-outline with-arrow">View More <i class="icon-arrow-right"></i></a></p>
				</div>
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
					<p><a href="<?php echo base_url().'portfolio'?>" class="btn btn-primary btn-outline with-arrow">Get started <i class="icon-arrow-right"></i></a></p>
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
