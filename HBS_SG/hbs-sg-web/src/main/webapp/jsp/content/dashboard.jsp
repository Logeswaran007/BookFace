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

<!-- START HEADER-SCRIPTS DASHBOARD -->
<!-- ----------------------------------------------------------- -->
<jsp:include page="header-scripts.jsp" flush="true" />
<!-- ----------------------------------------------------------- -->
<!-- END HEADER-SCRIPTS DASHBOARD -->


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
<body
	class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
	<div class="page-wrapper">


		<!-- START HEADER DASHBOARD -->
		<!-- ----------------------------------------------------------- -->
		<jsp:include page="header.jsp" flush="true" />
		<!-- ----------------------------------------------------------- -->
		<!-- END HEADER DASHBOARD -->

		<!-- BEGIN CONTAINER -->
		<div class="">
			<div class="page-container">

				<!-- START MENU SIDEBAR DASHBOARD -->
				<!-- ----------------------------------------------------------- -->
				<jsp:include page="menu-sidebar.jsp" flush="true" />
				<!-- ----------------------------------------------------------- -->
				<!-- END MENU SIDEBAR DASHBOARD -->

				<!-- BEGIN CONTENT -->
				<div class="page-content-wrapper">
					<div class="page-content" id="page-content-div">
						<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
						<div class="modal fade" id="portlet-config" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true"></button>
										<h4 class="modal-title">Modal title</h4>
									</div>
									<div class="modal-body">Widget settings form goes here</div>
									<div class="modal-footer">
										<button type="button" class="btn blue">Save changes</button>
										<button type="button" class="btn default" data-dismiss="modal">Close</button>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!-- /.modal -->
						<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

						<!-- BEGIN PAGE HEADER-->
						<h3 class="page-title">Dashboard</h3>
						<div class="page-bar">
							<ul class="page-breadcrumb">
								<li><i class="fa fa-home"></i> <a href="index.html">Home</a>
									<i class="fa fa-angle-right"></i></li>
								<li><a href="#">Dashboard</a></li>
							</ul>
						</div>
						<!-- END PAGE HEADER-->

						<!-- START STATISTICS DASHBOARD -->
						<!-- ----------------------------------------------------------- -->
						<jsp:include page="statistics.jsp" flush="true" />
						<!-- ----------------------------------------------------------- -->
						<!-- END STATISTICS DASHBOARD -->


						<!-- START PORTLET DASHBOARD -->
						<!-- ----------------------------------------------------------- -->
						<jsp:include page="portlets.jsp" flush="true" />
						<!-- ----------------------------------------------------------- -->
						<!-- END PORTLET DASHBOARD -->

					</div>

					<!-- START QUICK SIDEBAR DASHBOARD -->
					<!-- ----------------------------------------------------------- -->
					<jsp:include page="quick-sidebar.jsp" flush="true" />
					<!-- ----------------------------------------------------------- -->
					<!-- END QUICK SIDEBAR DASHBOARD -->

				</div>
				<!-- END CONTENT -->

			</div>
			<!-- END CONTAINER -->

			<!-- START FOOTER DASHBOARD -->
			<!-- ----------------------------------------------------------- -->
			<jsp:include page="footer.jsp" flush="true" />
			<!-- ----------------------------------------------------------- -->
			<!-- END FOOTER DASHBOARD -->

		</div>

		<!-- START FOOTER-SCRIPTS DASHBOARD -->
		<!-- ----------------------------------------------------------- -->
		<jsp:include page="footer-scripts.jsp" flush="true" />
		<!-- ----------------------------------------------------------- -->
		<!-- END FOOTER-SCRIPTS DASHBOARD -->
		</div>
</body>
<!-- END BODY -->
</html>