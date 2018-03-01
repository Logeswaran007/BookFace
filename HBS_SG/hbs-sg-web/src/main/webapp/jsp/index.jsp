<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<c:set var="root" value="${pageContext.request.contextPath}" />
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>EduTel Academy Educational Solutions</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- favicon
		============================================ -->
<link rel="shortcut icon" type="image/x-icon" href="${root}/academia/img/favicon.ico" />
<!-- Google Fonts
		============================================ -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="http://allfont.net/allfont.css?fonts=montserrat-light" rel="stylesheet" type="text/css" />
<!--linearicons font-->
<link rel="stylesheet" href="${root}/academia/css/linearfont.css" />
<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet" href="${root}/academia/css/bootstrap.min.css" />
<!-- meanmenu CSS
		============================================ -->
<link rel="stylesheet" href="${root}/academia/css/meanmenu.min.css" />
<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet" href="${root}/academia/css/font-awesome.min.css" />
<!-- owl.carousel CSS
		============================================ -->
<link rel="stylesheet" href="${root}/academia/css/owl.carousel.css" />
<link rel="stylesheet" href="${root}/academia/css/owl.theme.css" />
<link rel="stylesheet" href="${root}/academia/css/owl.transitions.css" />
<!-- animate CSS
		============================================ -->
<link rel="stylesheet" href="${root}/academia/css/animate.css" />
<!-- normalize CSS
		============================================ -->
<link rel="stylesheet" href="${root}/academia/css/normalize.css" />
<!-- Nivo Slider CSS -->
<link rel="stylesheet" href="${root}/academia/css/nivo-slider.css" />
<!-- Add venobox css -->
<link rel="stylesheet" href="${root}/academia/venobox/venobox.css" />
<!-- main CSS
		============================================ -->
<link rel="stylesheet" href="${root}/academia/css/main.css" />
<!-- Nivo Slider CSS -->
<link rel="stylesheet" href="${root}/academia/css/nivo-slider.css" />
<!-- style CSS
		============================================ -->
<link rel="stylesheet" href="${root}/academia/css/style.css" />
<!-- responsive CSS
		============================================ -->
<link rel="stylesheet" href="${root}/academia/css/responsive.css" />
<!-- modernizr JS
		============================================ -->
