<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<script type="text/javascript">
	${displayOrderList}
	var data = {};
	var userTable;
	$(document).ready(function()  
			{
				userTable = $('#userTableId').DataTable(
				{
					"lengthMenu": [[10, 25, 50, 100], [10, 25, 50, 100]],
					"processing": true,
					"serverSide": true,
					"jQueryUI" : true,
					"pagingType" : "full_numbers",
		 			"order" : [ 1, 'desc' ],
				 	"language" : 
					{
						"search" : "",
						"lengthMenu" : "_MENU_",
						"emptyTable" : "<center>No User Details Available.</center>"
					},
				 	"ajax":
				 	{
						"url": "${searchUserUrl}",
						"type": "POST"
					},
					"responsive": {
	            		"details": {
	                		"type": 'column',
	                		"target": 'tr'
	            		}
	        		},
	        		dom: "<'row'<'col-md-6 col-sm-6'l><'col-md-6 col-sm-6'f<'create'>>r><'table-scrollable't><'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>",
	     		   initComplete: function(){
	     		      $("div.create")
	     		         .html(getCreateUserHTML());           
	     		   }, 
					"columns": ${columnsList},
					"columnDefs": ${columnDefsList},
				});
			 	$('div.dataTables_filter input').addClass('form-control');
			 	$('div.dataTables_length select').addClass('form-control');
			 	$('.dataTables_filter input').attr('placeholder','Search');
			 	$.fn.dataTable.Responsive.breakpoints = [
	 	    		{ name: 'desktop', width: Infinity },
	 	    		{ name: 'tablet',  width: 1024 },
	 	    		{ name: 'fablet',  width: 768 },
	 	    		{ name: 'phone',   width: 480 }
	 			];
			});
	
	function getCreateUserHTML()
	{
		var CreateUser ="<button type=\'button\' class=\'btn green btn-outline pull-right\' data-placement=\'bottom\' rel=\'tooltip\' data-toggle=\'modal\' data-target=\'#userDivId\'>Create ${userType} User<i class=\'fa fa-plus\'></i></button>";	
		
	return CreateUser;
	}
	
</script>

<!-- BEGIN CONTENT -->
<div id="page-content-generate-key">
	<!-- BEGIN PAGE HEADER-->
	<div class="page-bar">
		<ul class="page-breadcrumb">
			<li><i class="fa fa-home"></i> <a href="#">Home</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">Search ${userType} User</a></li>
		</ul>
	</div>
	<div class="page-content-body">
		<div class="table-toolbar">
			
		</div>
		<div id="userTableId_wrapper" class="dataTables_wrapper no-footer">
			<div class="table-scrollable">
				<table class=table table-striped table-bordered table-hover dt-responsive dataTable no-footer dtr-inline collapsed" 
					id="userTableId" role="grid"
					aria-describedby="userTableId_info">
				</table>
			</div>
		</div>
	</div>
</div>
<div class="clearfix"></div>
<!-- START USER ADD -->
<!-- ----------------------------------------------------------- -->
<jsp:include page="add-user.jsp" flush="true" />
<!-- ----------------------------------------------------------- -->
<!-- END  USER ADD -->

