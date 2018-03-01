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


<!--start mobile menu  area -->
<c:import url="/jsp/edutel/edutel-sg-header.jsp"></c:import>
	<!--end mobile menu  area -->

	
	<div class="map_area">
		<div class="container-fulid">
			<div class="map">
			   <!-- Start contact-map -->
					<div class="contact-map">
						<div id="#">
						<iframe  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1943.3215530691682!2d80.20926950337403!3d13.058374506440229!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a5266955e7852e7%3A0xccf9af97e0e6bd38!2sEdutel+Academy!5e0!3m2!1sen!2sin!4v1507377363308" width="100%" height="400" style="vertical-align:top; border:0"></iframe>

						
						</div>
					</div>
				<!-- End contact-map -->
			</div>							
		</div>	
	</div>	
	<div class="contact_area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
				<div class="title">
						<h3 class="module-title">
							Our <span>Contact</span>
						</h3>
					</div>
					<div class="title">
						<p class="lead">
							We are always here to hear from you.
						</p>
					</div>
				</div>
			</div>		
			<div class="row">
				<!-- start  blog left -->
				<div class="col-md-4 col-sm-4">
					<div class="contact-address">	
						<div class="media">
							<div class="media-left">
								<i class="fa fa-phone"></i>
							</div>
							<div class="media-body">
								<h4 class="media-heading">Phone</h4>
								<p>
									<span class="contact-emailto">+044-43849090</span>
								</p>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<i class="fa fa-envelope"></i>
							</div>
							<div class="media-body">
								<h4 class="media-heading">Email</h4>
								<p>
									<span class="contact-emailto">admin@edutelacademy.com</span>
								</p>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<i class="fa fa-map-marker"></i>
							</div>
							<div class="media-body">
								<h4 class="media-heading">Address</h4>
								<p>
								<span class="contact-emailto"> <b>Edutel Academy</b> <br/> No - 18/4D,
									1st Floor, <br /> Thiru Nagar 2nd Street,<br /> Vadapalani,
									Chennai - 600 026.<br /> Land mark: Near Hotel Ambika
									Empire. <br /> Phone: 044-43849090 <br /> Mobile: +917401259090<br />
									Email: admin@edutelacademy.com <br />

								</span>
								</p>
							</div>
						</div>							
					</div>				
				</div>
				<div class="col-md-8 col-sm-8">
					<div class="contact_us">
					<div id="formmessage" style="display:none">Success/Error Message Goes Here</div>
					<form id="contactform" role="form" method="post" action="${root}/php/contact-form.php">
						<div class="form-group">
							<div class="col-md-4 col-sm-4">
								<p class="fnone"><label class="" for="Name">Name <em>*</em></label></p>
							</div>
							<div class="col-md-8 col-sm-8">
								<div class="i_box">									
									<input type="text" name="name" placeholder="Name" id="Name"/>								
								</div>						
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-4 col-sm-4">
								<p class="fnone"><label class="" for="Email">Email <em>*</em></label></p>
							</div>
							<div class="col-md-8 col-sm-8">
								<div class="i_box">									
									<input type="email" name="email" placeholder="Email" id="Email"/>							
								</div>						
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-4 col-sm-4">
								<p class="fnone"><label class="" for="message">Message <em>*</em></label></p>
							</div>
							<div class="col-md-8 col-sm-8">
								<div class="i_box">									
								
									<textarea name="message" id="message" placeholder="Message" cols="30" rows="10"></textarea>							
								</div>						
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-4 col-sm-4">
								<p class="fnone">
									<label class="" for="*What is 2+2? (Anti-spam)">*What
										is 2+2? (Anti-spam)<em>*</em>
									</label>
								</p>
							</div>
							<div class="col-md-8 col-sm-8">
								<div class="i_box">
									<input type="human" name="human" placeholder="Type Here"
										id="*What is 2+2? (Anti-spam)" />

								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-4 col-sm-4"></div>
							<div class="col-md-8 col-sm-8">
								<input type="hidden" name="action" value="sendEmail"/>
								<p class=""><button id="submit" name="submit" type="submit"   class="read_more buttonc">Submit</button></p>
							</div>							
						</div>
					</form>
					<div id="ajaxloader" style="display:none"><img class="center-block" src="images/loading.gif" alt=""></div>
					</div>
				</div>			
			</div>
		</div>
	</div>	
	<!--end courses  area -->
	
	<!--start branch office  area -->
	
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
							Phone: 044 - 43849090



						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-lg-6">
					<div class="course_item">
						
						<div class="courses_content">
							<b>Jayam Plaza, </b><br /> No:91 A/6, Vivekananda Road,<br />
							Ram-Nagar, <br /> Coimbatore- 641 009<br /> Land mark: Opp..
							to HDFC Bank<br /> Phone: 0422 - 4976090<br /><br />
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
	
	
	
	
	
	
	<!-- breadcrumb-area start -->
	<div class="breadcrumb-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="breadcrumb">
						<ul>
							
							<li><a href="http://www.edutelacademy.com/index.do">Home</a> <i class="fa fa-angle-right" style="color:black"></i></li>
							<li><a href="#">Contact Us</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumb-area end -->	
	
	
	<!-- footer  area -->
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