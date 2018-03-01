<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<style>
#column-content {
	display: inline-block;
}

img {
	vertical-align: middle;
}

span {
	display: inline-block;
	vertical-align: middle;
}

/* for visual purposes */
#column-content {
	position: relative;
}
</style>
<script type="text/javascript">
	function loadContent(action, page, tips) {

		if (tips == "true") {
			$("#page-content-div").html($("#portlet-tips").html());
		} else {
			$("#page-content-div").html($("#processing").html());
		}

		var _URL = "${root}/" + action;

		if (page != "") {
			_URL += "/" + page;
		}

		jQuery.ajax({
			type : "POST",
			url : _URL,
			success : function(data) {
				$("#page-content-div").html(data);
			}
		});
	}
</script>

<!-- BEGIN SIDEBAR -->
<div class="page-sidebar-wrapper">
	<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
	<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
	<div class="page-sidebar navbar-collapse collapse">
		<!-- BEGIN SIDEBAR MENU -->
		<!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
		<!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
		<!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
		<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
		<!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
		<!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
		<ul class="page-sidebar-menu page-sidebar-menu-hover-submenu "
			data-keep-expanded="false" data-auto-scroll="true"
			data-slide-speed="200">${leftSideMenu}
		</ul>
		<!-- END SIDEBAR MENU -->
	</div>
</div>
<!-- END SIDEBAR -->

<div id="portlet-tips" style="display: none">
	<div class="note note-warning">
		<h4 class="block">Tips and Tricks!!!</h4>
		<p>Duis mollis, est non commodo luctus, nisi erat porttitor
			ligula, eget lacinia odio sem nec elit mattis consectetur purus sit
			amet. Cras mattis consectetur purus sit amet fermentum.</p>
	</div>
</div>
<div id="processing" style="display: none">
  <div id="page-content-wrapper">
  <img src="${root}/assets/layouts/layout/img/loading-spinner-blue.gif">
  <span><b>Hi ${loginUserName}</b>&nbsp;Please wait... we are processing your request!</span>
</div>
</div>