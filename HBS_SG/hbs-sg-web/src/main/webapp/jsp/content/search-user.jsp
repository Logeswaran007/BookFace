<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<script>
	var data = {};
	var userTable;
	$(document).ready(function()  
			{
				userTable = $('#userTableId').DataTable(
				{
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
			<li><i class="fa fa-home"></i> <a href="#">Home</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">Add User</a></li>
		</ul>
	</div>
	<div class="page-content-body">
		<div class="table-toolbar">
			<div class="row">
				<div class="col-md-6">
					<div class="btn-group">
						<button type="button" class="btn green btn-outline"
							data-toggle="modal" data-target="#userDivId">
							Create User <i class="fa fa-plus"></i>
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
		<div id="userTableId_wrapper" class="dataTables_wrapper no-footer">
			<div class="table-scrollable">
				<table
					class="table table-striped table-bordered table-hover table-checkable order-column dataTable no-footer"
					id="userTableId" role="grid" aria-describedby="userTableId_info">
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

