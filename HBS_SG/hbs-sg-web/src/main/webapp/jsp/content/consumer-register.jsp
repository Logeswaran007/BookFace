<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<c:set var="root" value="${pageContext.request.contextPath}" />
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>EduTel Login</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<meta content="" name="description" />
<meta content="" name="author" />
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href="http://allfont.net/allfont.css?fonts=montserrat-light" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${root}/academia/css/linearfont.css">
<link rel="stylesheet" href="${root}/academia/css/bootstrap.min.css">
<link rel="stylesheet" href="${root}/academia/css/meanmenu.min.css">
<link rel="stylesheet" href="${root}/academia/css/font-awesome.min.css">
<link rel="stylesheet" href="${root}/academia/css/owl.carousel.css">
<link rel="stylesheet" href="${root}/academia/css/owl.theme.css">
<link rel="stylesheet" href="${root}/academia/css/owl.transitions.css">
<link rel="stylesheet" href="${root}/academia/css/animate.css">
<link rel="stylesheet" href="${root}/academia/css/normalize.css">
<link rel="stylesheet" href="${root}/academia/css/nivo-slider.css">
<link rel="stylesheet" href="${root}/academia/venobox/venobox.css">
<link rel="stylesheet" href="${root}/academia/css/main.css">
<link rel="stylesheet" href="${root}/academia/css/nivo-slider.css">
<link rel="stylesheet" href="${root}/academia/css/style.css">
<link rel="stylesheet" href="${root}/academia/css/responsive.css">
<script src="${root}/academia/js/vendor/modernizr-2.8.3.min.js"></script>
<link href="${root}/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="${root}/assets/pages/css/login-soft.css" rel="stylesheet" type="text/css" />
<link href="${root}/assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css" />
</head>
<body class="body">
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<div class="container">
		<div class="box-bg">
			<!--start header  area -->
			<div class="header_area home-4">
				<div class="row">
					<!-- header  logo -->
					<div class="col-md-4 col-sm-3 col-xs-12">
						<div class="logo">
							<a href="${root}"><img src="${root}/academia/img/home2/logo-default.png" alt=""></a>
						</div>
					</div>
					<!-- end header  logo -->
					<div class="col-md-8 col-sm-9 col-xs-12">
						<div>
							<div class="form pull-right">
								<div class="language">
									<select class="form-lan">
										<option value="english" selected>English</option>
									</select>
								</div>
							</div>
							<div class="social_icon pull-right">
								<p>
									<a target="_blank" href="#" class="icon-set"><i class="fa fa-facebook"></i></a> <a target="_blank" href="#" class="icon-set"><i
										class="fa fa-twitter"></i></a> <a target="_blank" href="#" class="icon-set"><i class="fa fa-linkedin"></i></a>
								</p>
							</div>
						</div>
						<div class="phone_address pull-right clear">
							<p class="no-margin">
								<small> <span class="text-msg">Have any questions?</span> <span class="icon-set"><i class="fa fa-phone"></i> 044-43849090</span> <span
									class="icon-set"><i class="fa fa-envelope"></i> admin@edutelacademy.com</span>
								</small>
							</p>
						</div>
					</div>
				</div>
			</div>
			<!--end header  area -->
			<!--Start nav  area -->
			<div class="nav_area home-4">
				<div class="row">
					<!--nav item-->
					<div class="col-md-12 col-sm-12 col-xs-12">
						<!--  nav menu-->
						<nav class="menu">
							<ul class="navid pull-left">
								<li><a href="index.html">Home <i class="fa fa-angle-down"></i></a>
									<ul>
										<li><a href="index-2.html">Home 2</a></li>
										<li><a href="index-3.html">Home 3</a></li>
										<li><a href="index-4.html">Home Box Layout</a></li>
									</ul></li>
								<li><a href="#">Courses <i class="fa fa-angle-down"></i></a>
									<ul>
										<li><a href="courses-item-1.html">Courses List layout 1</a></li>
										<li><a href="courses-item-2.html">Courses List layout 2 </a></li>
										<li><a href="single-courses.html">Course Item </a></li>
									</ul></li>
								<li><a href="#">Pages <i class="fa fa-angle-down"></i></a>
									<ul>
										<li><a href="faq.html">FAQ </a></li>
										<li><a href="login.html">Login Page </a></li>
										<li><a href="gellary.html">Image Gallery </a></li>
										<li><a href="about-page.html">About Page </a></li>
										<li><a href="news-bulletin.html">News Bulletin </a></li>
										<li><a href="registration.html">Registration Form</a></li>
										<li><a href="contract.html">Contacts </a></li>
										<li><a href="404.html">404 </a></li>
									</ul></li>
								<li><a href="store.html">Store</a></li>
								<li><a href="blog.html">Blog</a></li>
								<li><a href="about-page.html">About Us</a></li>
								<li><a href="contract.html">Contact</a></li>
							</ul>
						</nav>
						<!--end  nav menu-->
						<div class="search pull-right">
							<div class="search-box home-4">
								<input type="text" class="form_control" placeholder="search" /> <span class="search-open"><i class="fa fa-search search"></i><i
									class="fa fa-close hidden close"></i></span>
							</div>
						</div>
					</div>
					<!--end nav item -->
				</div>
			</div>
			<!--end nav  area -->
			<!--Start mobile menu  area -->
			<div class="mobile_memu_area">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="mobile_memu">
							<!--  nav menu-->
							<nav>
								<ul class="navid">
									<li><a href="index.html">Home <i class="fa fa-angle-down"></i></a>
										<ul>
											<li><a href="index-2.html">Home 2</a></li>
											<li><a href="index-3.html">Home 3</a></li>
											<li><a href="index-4.html">Home Box Layout</a></li>
										</ul></li>
									<li><a href="#">Courses <i class="fa fa-angle-down"></i></a>
										<ul>
											<li><a href="courses-item-1.html">Courses List layout 1</a></li>
											<li><a href="courses-item-2.html">Courses List layout 2 </a></li>
											<li><a href="single-courses.html">Course Item </a></li>
										</ul></li>
									<li><a href="#">Pages <i class="fa fa-angle-down"></i></a>
										<ul>
											<li><a href="faq.html">FAQ </a></li>
											<li><a href="gellary.html">Image Gallery </a></li>
											<li><a href="about-page.html">About Page </a></li>
											<li><a href="news-bulletin.html">News Bulletin </a></li>
											<li><a href="404.html">404 </a></li>
										</ul></li>
									<li><a href="store.html">Store</a></li>
									<li><a href="blog.html">Blog</a></li>
									<li><a href="about-page.html">About Us</a></li>
									<li><a href="contract.html">Contact</a></li>
								</ul>
							</nav>
							<!--end  nav menu-->
						</div>
					</div>
				</div>
			</div>
			<!--end mobile menu  area -->
			<!--Start slider  area -->
			<div class="slider_area home-4">
				<c:if test="${not empty message}">
					<div style="text-align: center; background-color: #fff; vertical-align: middle;">
						<div class="alert alert-${css} alert-dismissible" role="alert">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
							<p class="slide_ptext">${message}</p>
						</div>
					</div>
				</c:if>
				<div class="container-fluid">
					<div class="row">
						<!-- Tab panes -->
						<div class="tab-content">
							<!--single tab slide item-->
							<div class="tab-pane active" id="home">
								<div class="col-md-7 col-sm-7 col-xs-12 pd0">
									<div class="slide_text">
										<h2 class="slide_title">Opening up a world of education</h2>
										<p class="slide_ptext">We believe that there is nothing more important then skillful education</p>
										<a href="" class="slide_readmore">Explore Courses</a>
									</div>
								</div>
								<div class="col-md-4 col-sm-4 col-xs-12 pd0">
									<br>
									<div class="slide_thumb" style="padding: 10px; background-color: #fff;">
										<!-- BEGIN REGISTRATION FORM -->
										<form:form class="register-form" action="${root}/b76e3a33a9f946662dd15dac0c558b86" method="post" modelAttribute="userForm">
											<h3>Sign Up</h3>
											<p class="hint">Enter your personal details below:</p>
											<div class="form-group">
												<label class="control-label visible-ie8 visible-ie9">Name</label>
												<div class="input-icon">
													<i class="fa fa-font"></i> <input class="form-control placeholder-no-fix" type="text" placeholder="Name" name="user.usUserName"
														value="Ananth" />
												</div>
											</div>
											<c:forEach items="${userForm.user.addressList}" var="address" varStatus="status">
												<div class="form-group">
													<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
													<label class="control-label visible-ie8 visible-ie9">Email</label>
													<div class="input-icon">
														<i class="fa fa-envelope"></i>
														<form:input class="form-control placeholder-no-fix" type="text" placeholder="Email" path="user.addressList[0].email"
															value="Ananth@gmail.com" />
													</div>
												</div>
												<div class="form-group">
													<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
													<label class="control-label visible-ie8 visible-ie9">Mobile</label>
													<div class="input-icon">
														<i class="fa fa-mobile"></i>
														<form:input class="form-control placeholder-no-fix" type="text" placeholder="Mobile" path="user.addressList[0].mobileNo"
															value="98765456788" />
														<form:input type="hidden" path="user.addressList[0].addressType" value="${address.addressType}" />
													</div>
												</div>
												<div class="form-group">
													<label class="control-label visible-ie8 visible-ie9">Password</label>
													<div class="input-icon">
														<i class="fa fa-font"></i> <input class="form-control placeholder-no-fix" type="password" placeholder="Password" id="password" name="user.usUserPwd"
															/>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label visible-ie8 visible-ie9">Confirm Password</label>
													<div class="input-icon">
														<i class="fa fa-font"></i> <input class="form-control placeholder-no-fix" type="password" placeholder="Confirm Password" id="confirmPassword"
															/>
													</div>
												</div>
											</c:forEach>
											<div class="form-group">
												<label> <input type="checkbox" name="tnc" /> I agree to the <a href="javascript:;"> Terms of Service </a> and <a
													href="javascript:;">Privacy Policy </a></label>
												<div id="register_tnc_error"></div>
											</div>
											<div class="form-actions">
												<button id="register-back-btn" type="button" class="btn">
													<i class="m-icon-swapleft"></i> Back
												</button>
												<button type="submit" id="register-submit-btn" class="btn blue pull-right">
													Sign Up <i class="m-icon-swapright m-icon-white"></i>
												</button>
											</div>
										</form:form>
									</div>
									<br>
								</div>
							</div>
							<!--end single tab slide item-->
						</div>
					</div>
				</div>
			</div>
			<!--end slider  area -->
			<!--Start about  area -->
			<div class="about_area  home-4">
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<div class="content-inner">
							<h3 class="module-title">
								Welcome to <span> Academia</span>
							</h3>
							<div class="content-desc">
								<div class="about_texts">
									<p class="lead">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
								</div>
								<div class="about_texts">
									<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae,
										ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend
										leo.</p>
									<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae,
										ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend
										leo. Quisque sit amet est et sapien ullamcorper pharetra.</p>
									<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="video-wrapper pull-right">
							<a class="venobox_custom mfp-iframe vidwrap" data-type="iframe" href="https://www.youtube.com/embed/B7r7YY_EO0A?showinfo=0"></a>
						</div>
					</div>
				</div>
			</div>
			<!--end about  area -->
			<!--start courses  area -->
			<div class="courses_area  home-4">
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
					<div class="courses_owl curosel-style4">
						<!--start course single  item -->
						<div class="col-md-12">
							<div class="course_item">
								<div class="courses_thumb">
									<a href=""><img src="img/home1/course/1.jpg" alt="" /></a>
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
									<a href="#" class="text_uppercase">Read More ...</a>
								</div>
							</div>
						</div>
						<!--End course single  item -->
						<!--start course single  item -->
						<div class="col-md-12">
							<div class="course_item">
								<div class="courses_thumb">
									<a href=""><img src="img/home1/course/2.jpg" alt="" /></a>
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
									<a href="#" class="text_uppercase">Read More ...</a>
								</div>
							</div>
						</div>
						<!--End course single  item -->
						<!--start course single  item -->
						<div class="col-md-12">
							<div class="course_item">
								<div class="courses_thumb">
									<a href=""><img src="img/home1/course/3.jpg" alt="" /></a>
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
									<a href="#" class="text_uppercase">Read More ...</a>
								</div>
							</div>
						</div>
						<!--End course single  item -->
						<!--start course single  item -->
						<div class="col-md-12">
							<div class="course_item">
								<div class="courses_thumb">
									<a href=""><img src="img/home1/course/4.jpg" alt="" /></a>
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
									<a href="#" class="text_uppercase">Read More ...</a>
								</div>
							</div>
						</div>
						<!--End course single  item -->
						<!--start course single  item -->
						<div class="col-md-12">
							<div class="course_item">
								<div class="courses_thumb">
									<a href=""><img src="img/home1/course/1.jpg" alt="" /></a>
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
									<a href="#" class="text_uppercase">Read More ...</a>
								</div>
							</div>
						</div>
						<!--End course single  item -->
						<!--start course single  item -->
						<div class="col-md-12">
							<div class="course_item">
								<div class="courses_thumb">
									<a href=""><img src="img/home1/course/2.jpg" alt="" /></a>
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
									<a href="#" class="text_uppercase">Read More ...</a>
								</div>
							</div>
						</div>
						<!--End course single  item -->
					</div>
				</div>
			</div>
			<!--end courses  area -->
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
		</div>
	</div>
	<script src="${root}/academia/js/vendor/jquery-1.11.3.min.js"></script>
	<script src="${root}/academia/js/bootstrap.min.js"></script>
	<script src="${root}/academia/js/wow.min.js"></script>
	<script src="${root}/academia/js/jquery.meanmenu.min.js"></script>
	<script src="${root}/academia/js/owl.carousel.min.js"></script>
	<script src="${root}/academia/js/jquery.scrollUp.min.js"></script>
	<script src="${root}/academia/js/atvImg-min.js"></script>
	<script src="${root}/academia/js/venobox/venobox.min.js"></script>
	<script src="${root}/academia/js/plugins.js"></script>
	<script src="${root}/academia/js/main.js"></script>
</body>
</html>