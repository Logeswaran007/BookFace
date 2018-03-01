<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<c:set var="root" value="${pageContext.request.contextPath}" />
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>News Bulletin || Academia</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- favicon
		============================================ -->		
        <link rel="shortcut icon" type="image/x-icon" href="${root}/academia/img/favicon.ico">		
		<!-- Google Fonts
		============================================ -->		
		<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
		
		<link href="http://allfont.net/allfont.css?fonts=montserrat-light" rel="stylesheet" type="text/css" />
		<!--linearicons font-->
		<link rel="stylesheet" href="${root}/academia/css/linearfont.css">
		<!-- Bootstrap CSS
		============================================ -->		
        <link rel="stylesheet" href="${root}/academia/css/bootstrap.min.css">
		<!-- meanmenu CSS
		============================================ -->		
        <link rel="stylesheet" href="${root}/academia/css/meanmenu.min.css">
		<!-- Bootstrap CSS
		============================================ -->
        <link rel="stylesheet" href="${root}/academia/css/font-awesome.min.css">
		<!-- owl.carousel CSS
		============================================ -->
        <link rel="stylesheet" href="${root}/academia/css/owl.carousel.css">
        <link rel="stylesheet" href="${root}/academia/css/owl.theme.css">
        <link rel="stylesheet" href="${root}/academia/css/owl.transitions.css">
		<!-- animate CSS
		============================================ -->
        <link rel="stylesheet" href="${root}/academia/css/animate.css">
		<!-- normalize CSS
		============================================ -->
        <link rel="stylesheet" href="${root}/academia/css/normalize.css">
		<!-- Nivo Slider CSS -->
		<link rel="stylesheet" href="${root}/academia/css/nivo-slider.css">
		<!-- Add venobox css -->
		<link rel="stylesheet" href="${root}/academia/venobox/venobox.css"> 
		<!-- main CSS
		============================================ -->
        <link rel="stylesheet" href="${root}/academia/css/main.css">
		<!-- Nivo Slider CSS -->
		<link rel="stylesheet" href="${root}/academia/css/nivo-slider.css">		
		<!-- style CSS
		============================================ -->
        <link rel="stylesheet" href="${root}/academia/css/style.css" />
        <!-- responsive CSS
		============================================ -->
        <link rel="stylesheet" href="${root}/academia/css/responsive.css">
		<!-- modernizr JS
		
		
		============================================ -->		
        <script src="${root}/academia/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!--start header  area --> 
	<div class="header_area">
		<div class="container">
			<div class="row">
				<!-- header  logo --> 
				<div class="col-md-4 col-sm-3 col-xs-12">
					<div class="logo"><a href="index.html"><img src="academia/img/logo.png" alt="" /></a></div>
				</div>
				<!-- end header  logo --> 
				<div class="col-md-8 col-sm-9 col-xs-12">
					<div>
						<div class="form pull-right">
							<div class="language">
								  <select class="form-lan">
								    <option value="english" selected>English</option>
								    <option value="english">Arabic</option>
								  </select>
							</div>
						</div>
						<div class="social_icon pull-right">
							<p>
							   <a target="_blank" href="#" class="icon-set"><i class="fa fa-facebook"></i></a> 
							   <a target="_blank" href="#" class="icon-set"><i class="fa fa-twitter"></i></a> 
							   <a target="_blank" href="#" class="icon-set"><i class="fa fa-linkedin"></i></a>
							</p>
						</div>				
					</div>
					<div class="phone_address pull-right clear">
						<p class="no-margin">
						  <small>
							  <span class="text-msg">Have any questions?</span>
							  <span class="icon-set"><i class="fa fa-phone"></i> +880 1973 833 508</span> 
							  <span class="icon-set"><i class="fa fa-envelope"></i> admin@bootexperts.com</span> 
						  </small>
						</p>				
					</div>
				</div>
			</div>
		</div>
	</div>
    <!--end header  area --> 
    <!--Start nav  area --> 
	<div class="nav_area">
		<div class="container">
			<div class="row">
				<!--nav item-->
				<div class="col-md-12 col-sm-12 col-xs-12">
					<!--  nav menu-->
					<nav class="menu">
						<ul class="navid pull-left">
							<li class="current"><a href="#test-series">Test Series</a></li>
							<li><a href="#online-test-engine">Online Test Engine</a></li>
							<li><a href="#e-book-directory">E- Book Directory</a></li>						
							<li><a href="#dash-board-service">Dash board services</a></li>
							<li><a href="#query-box-library">Query Box & Library</a></li>							
							<li><a href="#application-forms">Application Forms</a></li>
							<li><a href="#psychometric-counselling">Psychometric Counselling</a></li>
							<li><a href="#common-academy-test">Common academy Test</a></li>
							<li><a href="#key-points">Key Points</a></li>
							<li><a href="#toppers-club">Topper’s Club</a></li>
							<li><a href="#smart-guide">Smart Guide</a></li>
							<li><a href="#entrance-cracker">Entrance Cracker</a></li>
						</ul>
					</nav>
				</div>
				<!--end nav item -->
			</div>	
		</div>
	
	</div>
	<!--end nav  area -->
	<!--Start mobile menu  area -->
	<div class="mobile_memu_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="mobile_memu">
					<!--  nav menu-->
					<nav>
						<ul class="navid">
							<li class="current"><a href="#test-series">Test Series</a></li>
							<li><a href="#online-test-engine">Online Test Engine</a></li>
							<li><a href="#e-book-directory">E- Book Directory</a></li>						
							<li><a href="#dash-board-service">Dash board services</a></li>
							<li><a href="#query-box-library">Query Box & Library</a></li>							
							<li><a href="#application-forms">Application Forms</a></li>
							<li><a href="#psychometric-counselling">Psychometric Counselling</a></li>
							<li><a href="#common-academy-test">Common academy Test</a></li>
							<li><a href="#key-points">Key Points</a></li>
							<li><a href="#toppers-club">Topper’s Club</a></li>
							<li><a href="#smart-guide">Smart Guide</a></li>
							<li><a href="#entrance-cracker">Entrance Cracker</a></li>
						</ul>
					</nav>
					<!--end  nav menu-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--end mobile menu  area -->	
	<!--start courses  area -->
	<div class="faq_area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title">
						<h3 class="module-title notice">
							Full year support Program<span>Online</span>
						</h3>					
					</div>
				</div>
			</div>
			<div class="row">
				<!-- single new_bulletin item -->
				
				<div class="test series-block content content-center" id="test-series">
				<div class="col-sm-12 margin-bottom">
					<div class="row">						
						<div class="col-lg-4 col-md-4 col-sm-4">
							<div class="new_bulletin"><a href="single-news-bulletin.html"><img src="academia/img/home1/course/1.jpg" alt="" width="250" height="250" /></a></div>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5">
							<div class="news_content news_buletin_pra">
								<h2><a href="single-news-bulletin.html"><font size="3"> Test Series</font></a></h2>
								<p>10 offline test series all covering the core subject.More than 1online test series all covering the core subject with evaluation and doubt clearing sessions Various questions and question 
								  patterns based on your blue print to ensure a complete understanding of the subjects, concepts and retention of methodologies.</p>
							</div>				
						</div>				
					</div>
				</div>
				</div>
				<!-- end single new_bulletin item -->
				
				
				<!-- single new_bulletin item -->
				<div class="online test engine-block content content-center" id="online-test-engine">
				<div class="col-sm-12 margin-bottom">
					<div class="row">						
						<div class="col-lg-4 col-md-4 col-sm-4">
							<div class="new_bulletin"><a href="single-news-bulletin.html"><img src="academia/img/home1/course/2.jpg" alt="" width="250" height="250" /></a></div>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5">
							<div class="news_content news_buletin_pra">
								<h2><a href="single-news-bulletin.html">Online Test Engine</a></h2>
								<p>Take test in your weak areas, practise regularly and view result instantly with graphical representation of your testing skills.Results generated give a detailed analysis on the students learning and
                                   answering pattern.Take up the tests at your convenient time and place Gives an opportunity to the student to brush up on weak areas</p>
							</div>				
						</div>				
					</div>
				</div>
				</div>
				<!-- end single new_bulletin item -->
				
				
				<!-- single new_bulletin item -->
				<div class="e-book directory-block content content-center" id="e-book-directory">
				<div class="col-sm-12 margin-bottom">
					<div class="row">						
						<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="courses_thumb_text">
						      <p>
							   <a href="#">E- Book Directory</a>
							  </p>
						</div>
							<div class="new_bulletin"><a href="single-news-bulletin.html"><img src="academia/img/home1/course/3.jpg" alt="" width="250" height="250"/></a></div>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5">
							<div class="news_content news_buletin_pra">
								<h2><a href="single-news-bulletin.html">E-Book Directory</a></h2>
								<p>E-Book Directory is a daily growing list of freely downloadable e-books, documents and guest lecture notes from your core subjects found all
                                   over the world from experts.</p>
							</div>				
						</div>				
					</div>
				</div>
				</div>
				<!-- end single new_bulletin item -->
				
				
				<!-- single new_bulletin item -->
				<div class="dash board service-block content content-center" id="dash-board-service">
				<div class="col-sm-12 margin-bottom">
					<div class="row">						
						<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="courses_thumb_text">
						      <p>
							   <a href="#">Dash board services</a>
							  </p>
						</div>
							<div class="new_bulletin"><a href="single-news-bulletin.html"><img src="academia/img/home1/course/4.jpg" alt="" width="250" height="250" /></a></div>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5">
							<div class="news_content news_buletin_pra">
								<h2><a href="single-news-bulletin.html">Dash board service</a></h2>
								<p>Instant alerts on the dash board and your mobile phone on current happenings in education sector across the world.
                                   Information updates on courses, colleges, universities, scholarships, educational loans, cut-offs, Entrance exam dates, etc.......</p>
							</div>				
						</div>				
					</div>
				</div>
				</div>
				<!-- end single new_bulletin item -->
				
				
				<!-- single new_bulletin item -->
				<div class="query box & library-block content content-center" id="query-box-library">
				<div class="col-sm-12 margin-bottom">
					<div class="row">						
						<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="courses_thumb_text">
						      <p>
							   <a href="#">Query Box&Library</a>
							  </p>
						</div>
							<div class="new_bulletin"><a href="single-news-bulletin.html"><img src="academia/img/home1/course/5.jpg" alt="" width="250" height="250" /></a></div>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5">
							<div class="news_content news_buletin_pra">
								<h2><a href="single-news-bulletin.html">Query Box & Library</a></h2>
								<p>Ask any questions on career across the world and get instant answer.
                                   (JEE MAIN, JEE ADVANCE, AIPMT/NE   ET,AIPVT,TNEA,TNAU, CMC, JIPMER,AIIMS,
                                   COMEDK, ST.JOHNS, MGIMS, AFMS, AFMC, CPL, NDA, HOTEL MGT,CLAT (LAW),
                                   NUS,NTU, SAT,CAT,MAT,XAT, TOEFL, IELETS,MARINE, CIVIL, AEROSPACE,
                                   BIO-ENGN, Right up to NANO tech.</p>
							</div>				
						</div>				
					</div>
				</div>
				</div>
				<!-- end single new_bulletin item -->
				
				
				<!-- single new_bulletin item -->
				<div class="application forms-block content content-center" id="application-forms">
				<div class="col-sm-12 margin-bottom">
					<div class="row">						
						<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="courses_thumb_text">
						      <p>
							   <a href="#">Application Form</a>
							  </p>
						</div>
							<div class="new_bulletin"><a href="single-news-bulletin.html"><img src="academia/img/home1/course/6.jpg" alt="" width="250" height="250" /></a></div>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5">
							<div class="news_content news_buletin_pra">
								<h2><a href="single-news-bulletin.html">Application Forms</a></h2>
								<p>Get any colleges and universities application form across the world at your door ste</p>
							</div>				
						</div>				
					</div>
				</div>
				</div>
				<!-- end single new_bulletin item -->
				
				
				<!-- single new_bulletin item -->
				<div class="psychometric counselling-block content content-center" id="psychometric-counselling">
				<div class="col-sm-12 margin-bottom">
					<div class="row">						
						<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="courses_thumb_text">
						      <p>
							   <a href="#">Psychometric Counselling</a>
							  </p>
						</div>
							<div class="new_bulletin"><a href="single-news-bulletin.html"><img src="academia/img/home1/course/3.jpg" alt="" width="250" height="250"/></a></div>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5">
							<div class="news_content news_buletin_pra">
								<h2><a href="single-news-bulletin.html">Psychometric Counselling</a></h2>
								<p>The PMT analysis is a live session conducted by the experts in your near by campus Benefits of PMT.
                                   Identifying the right career. Awareness on SWOT analysis (Strength , weakness, opportunities , threats)
                                   It is an integrated test to discover all aspects of You and parents can rest as there will be ZERO error in your mind.</p>
							</div>				
						</div>				
					</div>
				</div>
				</div>
				<!-- end single new_bulletin item -->
				
				<!-- single new_bulletin item -->
					<div class="common academy test-block content content-center" id="common-academy-test">
				<div class="col-sm-12 margin-bottom">
					<div class="row">						
						<div class="col-lg-4 col-md-4 col-sm-4">
							<div class="courses_thumb_text">
						      <p>
							 <a href="#"> Common academy Test </a>
							  </p>
						</div>
							<div class="new_bulletin"><a href="single-news-bulletin.html"><img src="academia/img/home1/course/4.jpg" alt="" width="250" height="250" /></a></div>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5">
							<div class="news_content news_buletin_pra">
								<h2><a href="single-news-bulletin.html">Common academy Test</a></h2>
								<p>Online test paper will be created by the experts and Monthly test will
                                   conducted - Compulsory questions will be posted in regular frequency , 90%
                                   accurate which will appear for your board exam.</p>
							</div>				
						</div>				
					</div>
				</div>
				</div>
				<!-- end single new_bulletin item -->
				
				<!-- single new_bulletin item -->
				<div class="key points-block content content-center" id="key-points">
				<div class="col-sm-12 margin-bottom">
					<div class="row">						
						<div class="col-lg-4 col-md-4 col-sm-4">
							<div class="courses_thumb_text">
						      <p>
							   <a href="#">Key Points</a>
							  </p>
						</div>
							<div class="new_bulletin"><a href="single-news-bulletin.html"><img src="academia/img/home1/course/7.jpg" alt="" width="250" height="250" /></a></div>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5">
							<div class="news_content news_buletin_pra">
								<h2><a href="single-news-bulletin.html">Key Points</a></h2>
								<p>It helps to focus on the area’s to score full marks and get centum in your core subjects.It also can be used as a ready reckoner and used to
                                   memorize the points in a easemanner.It covers your entire text book question and helps to be meticulous in your answers.</p>
							</div>				
						</div>				
					</div>
				</div>
				</div>
				<!-- end single new_bulletin item -->
				
				<!-- single new_bulletin item -->
			<div class="topper’s club-block content content-center" id="toppers-club">
				<div class="col-sm-12 margin-bottom">
					<div class="row">						
						<div class="col-lg-4 col-md-4 col-sm-4">
							<div class="courses_thumb_text">
						      <p>
							   <a href="#">Topper's Club</a>
							  </p>
						</div>
							<div class="new_bulletin"><a href="single-news-bulletin.html"><img src="academia/img/home1/course/8.jpg" alt="" width="250" height="250" /></a></div>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5">
							<div class="news_content news_buletin_pra">
								<h2><a href="single-news-bulletin.html">Topper’s Club</a></h2>
								<p>Online Academy test will be conducted among the entire student across tamilnadu from all premium schools.
                                   All Toppers Name with photograph will be displayed in the dashboard.Star of the Topper’s club will be awarded with Rs. 1,00,000 /- scholarship ..</p>
							</div>				
						</div>				
					</div>
				</div>
			</div>
				<!-- end single new_bulletin item -->
				
				<!-- single new_bulletin item -->
				<div class="smart guide-block content content-center" id="smart-guide">
				<div class="col-sm-12 margin-bottom">
					<div class="row">						
						<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="courses_thumb_text">
						      <p>
							   <a href="#">Smart Guide</a>
							  </p>
						</div>
							<div class="new_bulletin"><a href="single-news-bulletin.html"><img src="academia/img/home1/course/5.jpg" alt="" width="250" height="250"/></a></div>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5">
							<div class="news_content news_buletin_pra">
								<h2><a href="single-news-bulletin.html">Smart Guide</a></h2>
								<p>Separate Modules will be posted on Formulae, Definitions, Diagrams,Problems, Theorems from the core subjects (PCMB)</p>
							</div>				
						</div>				
					</div>
				</div>
				</div>
				<!-- end single new_bulletin item -->
				
				<!-- single new_bulletin item -->
				<div class="entrance cracker-block content content-center" id="entrance-cracker">
				<div class="col-sm-12 margin-bottom">
					<div class="row">						
						<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="courses_thumb_text">
						      <p>
							   <a href="#">Entrance Cracker</a>
							  </p>
						</div>
							<div class="new_bulletin"><a href="single-news-bulletin.html"><img src="academia/img/home1/course/6.jpg" alt="" width="250" height="250"/></a></div>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-5">
							<div class="news_content news_buletin_pra">
								<h2><a href="single-news-bulletin.html">Entrance Cracker</a></h2>
								<p>Practise session on MCQ’s for JEE-MAIN & AIPMT to crack your engineering and medical entrance exams.</p>
							</div>				
						</div>				
					</div>
				</div>
				</div>
				<!-- end single new_bulletin item -->
			</div>
		</div>
	</div>	
	<!--end courses  area -->
	<!-- breadcrumb-area start -->
	<div class="breadcrumb-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="breadcrumb">
						<ul>
							
							<li><a href="http://www.edutelacademy.com/index.do">Home</a> <i class="fa fa-angle-right" style="color:black"></i></li>
							<li><a href="#">Full Year Support Program Online</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumb-area end -->	
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
