<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<style>
.td-div300 {
	
	height:200px;
	padding: 2px;
	overflow: auto
}
</style>
<script>
	var data = {};
	var alertsTable;
	$(document).ready(function()  
	{
		alertsTable = $('#alertsAndNotificationsTableId').DataTable(
		{
			"processing": true,
			"serverSide": true,
			"searchDelay":1000,
			"jQueryUI" : true,
			"pagingType" : "full_numbers",
		 	"order" : [ 1, 'desc' ],
		 	"language" : 
			{
				"search" : "",
				"lengthMenu" : "_MENU_",
				"emptyTable" : "<center>No Authentication Key Available.</center>"
			},
		 	"ajax":
		 	{
				"url": "${searchAlertsAndNotificationsUrl}",
				"type": "POST"
			},
			"columns": ${columnsList},
			"columnDefs": ${columnDefsList},
		});
	 	$('div.dataTables_filter input').addClass('form-control');
	 	$('div.dataTables_length select').addClass('form-control');
	 	$('.dataTables_filter input').attr('placeholder','Search');
	 	
	});
	
</script>

<!-- BEGIN CONTENT -->
<div id="page-content-generate-key">
	<!-- BEGIN PAGE HEADER-->
	<div class="page-bar">
		<ul class="page-breadcrumb">
			<li><i class="fa fa-home"></i> <a href="index.html">Home</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">information-alert</a></li>
		</ul>
	</div>
	<div class="page-content-body">
		<div class="table-toolbar">
			<div class="row">
				<div class="col-md-6">
					<div class="btn-group">
						<button type="button" class="btn sbold green" data-toggle="modal"
							data-target="#addInfoAlertId">
							Add New`<i class="fa fa-plus"></i>
						</button>
					</div>

				</div>
				<div class="col-md-6">
					<div class="btn-group pull-right">
						<button class="btn green  btn-outline dropdown-toggle"
							data-toggle="dropdown" aria-expanded="false">
							Tools <i class="fa fa-angle-down"></i>
						</button>
						<ul class="dropdown-menu pull-right">
							<li><a href="javascript:;"> <i class="fa fa-print"></i>
									Print
							</a></li>

							<li><a href="javascript:;"> <i class="fa fa-file-pdf-o"></i>
									Save as PDF
							</a></li>
							<li><a href="javascript:;"> <i
									class="fa fa-file-excel-o"></i> Export to Excel
							</a></li>
						</ul>
					</div>
				</div>
			</div>

		</div>

		<div id="alertsAndNotificationsTableId_wrapper"
			class="dataTables_wrapper no-footer">
			<div class="table-scrollable">
				<table
					class="table table-striped table-bordered table-hover table-checkable order-column dataTable no-footer"
					id="alertsAndNotificationsTableId" role="grid"
					aria-describedby="alertsAndNotificationsTableId_info">
				</table>
			</div>
		</div>
	</div>
</div>
<div class="clearfix"></div>
<!-- START Info Alert -->
<!-- ----------------------------------------------------------- -->
<jsp:include page="add-info-alert.jsp" flush="true" />
<!-- ----------------------------------------------------------- -->
<!-- END Info Alert-->