<script src="${root}/academia/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<div class="header_area home-2">
		<div class="div container">
			<div class="row">
				<div class="col-md-7">
					<div class="phone_address clear">
						<p class="no-margin">
							<a href="${root}"><img src="${root}/academia/img/home2/logo-default.png" alt=""></a> <small> <span class="text-msg">Have
									any questions?</span> <span class="icon-set"><i class="fa fa-phone"></i> 044-43849090</span> <span class="icon-set"><i class="fa fa-envelope"></i>
									admin@edutelacademy.com</span>
							</small>
						</p>
					</div>
				</div>
				<div class="col-md-5">
					<div class="form pull-right">
						<div class="language home-2">
							<select class="form-lan">
								<option value="english" selected="selected">English</option>
							</select> &nbsp; <a class="btn btn-success" href="${root}/d56b699830e77ba53855679cb1d252da" title="Login EduTel Online Application"><i
								class="fa fa-desktop fa-lg" aria-hidden="true">&nbsp;&nbsp;</i><i class="fa fa-angle-double-down fa-lg" aria-hidden="true"></i></a>
						</div>
					</div>
					<div class="social_icon pull-right">
						<p>
							<a target="_blank" href="" class="icon-set"><i class="fa fa-facebook"></i></a> <a target="_blank" href="" class="icon-set"><i
								class="fa fa-twitter"></i></a> <a target="_blank" href="" class="icon-set"><i class="fa fa-linkedin"></i></a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--end header  area -->
	<!--Start mobile menu  area -->
	<div class="mobile_memu_area home-2">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="mobile_memu">
						<!--  nav menu-->
						<nav>
							<ul class="navid">
								<li><a href="${root}/academia/index.html">Home</a>
									<ul>
										<li><a href="${root}/academia/index-2.html">Home 2</a></li>
										<li><a href="${root}/academia/index-3.html">Home 3</a></li>
										<li><a href="${root}/academia/index-4.html">Home Box Layout</a></li>
									</ul></li>
								<li><a href="#">Courses</a>
									<ul>
										<li><a href="${root}/academia/courses-item-1.html">Courses List layout 1</a></li>
										<li><a href="${root}/academia/courses-item-2.html">Courses List layout 2 </a></li>
										<li><a href="${root}/academia/single-courses.html">Course Item </a></li>
									</ul></li>
								<li><a href="#">Pages</a>
									<ul>
										<li><a href="${root}/academia/faq.html">FAQ </a></li>
										<li><a href="${root}/academia/">Login Page </a></li>
										<li><a href="${root}/academia/video.html">Video Gallery </a></li>
										<li><a href="${root}/academia/gellary.html">Image Gallery </a></li>
										<li><a href="${root}/academia/about-page.html">About Page </a></li>
										<li><a href="${root}/academia/news-bulletin.html">News Bulletin </a></li>
										<li><a href="${root}/academia/registration.html">Registration Form</a></li>
										<li><a href="${root}/academia/contract.html">Contacts </a></li>
										<li><a href="${root}/academia/404.html">404 </a></li>
									</ul></li>
								<li><a href="${root}/academia/store.html">Store</a></li>
								<li><a href="${root}/academia/blog.html">Blog</a></li>
								<li><a href="${root}/academia/about-page.html">About Us</a></li>
								<li><a href="${root}/academia/contract.html">Contact</a></li>
							</ul>
						</nav>
						<!--end  nav menu-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--end mobile menu  area -->
	<div class="slide_wrap_area">
		<!--Start nav  area -->
		<div class="nav_area home-2">
			<div class="container">
				<div class="row">
					<!--nav item-->
					<div class="col-md-3 col-sm-3 col-xs-3">
						<div class="home2_logo">
							<a href="${root}/academia/index-2.html"><img src="${root}/academia/img/home2/logo-white.png" alt="" /></a>
						</div>
					</div>
					<div class="col-md-9 col-sm-9 col-xs-9">
						<!--  nav menu-->
						<nav class="menu">
							<ul class="navid pull-left">
								<li><a href="${root}/academia/index.html">Home <i class="fa fa-angle-down"></i></a>
									<ul>
										<li><a href="${root}/academia/index-2.html">Home 2</a></li>
										<li><a href="${root}/academia/index-3.html">Home 3</a></li>
										<li><a href="${root}/academia/index-4.html">Home Box Layout</a></li>
									</ul></li>
								<li><a href="#">Courses <i class="fa fa-angle-down"></i></a>
									<ul>
										<li><a href="${root}/academia/courses-item-1.html">Courses List layout 1</a></li>
										<li><a href="${root}/academia/courses-item-2.html">Courses List layout 2 </a></li>
										<li><a href="${root}/academia/single-courses.html">Course Item </a></li>
									</ul></li>
								<li><a href="#">Pages <i class="fa fa-angle-down"></i></a>
									<ul>
										<li><a href="${root}/academia/faq.html">FAQ </a></li>
										<li><a href="${root}/academia/login.html">Login Page </a></li>
										<li><a href="${root}/academia/video.html">Video Gallery </a></li>
										<li><a href="${root}/academia/gellary.html">Image Gallery </a></li>
										<li><a href="${root}/academia/about-page.html">About Page </a></li>
										<li><a href="${root}/academia/news-bulletin.html">News Bulletin </a></li>
										<li><a href="${root}/academia/registration.html">Registration Form</a></li>
										<li><a href="${root}/academia/contract.html">Contacts </a></li>
										<li><a href="${root}/academia/404.html">404 </a></li>
									</ul></li>
								<li><a href="${root}/academia/store.html">Store</a></li>
								<li><a href="${root}/academia/blog.html">Blog</a></li>
								<li><a href="${root}/academia/about-page.html">About Us</a></li>
								<li><a href="${root}/academia/contract.html">Contact</a></li>
							</ul>
						</nav>
						<!--end  nav menu-->
						<div class="search pull-right">
							<div class="search-box">
								<input type="text" class="form_control" placeholder="search..." /> <span class="search-open"><i class="fa fa-search search"></i><i
									class="fa fa-close hidden close"></i></span>
							</div>
						</div>
					</div>
					<!--end nav item -->
				</div>
			</div>
		</div>
		<!--end nav  area -->
		<!-- HOME SLIDER -->
		<div class="slider-wrap home-1-slider" id="home">
			<div id="mainSlider" class="nivoSlider slider-image">
				<img src="${root}/academia/img/home1/s1.jpg" alt="main slider" title="#htmlcaption1" /> <img src="${root}/academia/img/home1/s5.jpg"
					alt="main slider" title="#htmlcaption2" />
			</div>
			<div id="htmlcaption1" class="nivo-html-caption slider-caption-1">
				<div class="slider-progress"></div>
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="slide1-text slide-text">
								<div class="middle-text">
									<div class="left_sidet1">
										<div class="cap-title wow slideInRight" data-wow-duration=".9s" data-wow-delay="0s">
											<h1>
												Opening up a world of <br />education
											</h1>
										</div>
										<div class="cap-dec wow slideInRight" data-wow-duration="1s" data-wow-delay=".5s">
											<h2>An Evaluation of the Education of Looked After Children.</h2>
										</div>
										<div class="cap-readmore animated fadeInUpBig" data-wow-duration="2s" data-wow-delay=".5s">
											<a href="${root}/b76e3a33a9f9466dd15dac0c558b8662">Register With Us</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="htmlcaption2" class="nivo-html-caption slider-caption-2">
				<div class="slider-progress"></div>
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="slide1-text slide-text">
								<div class="middle-text">
									<div class="left_sidet1">
										<div class="cap-title wow slideInRight" data-wow-duration=".9s" data-wow-delay="0s">
											<h1>
												Professional Coaching <br />with Qualified Materials
											</h1>
										</div>
										<div class="cap-dec wow slideInRight" data-wow-duration="1.1s" data-wow-delay="0s">
											<h2>Our Purpose is "to enable organisations to achieve outstanding and sustainable performance by releasing the innate creativity and
												spirit of their people" and "to enable people to reach their highest potential as human beings through, them experiencing new ways of
												âbeingâ and âdoingâ"</h2>
										</div>
										<div class="cap-readmore animated fadeInUpBig" data-wow-duration="1.5s" data-wow-delay=".5s">
											<a href="">Sing Up</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- HOME SLIDER -->
	</div>
	<!--Start about  area -->
	<div class="about_area home-2">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="content-inner">
						<h3 class="module-title">
							Welcome to <span> EduTel Academy</span>
						</h3>
						<div class="content-desc">
							<div class="">
								<p class="lead">EduTel can mimic many of the benefits provided by a physical school (learning materials, online exercises, self-paced
									courses, live online classes, tests, web forums, etc) but delivers these through the internet.</p>
							</div>
							<div class="about_texts">
								<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae,
									ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend
									leo.</p>
								<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae,
									ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend
									leo. Quisque sit amet est et sapien ullamcorper pharetra.</p>
								<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
								<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae,
									ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend
									leo.</p>
								<p>
									<strong>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</strong>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="video-wrapper pull-right">
						<a class="venobox_custom mfp-iframe vidwrap" data-type="iframe" href="https://www.youtube.com/embed/B7r7YY_EO0A?showinfo=0"></a>
					</div>
					<div class="text_timonial">
						<div class="testimonial_owl text_style">
							<div class="item">
								<div class="testimonial_text">
									<div class="testimonial_text_inner">
										<p>They are passionate about there careers and helping you get a kick-start in yours. People and there prosperity are at the heart and
											soul of everythinng we do. We believe education unlocks unlimited potential in people to be exceptional.</p>
										<h2>Josh Coulding</h2>
										<h5>Project Management Guider</h5>
									</div>
								</div>
								<div class="test_thumb">
									<!-- img src="${root}/academia/img/home2/testimonial-1.png" alt="" / -->
								</div>
							</div>
							<div class="item">
								<div class="testimonial_text">
									<div class="testimonial_text_inner">
										<p>They are passionate about there careers and helping you get a kick-start in yours. People and there prosperity are at the heart and
											soul of everythinng we do. We believe education unlocks unlimited potential in people to be exceptional.</p>
										<h2>Josh Coulding</h2>
										<h5>Project Management Guider</h5>
									</div>
								</div>
								<div class="test_thumb">
									<img src="${root}/academia/img/home2/testimonial-2.png" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="testimonial_text">
									<div class="testimonial_text_inner">
										<p>They are passionate about there careers and helping you get a kick-start in yours. People and there prosperity are at the heart and
											soul of everythinng we do. We believe education unlocks unlimited potential in people to be exceptional.</p>
										<h2>Josh Coulding</h2>
										<h5>Project Management Guider</h5>
									</div>
								</div>
								<div class="test_thumb">
									<img src="${root}/academia/img/home2/testimonial-3.png" alt="" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--end about  area -->
	<!--start courses  area -->
	<div class="courses_area home-2">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title">
						<h3 class="module-title">
							Explore all the <span> Courses</span>
						</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<!--start course single  item -->
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						<div class="courses_thumb">
							<a href="#"><img src="${root}/academia/img/home1/course/1.jpg" alt="" /></a>
							<div class="courses_thumb_text">
								<p>
									<a href="#">CELP</a>
								</p>
							</div>
						</div>
						<div class="courses_content">
							<h2>
								<a href="#">CELP</a>
							</h2>
							<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
							<a href="" class="text_uppercase">Read More ...</a>
						</div>
					</div>
				</div>
				<!--End course single  item -->
				<!--start course single  item -->
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						<div class="courses_thumb">
							<a href="#"><img src="${root}/academia/img/home1/course/2.jpg" alt="" /></a>
							<div class="courses_thumb_text">
								<p>
									<a href="#">CLP</a>
								</p>
							</div>
						</div>
						<div class="courses_content">
							<h2>
								<a href="#">CLP</a>
							</h2>
							<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
							<a href="" class="text_uppercase">Read More ...</a>
						</div>
					</div>
				</div>
				<!--End course single  item -->
				<!--start course single  item -->
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						<div class="courses_thumb">
							<a href="#"><img src="${root}/academia/img/home1/course/3.jpg" alt="" /></a>
							<div class="courses_thumb_text">
								<p>
									<a href="#">GMAT</a>
								</p>
							</div>
						</div>
						<div class="courses_content">
							<h2>
								<a href="#">GMAT</a>
							</h2>
							<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
							<a href="" class="text_uppercase">Read More ...</a>
						</div>
					</div>
				</div>
				<!--End course single  item -->
				<!--start course single  item -->
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						<div class="courses_thumb">
							<a href="#"><img src="${root}/academia/img/home1/course/4.jpg" alt="" /></a>
							<div class="courses_thumb_text">
								<p>
									<a href="#">IELTS</a>
								</p>
							</div>
						</div>
						<div class="courses_content">
							<h2>
								<a href="#">IELTS</a>
							</h2>
							<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
							<a href="" class="text_uppercase">Read More ...</a>
						</div>
					</div>
				</div>
				<!--End course single  item -->
				<!--start course single  item -->
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						<div class="courses_thumb">
							<a href="#"><img src="${root}/academia/img/home1/course/5.jpg" alt="" /></a>
							<div class="courses_thumb_text">
								<p>
									<a href="#">IELTS</a>
								</p>
							</div>
						</div>
						<div class="courses_content">
							<h2>
								<a href="#">IELTS</a>
							</h2>
							<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
							<a href="" class="text_uppercase">Read More ...</a>
						</div>
					</div>
				</div>
				<!--End course single  item -->
				<!--start course single  item -->
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						<div class="courses_thumb">
							<a href="#"><img src="${root}/academia/img/home1/course/6.jpg" alt="" /></a>
							<div class="courses_thumb_text">
								<p>
									<a href="#">IELTS</a>
								</p>
							</div>
						</div>
						<div class="courses_content">
							<h2>
								<a href="#">IELTS</a>
							</h2>
							<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
							<a href="" class="text_uppercase">Read More ...</a>
						</div>
					</div>
				</div>
				<!--End course single  item -->
			</div>
		</div>
	</div>
	<!--end courses  area -->
	<!--start ads  area -->
	<div class="teacher_area home-2">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title">
						<h3 class="module-title">
							Our fellow <span>Teachers</span>
						</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/team/1.jpg" alt="" />
							<div class="thumb_text">
								<h2>Dave Young</h2>
								<p>Teacher</p>
							</div>
						</div>
						<div class="teacher_content">
							<h2>Dave Young</h2>
							<span>Teacher</span>
							<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas</p>
							<div class="social_icons">
								<a href="" class="tw"><i class="fa fa-twitter"></i></a> <a href="" class="fb"><i class="fa fa-facebook"></i></a> <a href="" class="lin"><i
									class="fa fa-linkedin"></i></a> <a href="" class="go"><i class="fa fa-google-plus"></i></a>
							</div>
						</div>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/team/2.jpg" alt="" />
							<div class="thumb_text">
								<h2>Matt Macfarlane</h2>
								<p>Teacher</p>
							</div>
						</div>
						<div class="teacher_content">
							<h2>Matt Macfarlane</h2>
							<span>Teacher</span>
							<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas</p>
							<div class="social_icons">
								<a href="" class="tw"><i class="fa fa-twitter"></i></a> <a href="" class="fb"><i class="fa fa-facebook"></i></a> <a href="" class="lin"><i
									class="fa fa-linkedin"></i></a> <a href="" class="go"><i class="fa fa-google-plus"></i></a>
							</div>
						</div>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/team/3.jpg" alt="" />
							<div class="thumb_text">
								<h2>Paul Groves</h2>
								<p>Teacher</p>
							</div>
						</div>
						<div class="teacher_content">
							<h2>Paul Groves</h2>
							<span>Teacher</span>
							<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas</p>
							<div class="social_icons">
								<a href="" class="tw"><i class="fa fa-twitter"></i></a> <a href="" class="fb"><i class="fa fa-facebook"></i></a> <a href="" class="lin"><i
									class="fa fa-linkedin"></i></a> <a href="" class="go"><i class="fa fa-google-plus"></i></a>
							</div>
						</div>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/team/4.jpg" alt="" />
							<div class="thumb_text">
								<h2>John Adams</h2>
								<p>Teacher</p>
							</div>
						</div>
						<div class="teacher_content">
							<h2>John Adams</h2>
							<span>Teacher</span>
							<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas</p>
							<div class="social_icons">
								<a href="" class="tw"><i class="fa fa-twitter"></i></a> <a href="" class="fb"><i class="fa fa-facebook"></i></a> <a href="" class="lin"><i
									class="fa fa-linkedin"></i></a> <a href="" class="go"><i class="fa fa-google-plus"></i></a>
							</div>
						</div>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/team/5.jpg" alt="" />
							<div class="thumb_text">
								<h2>Jane Doe</h2>
								<p>Teacher</p>
							</div>
						</div>
						<div class="teacher_content">
							<h2>Jane Doe</h2>
							<span>Teacher</span>
							<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas</p>
							<div class="social_icons">
								<a href="" class="tw"><i class="fa fa-twitter"></i></a> <a href="" class="fb"><i class="fa fa-facebook"></i></a> <a href="" class="lin"><i
									class="fa fa-linkedin"></i></a> <a href="" class="go"><i class="fa fa-google-plus"></i></a>
							</div>
						</div>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/team/6.jpg" alt="" />
							<div class="thumb_text">
								<h2>Diedre Downing</h2>
								<p>Teacher</p>
							</div>
						</div>
						<div class="teacher_content">
							<h2>Diedre Downing</h2>
							<span>Teacher</span>
							<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas</p>
							<div class="social_icons">
								<a href="" class="tw"><i class="fa fa-twitter"></i></a> <a href="" class="fb"><i class="fa fa-facebook"></i></a> <a href="" class="lin"><i
									class="fa fa-linkedin"></i></a> <a href="" class="go"><i class="fa fa-google-plus"></i></a>
							</div>
						</div>
					</div>
				</div>
				<!--End teacher single  item -->
			</div>
		</div>
	</div>
	<!--end teacher  area -->
	<!--start offer  area -->
	<div class="offer_area home-2">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="media-box">
						<a class="venobox_custom mfp-iframe video-button text-uppercase" data-type="iframe" href="https://www.youtube.com/embed/JC82Il2cjqA"> <i
							class="fa fa-play-circle-o"></i> <span>Watch Video</span>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="title">
						<h3 class="offer-title">
							Like what you're learning <span> Get started today!</span>
						</h3>
					</div>
					<div class="offer_item">
						<div class="offer_content">
							<p>EduTel can mimic many of the benefits provided by a physical school (learning materials, online exercises, self-paced courses, live
								online classes, tests, web forums, etc) but delivers these through the Internet.</p>
							<a href="" class="readmore">Sing Up</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--end offer  area -->
	<!--start priging  area -->
	<div class="priging_area home-2">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-sm-12 col-md-6">
					<div class="row">
						<div class="col-md-12">
							<div class="title">
								<h3 class="module-title">
									Develop skills with <span>EduTel</span>
								</h3>
							</div>
						</div>
					</div>
					<div class="row">
						<!-- service single item -->
						<div class="col-md-12 col-sm-6 col-lg-12">
							<div class="service_item">
								<span class="lnr lnr-film-play"></span>
								<h2>Over 20,640 Free Tutorial</h2>
								<p>We have step by step tutorials &amp; instructions</p>
							</div>
						</div>
						<!-- end service single item -->
						<!-- service single item -->
						<div class="col-md-12 col-sm-6 col-lg-12">
							<div class="service_item">
								<span class="lnr lnr-camera-video"></span>
								<h2>Over 20,640 Free Tutorial</h2>
								<p>We have step by step tutorials &amp; instructions</p>
							</div>
						</div>
						<!-- end service single item -->
						<!-- service single item -->
						<div class="col-md-12 col-sm-6 col-lg-12">
							<div class="service_item">
								<span class="lnr lnr-book"></span>
								<h2>Over 180k Books Available</h2>
								<p>We have step by step tutorials &amp; instructions</p>
							</div>
						</div>
						<!-- end service single item -->
						<!-- service single item -->
						<div class="hidden-md col-sm-6 hidden-lg">
							<div class="service_item">
								<span class="lnr lnr-apartment"></span>
								<h2>Over 180k Books Available</h2>
								<p>We have step by step tutorials &amp; instructions</p>
							</div>
						</div>
						<!-- end service single item -->
					</div>
				</div>
				<div class="col-lg-6 col-sm-12 col-md-6">
					<div class="row">
						<div class="col-md-12">
							<div class="title">
								<h3 class="module-title title2">
									Our Latest <span>Publications</span>
								</h3>
							</div>
						</div>
					</div>
					<div class="row">
						<!-- single item priging -->
						<div class="col-md-6 col-sm-6 col-lg-6">
							<div class="priging_item">
								<div class="priging_thumb">
									<a href="${root}/academia/single-store.html">
										<div class="atvImg">
											<div class="atvImg-layer" data-img="img/home1/book/2.png"></div>
										</div>
									</a>
								</div>
								<div class="priging_content">
									<h2>Dont Make me think</h2>
									<a href="#">Buy Now <span>| $399</span></a>
								</div>
							</div>
						</div>
						<!-- end single item priging -->
						<!-- single item priging -->
						<div class="col-md-6 col-sm-6 col-lg-6">
							<div class="priging_item">
								<div class="priging_thumb">
									<a href="${root}/academia/single-store.html">
										<div class="atvImg">
											<div class="atvImg-layer" data-img="img/home1/book/3.png"></div>
										</div>
									</a>
								</div>
								<div class="priging_content">
									<h2>Dont Make me think</h2>
									<a href="#">Buy Now <span>| $399</span></a>
								</div>
							</div>
						</div>
						<!-- end single item priging -->
						<div class="col-md-12">
							<div class="learnmore text-left">
								<a href="" class="read_more2">More books <i class="fa fa-arrow-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--end priging  area -->
	<!--start news  area -->
	<div class="news_area home-2">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title">
						<h3 class="module-title">
							Latest <span>News</span>
						</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<!--start single news  item -->
				<div class="col-md-3 col-sm-6">
					<div class="single_news_item">
						<div class="news_thumb">
							<a href="#"><img src="${root}/academia/img/home1/news/1.jpg" alt="" /></a>
						</div>
						<div class="news_content">
							<p class="date">8 Jan 2016</p>
							<h2>
								<a href="${root}/academia/single-blog.html">A Diploma of Accounting is specifically designed for indivisuals </a>
							</h2>
						</div>
					</div>
				</div>
				<!--end single news  item -->
				<!--start single news  item -->
				<div class="col-md-3 col-sm-6">
					<div class="single_news_item">
						<div class="news_thumb">
							<a href="#"><img src="${root}/academia/img/home1/news/2.jpg" alt="" /></a>
						</div>
						<div class="news_content">
							<p class="date">8 Jan 2016</p>
							<h2>
								<a href="${root}/academia/single-blog.html">A Diploma of Accounting is specifically designed for indivisuals </a>
							</h2>
						</div>
					</div>
				</div>
				<!--end single news  item -->
				<!--start single news  item -->
				<div class="col-md-3 col-sm-6">
					<div class="single_news_item">
						<div class="news_thumb">
							<a href="#"><img src="${root}/academia/img/home1/news/3.jpg" alt="" /></a>
						</div>
						<div class="news_content">
							<p class="date">8 Jan 2016</p>
							<h2>
								<a href="${root}/academia/single-blog.html">A Diploma of Accounting is specifically designed for indivisuals </a>
							</h2>
						</div>
					</div>
				</div>
				<!--end single news  item -->
				<!--start single news  item -->
				<div class="col-md-3 col-sm-6">
					<div class="single_news_item">
						<div class="news_thumb">
							<a href="#"><img src="${root}/academia/img/home1/news/4.jpg" alt="" /></a>
						</div>
						<div class="news_content">
							<p class="date">8 Jan 2016</p>
							<h2>
								<a href="${root}/academia/single-blog.html">A Diploma of Accounting is specifically designed for indivisuals </a>
							</h2>
						</div>
					</div>
				</div>
				<!--end single news  item -->
			</div>
		</div>
	</div>
	<!--end news  area -->
	<!--start share  area -->
	<div class="share_area home-2 sharre_top">
		<div class="container">
			<div class="row">
				<div class="share-container">
					<!-- single item brand -->
					<div class="col-md-3 col-sm-6 col-lg-3">
						<div class="share-item">
							<div class="brand_content content_left_fb">
								<a href="#"> <i class="fa fa-facebook"></i>
									<div class="icone_text">
										<p>893K Followers</p>
										<h5>Follow Us</h5>
									</div>
								</a>
							</div>
						</div>
					</div>
					<!-- end single item brand -->
					<!-- single item brand -->
					<div class="col-md-3 col-sm-6 col-lg-3">
						<div class="share-item">
							<div class="brand_content content_left_tw">
								<a href="#"> <i class="fa fa-twitter"></i>
									<div class="icone_text">
										<p>893K Followers</p>
										<h5>Follow Us</h5>
									</div>
								</a>
							</div>
						</div>
					</div>
					<!-- end single item brand -->
					<!-- single item brand -->
					<div class="col-md-3 col-sm-6 col-lg-3">
						<div class="share-item">
							<div class="brand_content content_left_pn">
								<a href="#"> <i class="fa fa-google-plus"></i>
									<div class="icone_text">
										<p>893K Followers</p>
										<h5>Follow Us</h5>
									</div>
								</a>
							</div>
						</div>
					</div>
					<!-- end single item brand -->
					<!-- single item brand -->
					<div class="col-md-3 col-sm-6 col-lg-3">
						<div class="share-item">
							<div class="brand_content content_left_in">
								<a href="#"> <i class="fa fa-linkedin"></i>
									<div class="icone_text">
										<p>893K Followers</p>
										<h5>Follow Us</h5>
									</div>
								</a>
							</div>
						</div>
					</div>
					<!-- end single item brand -->
				</div>
			</div>
		</div>
	</div>
	<!--end share  area -->
	<!-- footer  area -->
	<div class="footer_area">
		<div class="container">
			<div class="row">
				<div class="borderbottom">
					<div class="col-md-6 col-sm-12">
						<div class="footer_top_left">
							<img src="${root}/academia/img/logo-white.png" alt="" /> <span>Learning language is easier then ever before</span>
						</div>
					</div>
					<div class="col-md-6 col-sm-12">
						<div class="footer_top_right">
							<span>256 Tutors 20,690 Tutorials 646 Video Courses </span> <a href="" class="read_more">sing up</a>
						</div>
					</div>
				</div>
			</div>
			<!-- widget area -->
			<div class="row">
				<div class="col-md-6 col-sm-12">
					<!--single widget item -->
					<div class="single_widget">
						<div class="widget_thumb">
							<img src="${root}/academia/img/home1/camp-1.jpg" alt="" />
						</div>
						<div class="widget_content">
							<h2>Come &amp; enjoy our free webinner</h2>
							<p>Pellentesque habitant morbi tristique senectus et netus et malesuada</p>
							<a href="" class="read_more">JOIN NOW</a>
						</div>
					</div>
					<!--single widget item -->
					<div class="single_widget">
						<div class="widget_thumb">
							<img src="${root}/academia/img/home1/camp-2.jpg" alt="" />
						</div>
						<div class="widget_content">
							<h2>Come &amp; enjoy our free webinner</h2>
							<p>Pellentesque habitant morbi tristique senectus et netus et malesuada</p>
							<a href="" class="read_more">JOIN NOW</a>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<!--single widget item -->
					<div class="single_widget">
						<div class="widget_content">
							<h2>Meet EduTel</h2>
							<ul>
								<li><a href="#">Get Started</a></li>
								<li><a href="#">Download</a></li>
								<li><a href="#">Scaffolding</a></li>
								<li><a href="#">Base CSS</a></li>
							</ul>
						</div>
					</div>
					<!--single widget item -->
					<div class="single_widget">
						<div class="widget_content">
							<h2>Help and Support</h2>
							<ul>
								<li><a href="#">Get Started</a></li>
								<li><a href="#">Download</a></li>
								<li><a href="#">Scaffolding</a></li>
								<li><a href="#">Base CSS</a></li>
								<li><a href="#">Base CSS</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<!--single widget item -->
					<div class="single_widget">
						<div class="widget_content">
							<h2>Join Our Community</h2>
							<ul>
								<li><a href="#">Official LESS Website</a></li>
								<li><a href="#">LESS Wiki</a></li>
								<li><a href="#">Source Code</a></li>
								<li><a href="#">Base CSS</a></li>
							</ul>
						</div>
					</div>
					<!--single widget item -->
					<div class="single_widget">
						<div class="widget_content">
							<h2>Subscribe Newsletter</h2>
							<p>Get latest updates, news, survays &amp; offers</p>
							<div class="inputbox">
								<input type="text" placeholder="your email here" name="name" />
								<button type="submit" class="read_more buttons">
									Subscribe <i class="fa fa-graduation-cap"></i>
								</button>
							</div>
						</div>
					</div>
					<!--end single widget item -->
				</div>
			</div>
			<!-- end widget area -->
		</div>
	</div>
	<!-- end footer  area -->
	<!-- footer bottom area -->
	<div class="footer_bottom_area">
		<div class="container">
			<div class="row">
				<div class=" col-sm-6 col-md-6 col-lg-6">
					<div class="footer_text">
						<p>Copyright</p>
						<script>
							document.write(new Date().getFullYear())
						</script>
						&copy;
						<p>EduTel Academy. All Rights Reserved.</p>
					</div>
				</div>
				<div class=" col-sm-6 col-md-6 col-lg-6">
					<p class="text-right">
						Design By <a href="http://hatchbirdsolutions.com/">HatchBird</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- jquery
		============================================ -->
	<script src="${root}/academia/js/vendor/jquery-1.11.3.min.js"></script>
	<!-- bootstrap JS
		============================================ -->
	<script src="${root}/academia/js/bootstrap.min.js"></script>
	<!-- wow JS
		============================================ -->
	<script src="${root}/academia/js/wow.min.js"></script>
	<!-- Nivo Slider JS -->
	<script src="${root}/academia/js/jquery.nivo.slider.pack.js"></script>
	<!-- meanmenu JS
		============================================ -->
	<script src="${root}/academia/js/jquery.meanmenu.min.js"></script>
	<!-- owl.carousel JS
		============================================ -->
	<script src="${root}/academia/js/owl.carousel.min.js"></script>
	<!-- scrollUp JS
		============================================ -->
	<script src="${root}/academia/js/jquery.scrollUp.min.js"></script>
	<!-- Apple TV Effect -->
	<script src="${root}/academia/js/atvImg-min.js"></script>
	<!-- Add venobox js -->
	<script type="text/javascript" src="${root}/academia/venobox/venobox.min.js"></script>
	<!-- plugins JS
		============================================ -->
	<script src="${root}/academia/js/plugins.js"></script>
	<!-- main JS
		============================================ -->
	<script src="${root}/academia/js/main.js"></script>
</body>
</html>