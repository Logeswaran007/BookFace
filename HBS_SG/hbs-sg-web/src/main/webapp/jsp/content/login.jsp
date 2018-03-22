<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
    <link href="${root}/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="${root}/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
    <link href="${root}/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="${root}/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <link href="${root}/assets/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
    <link href="${root}/assets/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN THEME GLOBAL STYLES -->
    <link href="${root}/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
    <!-- END THEME GLOBAL STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="${root}/assets/pages/css/login-4.min.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME LAYOUT STYLES -->
    <!-- END THEME LAYOUT STYLES -->
    <link rel="shortcut icon" href="favicon.ico" /> </head>
<!-- END HEAD -->
<!-- BEGIN BODY -->

<body class="login" style="font-size: 14px;">
    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
    <div class="menu-toggler sidebar-toggler"></div>
    <!-- END SIDEBAR TOGGLER BUTTON -->
    <!-- BEGIN LOGO -->
    <div class="logo"> <a href="${root}"><img
			src="${root}/academia/img/home2/logo-default.png" alt="" /></a> </div>
    <!-- END LOGO -->
    <!-- BEGIN LOGIN -->
    <div class="content">
        <div class="row" style="background-color: #FDB912;">
            <div class="col-md-6 col-sm-6" style="padding: 0px;"> <img src="${root}/academia/img/home2/login-edu.jpg" width="100%" class="login-image" /> </div>
            <div class="col-md-6 col-sm-6">
                <div class="portlet-title">
                    <!-- BEGIN LOGIN FORM -->
                    <form class="login-form" action="${root}/d56b699830e77ba53855679cb1d252da" method="post">
                        <h4 class="form-title"><b>Login to your account</b></h4>
                        <div class="alert alert-danger display-hide"> <button class="close" data-close="alert"></button> <span> Enter any Email/Mobile No and password. </span> </div>
                        <div class="form-group">
                            <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that--><label class="control-label visible-ie8 visible-ie9">Email/Mobile
								No</label>
                            <div class="input-icon"> <i class="fa fa-user"></i> <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Email/Mobile No" name="username" /> </div>
                        </div>
                        <div class="form-group"> <label class="control-label visible-ie8 visible-ie9">Password</label>
                            <div class="input-icon"> <i class="fa fa-lock"></i> <input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Password" name="password" /> </div>
                        </div>
                        <div class="form-group">
                            <div class="md-checkbox has-info"> <input type="checkbox" id="remember" name="remember" class="md-check"> <label for="remember"> <span
									class="inc"></span> <span class="check"></span> <span
									class="box"></span> Remember me
								</label> </div>
                        </div>
                        <div class="form-group"> <button id="submit" type="submit" class="btn btn-info pull-right" style="font-size:16px;">
								 <i class="fa fa-arrow-circle-o-right"></i>&nbsp;Login
							</button> </div>
                        <!-- div class="login-options">
							<h4>Or login with</h4>
							<ul class="social-icons">
								<li><a class="facebook" data-original-title="facebook" href="javascript:;"> </a></li>
								<li><a class="twitter" data-original-title="Twitter" href="javascript:;"> </a></li>
								<li><a class="googleplus" data-original-title="Goole Plus" href="javascript:;"> </a></li>
								<li><a class="linkedin" data-original-title="Linkedin" href="javascript:;"> </a></li>
							</ul>
						</div -->
                        <div class="forget-password">
                            <h4>Forgot your password ?</h4>
                            <p> no worries, click <a href="javascript:;" id="forget-password">
									here </a> to reset your password. </p>
                        </div>
                        <!-- div class="create-account">
							<p>
								Don't have an account yet ?&nbsp; <a href="javascript:;" id="register-btn"> Create an account </a>
							</p>
						</div-->
                    </form>
                    <!-- END LOGIN FORM -->
                    <!-- BEGIN FORGOT PASSWORD FORM -->
                    <form class="forget-form">
                        <h3>Forget Password ?</h3>
                        <p>Enter your e-mail address below to reset your password.</p>
                        <div class="form-group">
                            <div class="input-icon"> <i class="fa fa-envelope"></i> <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" id="email" name="email" value="anandb.hbs@gmail.com" /> </div>
                        </div>
                        <div class="form-actions"> <button type="button" id="back-btn" class="btn">
								<i class="m-icon-swapleft"></i> Back
							</button> <button type="button" class="btn blue pull-right" id="forgot-submit-btn">
								Submit <i class="m-icon-swapright m-icon-white"></i>
							</button> </div>
                        <div id="errorResetDiv" class="display-hide"> <button class="close" data-close="alert"></button> <span> Enter any Email/Mobile No and password. </span> </div>
                    </form>
                    <!-- END FORGOT PASSWORD FORM -->
                </div>
            </div>
        </div>
        <!-- END REGISTRATION FORM -->
    </div>
    <!-- END LOGIN -->
    <!-- BEGIN COPYRIGHT -->
    <div class="copyright">
        <script>
            document.write(new Date().getFullYear())
        </script> &copy; EduTel Academy. </div>
    <!-- END COPYRIGHT -->
    <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
    <!-- BEGIN CORE PLUGINS -->
    <!--[if lt IE 9]><script src="${root}/assets/global/plugins/respond.min.js}"></script><script src="${root}/assets/global/plugins/excanvas.min.js}"></script> <![endif]-->
    <script src="${root}/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="${root}/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="${root}/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${root}/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script src="${root}/assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="${root}/assets/global/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL PLUGINS -->
    <script>
        $(document).ready(function()
        {
            $("#forgot-submit-btn").click(function(event)
            {
                //stop submit the form, we will post it manually.
                event.preventDefault();
                $.ajax(
                {
                    type: "post",
                    contentType: "application/json",
                    url: "${root}/f1af228b320b70a94a236d44271a6ea7?email=" + $("#email").val(),
                    dataType: 'json',
                    cache: false,
                    timeout: 60000,
                    success: function(result)
                    {
                        $('#errorResetDiv').removeClass("display-hide");
                        $('#errorResetDiv').removeClass("alert-success");
                        $('#errorResetDiv').removeClass("alert-danger");
                        if (result.status == "Done")
                        {
                            var json = "<span>" + result.data + "</span>";
                            $('#errorResetDiv').addClass("alert alert-success alert-dismissable");
                            $('#errorResetDiv').html(json);
                        }
                        else
                        {
                            var json = "<span>" + result.data + "</span>";
                            $('#errorResetDiv').addClass("alert alert-danger alert-dismissable");
                            $('#errorResetDiv').html(json);
                        }
                    },
                    error: function(e)
                    {
                        var json = "<span>" + result.data + "</span>";
                        $('#errorResetDiv').addClass("alert alert-danger alert-dismissable");
                        $('#errorResetDiv').html(json);
                    }
                });
            });
        });
    </script>
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>