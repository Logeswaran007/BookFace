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
							<small> <span class="text-msg">Have any questions?</span>
								<span class="icon-set"><i class="fa fa-phone"></i>
									044-43849090</span> <span class="icon-set"><i
									class="fa fa-envelope"></i> admin@edutelacademy.com</span> <img
								src="academia\img\home2\new.gif" style="width: 30px;" alt="">
								<a href="http://online.edutelacademy.com/"><b>OnlineTest</b></a>
							</small>
						</p>
					</div>
				</div>
				<div class="col-md-5">
					<div class="form pull-right">
						<div class="language home-2">
							<select class="form-lan">
								<option value="english" selected="selected">English</option>
							</select> &nbsp;
							<!-- <a href="loginAuthentication.do">Register With Us -->
							<a class="btn btn-success" style="white-space:nowrap"
								title="Login EduTel"
								href="loadPage.do?p=loginAuthenticationNew"> <!-- <a class="btn btn-success" data-toggle="modal"
								title="Login EduTel" href="#login-modal"> -->
								<i class="fa fa-desktop fa-lg" aria-hidden="true">&nbsp;&nbsp;</i><i
								class="fa fa-angle-double-down fa-lg" aria-hidden="true"><p>Login</p></i>
							</a>
						</div>
					</div>
					<div class="social_icon pull-right">
						<p>
							<a target="_blank" href="" class="icon-set"><i
								class="fa fa-facebook"></i></a> <a target="_blank" href=""
								class="icon-set"><i class="fa fa-twitter"></i></a> <a
								target="_blank" href="" class="icon-set"><i
								class="fa fa-linkedin"></i></a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!--Start mobile menu  area -->
	<div class="mobile_memu_area home-2">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="mobile_memu">
						<!--  nav menu-->
						<nav class="menu">
							<ul class="navid">

								<li id="m1" class="active"><a href="${root}">Home</a></li>
								<li id="m2"><a href="d737de3b00bf631e217984a388a7ec3d">About</a></li>
								<li id="m3"><a href="c174c677a7339b45a8cdabb314eb8d4e2e7f936a">Gallery</a></li>
								<!-- <li id="m4"><a href="edutel_static/index.html" target="_blank">Engg./Medical</a></li> -->
								<li id="m4"><a href="f71c5326fbc2326173fa5d53fc3c87fc79938593">Careers</a></li>

								<li id="m5"><a href="c827c7e404cd76345ed7d5c77d8ed35b">Resource
										Team</a></li>
								<li id="m6"><a href="d4af635518355a9ec441480b205381dd239123ce">Terms & Conditions</a></li>

							   <li id="m7"><a href="#">Online Payment</a></li>

								<li id="m8"><a href="a1c30d4f2016e6e526d10b2bfd8006d4">Contact</a></li>


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
					<div class="col-md-3 col-sm-3 col-xs-3" style="width: 20%">
						<div class="home2_logo">
							<a href="loadPage.do?p=Home"><img
								src="${root}/academia/img/home2/logo-white.png" alt="" /></a>
						</div>
					</div>
					<div class="col-md-9 col-sm-9 col-xs-9" style="width: 80%">
						<!--  nav menu-->
						<nav class="menu">
							<ul class="navid pull-left">

								<li id="m11" class="active"><a href="loadPage.do?p=Home">Home</a></li>
								<li id="m21"><a href="d737de3b00bf631e217984a388a7ec3d">About</a></li>
								<li id="m31"><a href="c174c677a7339b45a8cdabb314eb8d4e2e7f936a">Gallery</a></li>
								<!-- <li id="m41"><a href="edutel_static/index.html" target="_blank">Engg./Medical</a></li> -->
								<li id="m41"><a href="f71c5326fbc2326173fa5d53fc3c87fc79938593">Careers</a></li>
								<li id="m51"><a href="c827c7e404cd76345ed7d5c77d8ed35b">Resource
										Team</a></li>
								<li id="m61"><a href="d4af635518355a9ec441480b205381dd239123ce">Terms & Conditions</a></li>

								 	<li id="m71"><a href="#">Online Payment</a></li>

								<li id="m81"><a href="a1c30d4f2016e6e526d10b2bfd8006d4">Contact</a></li>
							</ul>
						</nav>
						<!--end  nav menu-->

					</div>
					<!--end nav item -->
				</div>
			</div>
		</div>
		<!--end nav  area -->
		<!-- HOME SLIDER -->
		
			<div class="slider-wrap home-1-slider" id="home">
			<div id="mainSlider" class="nivoSlider slider-image">
				<img src="${root}/academia/img/home1/slide/s3.jpg" alt="main slider"
					title="#htmlcaption3" /> <img
					src="${root}/academia/img/home1/slide/s2.jpg" alt="main slider"
					title="#htmlcaption2" /> <img
					src="${root}/academia/img/home1/slide/s1.jpg" alt="main slider"
					title="#htmlcaption3" />
					<img
					src="${root}/academia/img/home1/slide/s4.jpg" alt="main slider"
					title="#htmlcaption4" />
					<img
					src="${root}/academia/img/home1/slide/s5.jpg" alt="main slider"
					title="#htmlcaption5" />
					

			</div>
			<div id="htmlcaption1" class="nivo-html-caption slider-caption-1">
				<div class="slider-progress"></div>
				<div class="container">
					<div class="row">
						<div class="col-md-9">
							<div class="slide1-text slide-text">
								<div class="middle-text">
									<div class="left_sidet1">
										<div class="cap-title1 wow slideInRight"
											data-wow-duration=".9s" data-wow-delay="0s">
											<!-- <h1>
												Opening up a world of <br />education
											</h1> -->

											<br /> <br /> <br /> <br />
										</div>
										<div class="cap-dec wow slideInRight" data-wow-duration="1s"
											data-wow-delay=".5s">
											<!-- <h2>An Evaluation of the Education of Looked After
												Children.</h2> -->
											<br /> <br /> <br /> <br />
										</div>

									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="slide1-text slide-text">
								<div class="middle-text">
									<div class="left_sidet1">
										<div class="cap-title1 wow slideInRight"
											data-wow-duration=".9s" data-wow-delay="0s">
											<!-- <h1>
												Opening up a world of <br />education
											</h1> -->

											<br /> <br /> <br /> <br />
										</div>
										<div class="cap-dec wow slideInRight" data-wow-duration="1s"
											data-wow-delay=".5s">
											<!-- <h2>An Evaluation of the Education of Looked After
												Children.</h2> -->
											<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
											<br /> <br /> <br /> <br /> <br />
										</div>
										<div class="cap-readmore animated fadeInUpBig"
											data-wow-duration="2s" data-wow-delay=".5s">
											<a href="serialKeyValidate.do">Register With Us</a>
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
						<div class="col-md-9">
							<div class="slide1-text slide-text">
								<div class="middle-text">
									<div class="left_sidet1">
										<div class="cap-title wow slideInRight"
											data-wow-duration=".9s" data-wow-delay="0s">
											<br /> <br /> <br /> <br />
										</div>
										<div class="cap-dec wow slideInRight" data-wow-duration="1.1s"
											data-wow-delay="0s">

											<br /> <br /> <br /> <br /> <br />
										</div>
										<br /> <br /> <br /> <br />

									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="slide1-text slide-text">
								<div class="middle-text">
									<div class="left_sidet1">
										<div class="cap-title wow slideInRight"
											data-wow-duration=".9s" data-wow-delay="0s">
											<br /> <br /> <br /> <br />
										</div>
										<div class="cap-dec wow slideInRight" data-wow-duration="1.1s"
											data-wow-delay="0s">

											<br /> <br /> <br /> <br /> <br />
										</div>
										<div class="cap-dec wow slideInRight" data-wow-duration="1.1s"
											data-wow-delay="0s">

											<br /> <br /> <br /> <br /> <br />
										</div>

										<br /> <br /> <br /> <br />

									</div>
								</div>
							</div>
							<div class="cap-readmore animated fadeInUpBig"
								data-wow-duration="1.5s" data-wow-delay=".5s">
								<a href="serialKeyValidate.do">Register With US</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="htmlcaption3" class="nivo-html-caption slider-caption-2">
				<div class="slider-progress"></div>
				<div class="container">
					<div class="row">
						<div class="col-md-9">
							<div class="slide1-text slide-text">
								<div class="middle-text">
									<div class="left_sidet1">
										<div class="cap-title wow slideInRight"
											data-wow-duration=".9s" data-wow-delay="0s">
											<br /> <br /> <br /> <br />
										</div>
										<div class="cap-title wow slideInRight"
											data-wow-duration=".9s" data-wow-delay="0s"></div>
										<div class="cap-dec wow slideInRight" data-wow-duration="1.1s"
											data-wow-delay="0s">
											<br /> <br /> <br /> <br /> <br />
										</div>
										<br /> <br /> <br /> <br />

									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="slide1-text slide-text">
								<div class="middle-text">
									<div class="left_sidet1">
										<div class="cap-title wow slideInRight"
											data-wow-duration=".9s" data-wow-delay="0s">
											<br /> <br /> <br /> <br />
										</div>
										<div class="cap-dec wow slideInRight" data-wow-duration="1.1s"
											data-wow-delay="0s">

											<br /> <br /> <br /> <br /> <br />
										</div>
										<div class="cap-dec wow slideInRight" data-wow-duration="1.1s"
											data-wow-delay="0s">

											<br /> <br /> <br /> <br /> <br />
										</div>

										<br /> <br />

									</div>
								</div>
							</div>
							<div class="cap-readmore animated fadeInUpBig"
								data-wow-duration="1.5s" data-wow-delay=".5s">
								<a href="serialKeyValidate.do">Register With US</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="htmlcaption4" class="nivo-html-caption slider-caption-2">
				<div class="slider-progress"></div>
				<div class="container">
					<div class="row">
						<div class="col-md-9">
							<div class="slide1-text slide-text">
								<div class="middle-text">
									<div class="left_sidet1">
										<div class="cap-title wow slideInRight"
											data-wow-duration=".9s" data-wow-delay="0s">
											<br /> <br /> <br /> <br />
										</div>
										<div class="cap-title wow slideInRight"
											data-wow-duration=".9s" data-wow-delay="0s"></div>
										<div class="cap-dec wow slideInRight" data-wow-duration="1.1s"
											data-wow-delay="0s">
											<br /> <br /> <br /> <br /> <br />
										</div>
										<br /> <br /> <br /> <br />

									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="slide1-text slide-text">
								<div class="middle-text">
									<div class="left_sidet1">
										<div class="cap-title wow slideInRight"
											data-wow-duration=".9s" data-wow-delay="0s">
											<br /> <br /> <br /> <br />
										</div>
										<div class="cap-dec wow slideInRight" data-wow-duration="1.1s"
											data-wow-delay="0s">

											<br /> <br /> <br /> <br /> <br />
										</div>
										<div class="cap-dec wow slideInRight" data-wow-duration="1.1s"
											data-wow-delay="0s">

											<br /> <br /> <br /> <br /> <br />
										</div>

										<br /> <br /> <br /> <br />

									</div>
								</div>
							</div>
							<div class="cap-readmore animated fadeInUpBig"
								data-wow-duration="1.5s" data-wow-delay=".5s">
								<a href="serialKeyValidate.do">Register With US</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="htmlcaption5" class="nivo-html-caption slider-caption-2">
				<div class="slider-progress"></div>
				<div class="container">
					<div class="row">
						<div class="col-md-9">
							<div class="slide1-text slide-text">
								<div class="middle-text">
									<div class="left_sidet1">
										<div class="cap-title wow slideInRight"
											data-wow-duration=".9s" data-wow-delay="0s">
											<br /> <br /> <br /> <br />
										</div>
										<div class="cap-title wow slideInRight"
											data-wow-duration=".9s" data-wow-delay="0s"></div>
										<div class="cap-dec wow slideInRight" data-wow-duration="1.1s"
											data-wow-delay="0s">
											<br /> <br /> <br /> <br /> <br />
										</div>
										<br /> <br /> <br /> <br />

									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="slide1-text slide-text">
								<div class="middle-text">
									<div class="left_sidet1">
										<div class="cap-title wow slideInRight"
											data-wow-duration=".9s" data-wow-delay="0s">
											<br /> <br /> <br /> <br />
										</div>
										<div class="cap-dec wow slideInRight" data-wow-duration="1.1s"
											data-wow-delay="0s">

											<br /> <br /> <br /> <br /> <br />
										</div>
										<div class="cap-dec wow slideInRight" data-wow-duration="1.1s"
											data-wow-delay="0s">

											<br /> <br /> <br /> <br /> <br />
										</div>

										<br /> <br /> <br /> <br />
										<br/><br/>

									</div>
								</div>
							</div>
							<div class="cap-readmore animated fadeInUpBig"
								data-wow-duration="1.5s" data-wow-delay=".5s">
								<a href="serialKeyValidate.do">Register With US</a>
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
								<p class="lead" style="font-size: 14px;">Edutel can mimic
									many of the benefits provided by a physical school (learning
									materials, online exercises, self-paced courses, live online
									classes, tests, web forums, etc) but delivers these through the
									internet. We are india's largest online &amp; offline learning
									portal for 12th standard children. We cater to the learning
									needs of school students of class xii across leading
									educational boards. We realize that the learning needs of every
									student is unique based on his/her learning style, interests
									and his/her past academic history, and understanding this is
									the key to making every student successful.</p>
							</div>

							<p>
								<strong>At Edutel</strong><br /> We believe that with
								technology we can transcend traditional boundaries and truly
								enable customized self-paced learning. Our experienced team of
								educationists and technologists is passionate about changing the
								statuesque and challenging one another continuously to provide a
								seamless product that empowers tomorrow's leaders.
							</p>





							<p>We have introduced numerous innovations in the areas of
								content, delivery formats, reports, assessments, gamification
								techniques and many more. Having made a huge difference to the
								lives of lakhs of students, it will be our constant endeavor to
								be a worthy partner in their quest for excellence. Our promise
								remains the same thinking of you.</p>
							<p>After a great success of edutel academy for supporting xii
								std children through online/offline. After xii, students will
								enter into college. But there will be numerous queries arising
								to the student and parent. Like...</p>
							<p>We do not believe in huge advertisements and promotional
								activities to attract people, we aim to provide world class
								quality education.</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="gellary_thumb">
						<a href="#"><img src="${root}/academia/img/home1/protfolio/offer3.jpg"
							alt="" /></a>
					</div>
					<br />
					<div class="text_timonial">
						<div class="testimonial_owl text_style">
							<div class="item">
								<div class="testimonial_text">
									<div class="testimonial_text_inner">
										<p style="margin: 6px -72px 10px 1px;"></p>

										<ul style="list-style-type: disc">


											<li>Which course to study ?</li>
											<li>Which is the best college to choose for such courses
												?</li>
											<li>Which college will take to my right career ?</li>
											<li>What is the admission procedure for these colleges ?</li>
											<li>Is there any entrance exam for these colleges ?</li>
											<li>What is the benefit of writing entrance exams ?</li>
											<li>How to get these colleges entrance exam applications
												?</li>
											<li>Who will apply online for me ?</li>
											<li>What is the syllabi for those entrance exams ?</li>
											<li>Is this TN syllabus enough to clear entrance exams ?</li>
										</ul>
										<br /> <br />

									</div>
								</div>

							</div>
							<div class="item">
								<div class="testimonial_text">
									<div class="testimonial_text_inner">

										<p style="margin: 6px -98px 16px 1px">
										<ul style="list-style-type: disc">
											<li>If I get 70% - 95% in board exam, which course to
												study ? <br /> And many more questions always revolves
												around to students/parents mind.
											</li>
										</ul>
										</p>

										<p style="margin: 6px -98px 16px 1px">
										<ul style="list-style-type: disc">
											<li>Don't worry, we are here to help you; guide you till
												you get through.</li>
											<li>There are many entrance exams conducted by Central
												Govt. and state Govt. which one need to write to get
												admission into colleges on merit basis.</li>
											<li>Many more entranceexams are being conducted by
												deemed Universities, Private colleges to get into those
												colleges.</li>
											<li>Common entrance examinations for Engineering like.<br />
												<br /> JEE-MAIN / JEE-ADVANCE / BITSAT/ AMRITA / SRM / VIT
												/ SASTRA / ANNAMALAI and for Medical AIPMT / NEET / AIIMS /
												JIPMER / CMC /AMRITA / ST. JOHN'S / AFMC / MGIMS.
											</li>
										</ul>
										</p>

									</div>
								</div>

							</div>
							<div class="item">
								<div class="testimonial_text">
									<div class="testimonial_text_inner">

										<p style="margin: 0px 0px 40px -18px">
										<h3 class="module-title">
											<span style="font-size: 20px">LEGEND CLASS ROOM
												PROGRAM - 1 & 2 YEAR</span>
										</h3>
										</p>
										<p>
											<b>Enrollment Period</b><br /> - [ April / May / June / July
											]
										</p>
										<p>
											<b>11th Std Syllabus :</b><br /> [ June / July / August /
											September ] <b>
										</p>
										<p>
											12th std Syllabus :</b><br /> [ October / November / December /
											January / Febraury ]
										</p>
										<p>
											<b>Centers :</b><br /> <b>Annanagar</b> / <b>Egmore</b> / <b>Ashok
												Nagar</b> / <b>Tambaram</b> Classes Will Be In The Weekends
										</p>
										<p>
											<b>Hours Covered :</b> Live Classes : 330 Hrs Test - 300 hrs
											- (Online &amp; Offline) Practical Session - 30 hrs Doubt
											Clearing Session - 30 hrs Total - 690 hrs
										</p>
										<p>
									</div>
								</div>

							</div>
							<div class="item">
								<div class="testimonial_text">
									<div class="testimonial_text_inner">

										<p style="margin: 0px 0px 40px -18px">
										<h3 class="module-title">
											<span style="font-size: 20px">INTENSIVE CLASS ROOM
												PROGRAM</span>
										</h3>
										</p>
										<p>
											<b>Enrollment Period </b> -<br /> [ Nov / Dec / Jan / Feb /
											Mar ]
										</p>
										<p>April - 30 Days Live Classes - 120 hrs [PCMB] (changes
											are subject to 12th board exam)</p>
										<h2>
											<span>Courses Offered</span>
										</h2>

									</div>
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
							Analysis on Entrance <span> Exams </span>
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
							<img src="${root}/academia/img/home1/exams/NEET480x480.jpg" alt="" />
							<div class="thumb_text"></div>
						</div>
						<a href="${root}/edutel_static/neet.html">
							<div class="teacher_content" style="cursor: pointer;">
								<h2>National Eligibility Cum Entrance Test (UG)</h2>
								<span>Introduction,</span> <br />
								<span> Important Websites,</span><br /> <span> Pattern Of
									NEET,</span><br />
								<span>Syllabus For The Test,</span><br /> <span> Core
									Syllabus.</span>

							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/exams/JIPMER480x480.jpg" alt="" />
							<div class="thumb_text">
								<h2></h2>
							</div>
						</div>
						<a href="edutel_static/jipmer.html">
							<div class="teacher_content">
								<h2>Jawaharlal Institute of Postgraduate Medical Education
									and Research</h2>
								<span>JIPMER Puducherry</span><br /> <span>JIPMER
									Karaikal</span><br /> <span>MBBS Course </span><br /> <span>Vertical
									Reservation</span><br /> <span>Horizontal Reservation</span><br /> <span>Method
									Of Entrance Examination</span><br /> <span>Hall Tickets</span><br />

							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/exams/AIIMS480x480.jpg" alt="" />
							<div class="thumb_text">
								<h2></h2>
							</div>
						</div>
						<a href="edutel_static/aiims.html">
							<div class="teacher_content">
								<h2>All India Institute of Medical Science</h2>
								<span>Introduction</span><br /> <span>Competitive
									Entrance Examination </span><br /> <span>Six Other AIIMS</span><br />
								<span>Counselling ... More</span><br />

							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->

				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/exams/bits-logo.jpg" alt="" />
							<div class="thumb_text">
								<h2></h2>
							</div>
						</div>
						<a href="edutel_static/bitsat.html">
							<div class="teacher_content">
								<h2>Birla Institute of Technology and Science (BITS)</h2>
								<h3>Pilani</h3>
								<br /> <span>Undergraduate Courses Offered </span> <span>Eligibility
									Criteria</span><br /> <span>BITSAT Test Format</span><br /> <span>Syllabus</span><br />
								<span>How To Apply</span><br />

							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/exams/srm-480x480.jpg" alt="" />
							<div class="thumb_text">
								<h2>&nbsp;</h2>
							</div>
						</div>
						<a href="edutel_static/srmee.html">
							<div class="teacher_content">
								<h2>Sri Ramaswamy Memorial Institute of Science and
									Technology</h2>
								<span>Eligibility Criteria in Qualifying Examination</span><br />
								<span>Pattern of Question paper</span><br /> <span>Important
									Dates</span><br /> <span>Application Forms</span><br />

							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/exams/vit-480x480.jpg" alt="" />
							<div class="thumb_text">
								<h2>&nbsp;</h2>
							</div>
						</div>

						<a href="edutel_static/vit.html">
							<div class="teacher_content">
								<h2>Vellore Institute of Technology</h2>
								<span>Important Dates</span><br /> <span>Eligibility
									Criteria and Qualifying Examination</span><br /> <span>Pattern
									Of The Entrance Examination - CBT</span><br /> <span>e-Admit
									Card</span><br /> <span>Application Forms</span><br /> <span>Issue
									of Application Forms - OMR</span><br />


							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->

				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/exams/amrita-480x480.jpg" alt="" />
							<div class="thumb_text">
								<h2></h2>
							</div>
						</div>
						<a href="edutel_static/amrita.html">
							<div class="teacher_content">
								<h2>Amrita Vishwa Vidyapeetham</h2>
								<h3>Coimbatore</h3>
								<br /> <span>Important Dates </span><br /> <span>Entrance
									Exam Pattern</span><br /> <span>Subject Combination</span><br /> <span>Application
									Form</span><br />
							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/exams/sastra-logo.jpg" alt="" />
							<div class="thumb_text">
								<h2>&nbsp;</h2>
							</div>
						</div>
						<a href="edutel_static/sastra.html">
							<div class="teacher_content">
								<h2>SASTRA</h2>
								<span>University B.Tech Admissions</span><br /> <span>Examinations
									and Activities</span><br /> <span>Important Dates</span><br /> <span>Eligibility
									Criteria</span><br />


							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/exams/nata480x480.jpg" alt="" />
							<div class="thumb_text">
								<h2>&nbsp;</h2>
							</div>
						</div>

						<a href="edutel_static/nata.html">
							<div class="teacher_content">
								<h2>National Aptitude Test in Architecture</h2>
								<h3>NATA</h3>
								<br /> <span>Managed by <b>Council of Architecture</b>
									(COA)
								</span><br /> <span>Exam Dates and schedules</span><br /> <span>Registration</span><br />
								<span>Eligibility Criteria</span></br/> <span>Exam Pattern</span><br />
								<span>Drawing Test</span>

							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/exams/nift480x480.jpg" alt="" />
							<div class="thumb_text">
								<h2>&nbsp;</h2>
							</div>
						</div>

						<a href="edutel_static/nift.html">
							<div class="teacher_content">
								<h2>National Institute of Fashion Technology</h2>
								<h3>NIFT</h3>
								<br /> <span>Important Dates</span><br /> <span>Eligibility</span><br />
								<span>Applications </span><br /> <span> NIFT Admit Card
									2018</span><br /> <span> NIFT 2018 Exam Pattern</span><br /> <span>
									Syllabus</span><br />

							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/exams/jeemain480x480.jpg" alt="" />
							<div class="thumb_text">
								<h2>&nbsp;</h2>
							</div>
						</div>

						<a href="edutel_static/jeemain.html">
							<div class="teacher_content">
								<h2>Joint Entrance Examination</h2>
								<h3>JEEMAIN</h3>
								<br /> <span>Date of Examination</span><br /> <span>Application
									Procedure for JEEMAIN</span><br /> <span>Instructions for
									Computer Based Exam</span><br /> <span>Mode of Payment</span><br /> <span>Instructions
									for Applying Online</span><br /> <span>Syllabus</span><br />

							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/exams/nest480x480.jpg" alt="" />
							<div class="thumb_text">
								<h2>&nbsp;</h2>
							</div>
						</div>

						<a href="edutel_static/nest.html">
							<div class="teacher_content">
								<h2>National Entrance Screening Test</h2>
								<h3>NEST</h3>
								<br /> <span>NEST 2018 Eligibility</span><br /> <span>NEST
									2018 Process</span><br /> <span>NEST 2018 Exam Centers</span><br /> <span>NEST
									2018 Exam Pattern</span><br />


							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
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
							Our Courses <span>Offered</span>
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
							<img src="${root}/academia/img/home1/team/full-support.jpg" alt="" />
							<div class="thumb_text"></div>
						</div>
						<a href="52afd812c1d856faf16fe52f2cce31799af5490f">
							<div class="teacher_content" style="cursor: pointer;">
								<h2>Full Year Support Program Online</h2>
								<span>Test Series,</span> <span> Online Test
									Engine-Unlimited MCQ's,</span> <span> Online Text Book Material</span><span>Dash
									Board Services</span> <span> Query Box &amp; Library</span> <span>Information
									Updates</span> <span>Application Forms-Procurement &amp;
									Processing</span> <span>Psychometric Testing &amp; Evaluation,</span>
								<span>Common Academy Test (CAT),</span> <span> Key Points</span>
								<span>Smart Guide,</span><span> Entrance Cracker</span>

							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/team/LCRP480x480.jpg" alt="" />
							<div class="thumb_text">
								<h2></h2>
							</div>
						</div>
						<a href="edutel_static/lengend.html">
							<div class="teacher_content">
								<h2>Legend Class Room Program(LCRP)</h2>
								<span>Two Year Course for 12th std Students</span><br /> <span>Enrollment
									period - April to July</span><br /> <span>Syllabus covered -
									11th &amp; 12th Syllabus from CBSE NCERT/STATE BOARD </span><br /> <span>Weekend
									Classes ....More</span><br />
							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/team/intensive480x480.jpg" alt="" />
							<div class="thumb_text">
								<h2></h2>
							</div>
						</div>
						<a href="edutel_static/intensive.html">
							<div class="teacher_content">
								<h2>Intensive Class Room Program(ICRP)</h2>
								<span>For 12th std students</span><br /> <span>Syllabus
									covered - 11th &amp; 12th Syllabus from CBSE NCERT / STATE
									BOARD </span><br /> <span>Batch starts after the 12th board
									exams</span><br /> <span>Daily Full day classes ... More</span><br />

							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/team/resource-team.jpg" alt="" />
							<div class="thumb_text">
								<h2></h2>
							</div>
						</div>
						<a href="c827c7e404cd76345ed7d5c77d8ed35b">
							<div class="teacher_content">
								<h2>Resource Team</h2>
								<p>Talented and Experienced Resources for Students</p>
								<br />
								<p>More than 15 years of highly experienced faculties</p>
								<br />

							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/team/import-dates.jpg" alt="" />
							<div class="thumb_text">
								<h2>Important Dates</h2>
							</div>
						</div>
						<a href="edutel_static/dates.html">
							<div class="teacher_content">
								<h2>Important Dates Details</h2>
								<span>AIIMS Date Of Examination</span><br /> <span>AIPMT
									Date Of Examination</span><br /> <span>JEEMAIN Date Of
									Examination</span><br /> <span>SASTRA Date Of Examination</span><br />
								<span>More ...</span><br />

							</div>
						</a>
					</div>
				</div>
				<!--End teacher single  item -->
				<!--start teacher single  item -->
				<div class="col-md-4 col-lg-4 col-sm-6">
					<div class="single_teacher_item">
						<div class="teacher_thumb">
							<img src="${root}/academia/img/home1/team/faqs.jpg" alt="" />
							<div class="thumb_text">
								<h2>
									<b>FAQS</b>
								</h2>
							</div>
						</div>
						<div class="teacher_content">
							<h2>
								<b>FAQS</b>
							</h2>

							<span></span>

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
						<a class="venobox_custom mfp-iframe video-button text-uppercase"
							data-type="iframe"
							href="https://www.youtube.com/embed/-mZeDqr8MgY"> <i
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
								online classes, tests, web forums, etc) but delivers these through the Internet.</p><br/>							
						</div>
						</div>
						<div class="cap-readmore animated fadeInUpBig"
						data-wow-duration="1.5s" data-wow-delay=".5s">
						<a href="serialKeyValidate.do">Register With US</a>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<!--end offer  area -->
	<div class="about_area page">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="ab_thumb">
						<div class="title">
							<h3 class="module-title">
								Student <span>Testimonials</span>
							</h3>
						</div>
						<img src="academia\img\home1\testimonals.jpg" alt="Testimonals"
							class="img-thumbnail" />
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="ab_thumb">
						<div class="title">
							<h3 class="module-title">
								Our <span>Centers</span>
							</h3>
						</div>
						<img src="academia\img\home1\centers.jpg" alt="Centers"
							class="img-thumbnail" />
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- start area -->
	<div class="news_area home-2">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title">
						<h3 class="module-title">
							Our<span>Branches</span>
						</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<!--start single news  item -->
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						
						<div class="courses_content">
							<b>Edutel Academy</b><br /> No - 18/4D, 1st Floor,<br /> Thiru
							Nagar 2nd Street,<br /> Vadapalani, Chennai - 600 026.<br /> Land
							mark: Near Hotel Ambika Empire. <br /> Mobile: +917401259090<br />
							Phone: 044 - 43849090<br /><



						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						
						<div class="courses_content">
							<b>Jayam Plaza, </b><br /> No:91 A/6, Vivekananda Road,<br />
							Ram-Nagar, <br /> Coimbatore- 641 009<br /> Land mark: Opp..
							to HDFC Bank<br /> Phone: 0422 - 4976090<br /><br /><br />
							</p>
						</div>
					</div>
				</div>
				<!--end single news  item -->

				<!--end single news  item -->
			</div>
		</div>
	</div>
	<!--end  branch office  area -->

	<!--end news  area -->
	
	
		<!--start  centers address  area -->
	<div class="news_area home-2">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title">
						<h3 class="module-title">
							Our<span>Study Centers</span>
						</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<!--start single news  item -->
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
					
					<div class="courses_content" style="float:left">
							<b>EDUTEL ACADEMY </b><br /> 
							<p>NEET/IIT-JEE,<br /> 
							ENTRANCE EXAM COACHING CENTER <br /></p>
							<br/><b>
							<a href="https://goo.gl/maps/uwBpCgHi9os" class="changeBlue" target="_blank" style="color: #000000">Shri Krishnaswamy Matriculation Higher Secondary School</a></b><br/>
						<br/>
					</div>
						
						<div class="courses_content" style="float:right">
							 <p>914, J Block,<br/> 15th Street, Vaigai Colony,<br/>
							  Anna Nagar West, Vaigai Colony,<br/>
							  Anna Nagar,<br/> Chennai, Tamil Nadu - 600040 <br /> 
							  Mob - 7401259090.</p>
						</div>
						
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						
						<div class="courses_content" style="float:left">
							<b>EDUTEL ACADEMY </b><br />
							(EGMORE CENTER)
							<br />
							 <p> NEET/IIT-JEE<br />
							 ENTRANCE EXAM COACHING CENTER</br></p>
							 <br/><b>
							 <a href="https://maps.google.com/?cid=3211539764435725669&hl=en&gl=gb" style="color: #000000" class="changeBlue" target="_blank">Sivakasi Hindu Nadar Matriculation Higher Secondary School</a></b><br/>
						</div>
							<div class="courses_content" style="float:right">
							 <p> 6/47, Arava Muthan Garden St,<br/> Poonamallee High Road,<br/>
							  Egmore, Chennai, <br />Tamil Nadu 600008 <br />Mob - 7401259090
						</div>
					</div>
				</div>
				<!--end single news  item -->

				<!--end single news  item -->
			</div>
			<div class="row">
				<!--start single news  item -->
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						 <div class="courses_content" style="float:left">
							 <b>EDUTEL ACADEMY </b><br /> (TAMABARAM CENTER),<br />
							  <p> NEET / IIT - JEE<br />
						     ENTRANCE EXAM COACHING CENTER <br /> </p>
						     <br/>
						     <b>
						     <a href="https://goo.gl/maps/vfDQ9bjQvgB2" class="changeBlue" target="_blank" style="color: #000000">Jaigopal Garodia National Higher Secondary School Tambaram</a></b><br/>
						</div>
						<div class="courses_content" style="float:right">
							<p>
							Bharatha Matha Street, Tambaram East, <br/> Tambaram, Vinayakarpuram,<br/>
						    East Tambaram, Chennai,
						    <br/> Tamil Nadu - 600059<br/>Mob - 7401259090</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
					   <div class="courses_content" style="float:left">
					   <b>EDUTEL ACADEMY </b><br /> (AVADI CENTER),<br/><p> NEET / IIT - JEE<br/>
					     ENTRANCE EXAM COACHING CENTER <br /></p>
					   <br/><b><a href="https://goo.gl/maps/YTNi1Rsy1C22" style="color: #000000" class="changeBlue" target="_blank">Thangamani Matriculation Higher Secondary School</a></b><br/>
					   <br/>
					   </div>
					   
						
						<div class="courses_content" style="float:right">
							<p>38 IAF Main Road,<br/> Deena Dayalan Nagar,<br/> Pattabiram, <br/>Tamil Nadu - 600072<br />Mob - 7401259090</p>
							<br />

						</div>
					</div>
				</div>
				<!--end single news  item -->

				<!--end single news  item -->
			</div>
			
			<div class="row">
				<!--start single news  item -->
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
					     <div class="courses_content" style="float:left">
						   <b>EDUTEL ACADEMY </b> <br/> (VADAPALANI CENTER), <br/>
						   <p> NEET / IIT - JEE<br/>
						     ENTRANCE EXAM COACHING CENTER <br /></p>
						   <br/><b><a href="https://goo.gl/maps/NCvvgLrm6492" class="changeBlue" style="color: #000000"  target="_blank">Putra Matriculation Higher Secondary School</a></b><br/>
					    </div>
						
						<div class="courses_content" style="float:right">
							<p> AVM Avenue, <br/>virugambakkam,<br/>  Virugambakkam, Chennai,<br/> 
							Tamil Nadu - 600092<br/> Mob - 7401259090</p>
					
							
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
					   <div class="courses_content" style="float:left">
							 <b>EDUTEL ACADEMY </b><br /> (PERAMBUR CENTER), <br/>
						     <p>NEET / IIT - JEE<br/>
							 ENTRANCES EXAM COACHING CENTER<br/></p>
						   <br/><b>
							  <a href="https://goo.gl/maps/qVLkX41k9PL2" style="color: #000000" class="changeBlue" target="_blank">Veera Savarkar Netaji Matriculation School</a></b>
					  </div>
					  
					<div class="courses_content" style="float:right">
						<p>No:14, Kumaran St,<br/> Arul Nagar, Lakshmipuram,<br/> Chennai, Tamil Nadu 600099<br/>Mob - 7401259090</p>
						 <br /> 
						<br /><br/>
					</div>
					</div>
				</div>
				<!--end single news  item -->

				<!--end single news  item -->
			</div>
			
			<div class="row">
				<!--start single news  item -->
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						<div class="courses_content" style="float:left">
							<b>EDUTEL ACADEMY </b><br /> (ASHOK NAGAR CENTER)
							<br /> <p>NEET / IIT - JEE
							<br /> ENTRANCE EXAM COACHING CENTER<br /> </p>
							<br/> <b><a href="https://goo.gl/maps/8coCuXuCEXG2" class="changeBlue" style="color: #000000" target="_blank">Velankanni Matriculation Higher Secondary School</a></b>
						</div>
							<div class="courses_content" style="float:right">
								<p>1128, Kamaraj Salai, <br/>Ashok Nagar, Sector 10, <br/>Ashok Nagar, Chennai,<br/> Tamil 
									Nadu 600083<br/>Mob - 7401259090</p>
							</div>
				</div>
				</div>
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						<div class="courses_content" style="float:left">
							<b>EDUTEL ACADEMY</b> <br /> (CBE CENTER)
							<br /> <p>NEET / IIT - JEE
							<br /> ENTRANCE EXAM COACHING CENTER<br /> </p>
							<br/>  <b><a href="https://goo.gl/maps/XhKYZDNXxy52" style="color: #000000" class="changeBlue" target="_blank">Suburban Matriculation School</a></b><br/><br/>
						
						</div>
						<div class="courses_content" style="float:right">
							<p>Ram Nagar,<br/> Coimbatore,<br/> Tamil Nadu - 641009<br/>Mob - 7401259090
							 <br /> 
							
							

						</div>
					</div>
				</div>
				<!--end single news  item -->

				<!--end single news  item -->
			</div>
			
			<div class="row">
				<!--start single news  item -->
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
					  <div class="courses_content" style="float:left">
							  <b>EDUTEL ACADEMY</b> <br/>(KOLATHUR CENTER)
							  <br/>
							  <p>NEET / IIT - JEE<br/>
							  ENTRANCE EXAM COACHING CENTER
							  </p>
							  <br/> <b><a href="https://goo.gl/maps/Quz4xq8XmAz" style="color: #000000" class="changeBlue" target="_blank">Kings Matriculation Higher Secondary School</a></b><br/>
					  </div>
						
						<div class="courses_content" style="float:right">
							  <p>85 Villivakkam-Redhills Road,<br/> Kalpalayam,<br/> Chennai, Tamil Nadu - 600099, <br/>
							<br />Kalpalaiyam, Lakshmipuram, <br/>Chennai, Tamil Nadu - 600099<br/>Mob - 7401259090</p>

						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						
						<div class="courses_content" style="float:left">
							<b>EDUTEL ACADEMY </b><br />(MADIPAKKAM CENTER),<br /> <p>NEET / IIT - JEE<br/>
							ENTRANCES EXAM COACHING CENTER</p>
							 
						 <b><a href="https://goo.gl/maps/fnhyRFvrqpr" style="color: #000000" class="changeBlue" target="_blank">karpaga vigneswara vidyalaya matriculation higher secondary school</a></b>

						</div>
						<div class="courses_content" style="float:right">
						<p># 14, Partiban Street,<br/> Ullagaram, Madipakkam,<br/> Ullagaram, Madipakkam,<br/> Chennai, Mob - 7401259090</p>
						</div>
						
						
					</div>
				</div>
				<!--end single news  item -->

			</div>
			
			<div class="row">
				<!--start single news  item -->
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						<div class="courses_content" style="float:left">
							<b>EDUTEL ACADEMY </b><br/> (REDHILLS CENTER)
							<br/> <p>NEET / IIT - JEE
							<br/> ENTRANCE EXAM COACHING CENTER <br/> 
							</p>
							<br/>
							<b><a href="https://goo.gl/maps/aBEjirZGAzz" style="color: #000000" class="changeBlue" target="_blank">Alpha Matriculation Higher Secondary School</a></b><br/>
						</div>
							<div class="courses_content" style="float:right">
							<p>Sembakkam,<br/> M.A.Nagar, Chennai, <br/>Tamil Nadu - 6000073, India</p>
							</div>
						
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						<div class="courses_content" style="float:left">
							<b>EDUTEL ACADEMY </b><br />(MOGAPPAIR CENTER),<br /> 
							<p>NEET / IIT - JEE
							<br/>
							ENTRANCES EXAM COACHING CENTER</br>
							
							<br /> <b><a href="https://goo.gl/maps/S9Gt4e1Au1y" style="color: #000000" class="changeBlue" target="_blank">Green Valley Matriculation HR Secondary School</a></b><br/>

						</div>
						<div class="courses_content" style="float:right">
						<p>2, 1st Block,<br/> TNHB Phase I,<br/> Mogappair West,<br/> Ambattur Industrial Estate,<br />Chennai, Tamil Nadu - 600037
						<br/>Mob - 7401259090</p>
						</div>
					</div>
				</div>
				<!--end single news  item -->
			</div>
			
			<div class="row">
				<!--start single news  item -->
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
					  <div class="courses_content" style="float:left">
							  <b>EDUTEL ACADEMY </b><br /> <p>NEET / IIT - JEE
									<br/>ENTRANCES EXAM COACHING CENTER <br/><br/><b></b>
									 <br /> 
									
									<br /> <b><a href="https://goo.gl/maps/5WB2evdsBKJ2" style="color: #000000" class="changeBlue" target="_blank">EDUTEL ACADEMY
					                           Educational Institution</a></b><br/>
					  </div>
						
						<div class="courses_content" style="float:right">
							<p> No. 66,<br/> Madurai Road, Palakarai,<br/> Sangillyandapuram,<br/> Tiruchirappalli,<br/> Tamil Nadu - 620008, India.
								<br/>
								 Mob - 7401259090</p>

						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						
						<div class="courses_content" style="float:left">
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>

						</div>
						<div class="courses_content" style="float:right">
						<br/>
						<br/>
						<br/>
						<br/>
						<br/>
						<br/>
						<br/>
						<br/>
						</div>
						
						
					</div>
				</div>
				<!--end single news  item -->

			</div>
			
			</div>
		</div>
<!--end  centers address  area -->

	
	
	
	
	<!--start footer  area -->
		<c:import url="/jsp/edutel/edutel-home-footer.jsp"></c:import>
	     <!--end footer  area -->
	
	
	
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