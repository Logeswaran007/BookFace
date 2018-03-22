<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html>
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>EduTel Reset Password</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css" />
<link href="${root}/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="${root}/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
<link href="${root}/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="${root}/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css" />
<link href="${root}/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="${root}/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" type="text/css" />
<link href="${root}/assets/admin/pages/css/profile.css" rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL PLUGIN STYLES -->
<!-- BEGIN PAGE STYLES -->
<link href="${root}/assets/admin/pages/css/tasks.css" rel="stylesheet" type="text/css" />
<!-- END PAGE STYLES -->
<!-- BEGIN THEME STYLES -->
<!-- DOC: To use 'rounded corners' style just load 'components-rounded.css' stylesheet instead of 'components.css' in the below style tag -->
<link href="${root}/assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css" />
<link href="${root}/assets/global/css/plugins.css" rel="stylesheet" type="text/css" />
<link href="${root}/assets/admin/layout2/css/layout.css" rel="stylesheet" type="text/css" />
<link href="${root}/assets/admin/layout2/css/themes/grey.css" rel="stylesheet" type="text/css" id="style_color" />
<link href="${root}/assets/admin/layout2/css/custom.css" rel="stylesheet" type="text/css" />
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body class="page-boxed page-header-fixed page-container-bg-solid ">
	<!-- BEGIN HEADER -->
	<div class="page-header navbar ">
		<!-- BEGIN HEADER INNER -->
		<div class="page-header-inner container">
			<!-- BEGIN LOGO -->
			<div class="">
				<a href="javascript:;"><img src="${root}/academia/img/home2/logo-default.png" alt="logo" class="logo-default" /></a>
			</div>
			<!-- END LOGO -->
		</div>
		<!-- END HEADER INNER -->
	</div>
	<!-- END HEADER -->
	<div class="clearfix"></div>
	<!-- BEGIN CONTAINER -->
	<div class="container">
		<div>
			<!-- BEGIN CONTENT -->
			<div class="page-content-wrapper">
				<div class="page-content">
					<!-- BEGIN PAGE HEADER-->
					<div style="margin: 10px;">
						<h3 class="page-title">Reset Password - Welcome ${loginUserName}</h3>
					</div>
					<div class="page-bar">
						<ul class="page-breadcrumb">
							<li><i class="fa fa-home"></i> <a href="${root}">Home</a> <i class="fa fa-angle-right"></i></li>
							<li><a href="#">Pages</a> <i class="fa fa-angle-right"></i></li>
							<li><a href="#">Reset Password</a></li>
						</ul>
					</div>
					<!-- END PAGE HEADER-->
					<!-- BEGIN PAGE CONTENT-->
					<div class="row">
						<div class="col-md-12">
							<c:if test="${status=='Reset'}">
								<!-- BEGIN PROFILE SIDEBAR -->
								<div class="profile-sidebar" style="width: 250px;">
									<!-- PORTLET MAIN -->
									<div class="portlet light profile-sidebar-portlet">
										<!-- SIDEBAR USERPIC -->
										<div class="profile-userpic">
											<img src="${loginUserImage}" class="img-responsive" alt="">
										</div>
										<!-- END SIDEBAR USERPIC -->
										<!-- SIDEBAR USER TITLE -->
										<div class="profile-usertitle">
											<div class="profile-usertitle-job">${email}</div>
											<div class="profile-usertitle-job">${mobileNo}</div>
											<div class="profile-usertitle-job">${lastLoginTime}</div>
										</div>
										<!-- END SIDEBAR USER TITLE -->
										<!-- SIDEBAR MENU -->
										<div class="profile-usermenu">
											<ul class="nav">
												<li class="active"><a href="#"> <i class="icon-settings"></i> Account Settings
												</a></li>
											</ul>
										</div>
										<!-- END MENU -->
									</div>
									<!-- END PORTLET MAIN -->
								</div>
								<!-- END BEGIN PROFILE SIDEBAR -->
								<!-- BEGIN PROFILE CONTENT -->
								<div class="profile-content">
									<div class="row" id="row-1">
										<div class="col-md-12">
											<div class="portlet light">
												<div class="portlet-title tabbable-line">
													<div class="caption caption-md">
														<i class="icon-globe theme-font hide"></i> <span class="caption-subject font-blue-madison bold uppercase">Profile Account</span>
													</div>
													<ul class="nav nav-tabs">
														<li class="active"><a href="#tab_1_1" data-toggle="tab">Reset Password</a></li>
													</ul>
												</div>
												<div class="portlet-body">
													<div class="tab-content">
														<!-- CHANGE PASSWORD TAB -->
														<div class="tab-pane active" id="tab_1_1">
															<form action="${root}/b3590290a9128b9362e199707c2ba008" method="post">
																<div class="form-group">
																	<label class="control-label">New Password</label> <input type="password" name="newPassword" class="form-control" />
																</div>
																<div class="form-group">
																	<label class="control-label">Re-type New Password</label> <input type="password" name="confirmPassword" class="form-control" />
																</div>
																<div class="margin-top-10">
																	<button type="submit" class="btn green-haze">
																		Change Password <i class="m-icon-swapright m-icon-white"></i>
																	</button>
																</div>
																<div class="margin-top-10">&nbsp;</div>
															</form>
														</div>
														<!-- END CHANGE PASSWORD TAB -->
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:if>
							<!-- END PROFILE CONTENT -->
						</div>
						<div class="col-md-12">
							<c:if test="${status=='true'}">
								<div class="portlet alert alert-success alert-dismissable" style="text-align: center; vertical-align: middle;">
									<h4>
										<b><br><br>Your Password has been reset successfully.<br><br></b>
									</h4>
									<h5>Please click <a href="${root}/d56b699830e77ba53855679cb1d252da">here </a>to login</h5>
								</div>
							</c:if>
							<c:if test="${status=='false'}">
								<div class="portlet alert alert-danger alert-dismissable" style="text-align: center; vertical-align: middle;">
									<h4>
										<b><br><br>Oops.... Your Password reset failed. Please contact administrator.<br><br></b>
									</h4>
								</div>
							</c:if>
						</div>
					</div>
					<!-- END PAGE CONTENT-->
				</div>
			</div>
			<!-- END CONTENT -->
			<!-- BEGIN QUICK SIDEBAR -->
			<!--Cooming Soon...-->
			<!-- END QUICK SIDEBAR -->
		</div>
		<!-- END CONTAINER -->
		<!-- BEGIN FOOTER -->
		<div class="page-footer">
			<div class="page-footer-inner">
				2014 &copy; Metronic by keenthemes. <a href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"
					title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase Metronic!</a>
			</div>
			<div class="scroll-to-top">
				<i class="icon-arrow-up"></i>
			</div>
		</div>
		<!-- END FOOTER -->
	</div>
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<!--[if lt IE 9]>
<script src="${root}/assets/global/plugins/respond.min.js"></script>
<script src="${root}/assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
	<script src="${root}/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
	<script src="${root}/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="${root}/assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
	<script src="${root}/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${root}/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
	<script src="${root}/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="${root}/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
	<script src="${root}/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
	<script src="${root}/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
	<script src="${root}/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script src="${root}/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js" type="text/javascript"></script>
	<script src="${root}/assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="${root}/assets/global/scripts/metronic.js" type="text/javascript"></script>
	<script src="${root}/assets/admin/layout2/scripts/layout.js" type="text/javascript"></script>
	<script src="${root}/assets/admin/layout2/scripts/demo.js" type="text/javascript"></script>
	<script src="${root}/assets/admin/pages/scripts/profile.js" type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {
			// initiate layout and plugins
			Metronic.init(); // init metronic core components
			Layout.init(); // init current layout
			Demo.init(); // init demo features\
			Profile.init(); // init page demo
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>