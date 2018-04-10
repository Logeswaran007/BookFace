<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

 

<script>
	${displayOrderList}
	var data = {};
	var organisationTable;
	$(document).ready(function()  
	{
		 $('[rel="tooltip"]').tooltip({trigger: "hover"});
		organisationTable = $('#organisationTableId').DataTable(
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
				"emptyTable" : "<center>No Organisation Details Available.</center>"
			},
		 	"ajax":
		 	{
				"url": "${searchOrganisationUrl}",
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
			         .html(getCreateOrganizationHTML());           
			   }, 
			"columns": ${columnsList},
			"columnDefs": ${columnDefsList}
		});
	 	$('div.dataTables_filter input').addClass('form-control');
	 	$('div.dataTables_length select').addClass('form-control');
	 	$('.dataTables_filter input').attr('placeholder','Search');
	 	 $("div.toolbar").html('<b>Custom tool bar! Text/images etc.</b>');
	 	
	 	$.fn.dataTable.Responsive.breakpoints = [
	 	    { name: 'desktop', width: Infinity },
	 	    { name: 'tablet',  width: 1024 },
	 	    { name: 'fablet',  width: 768 },
	 	    { name: 'phone',   width: 480 }
	 	];
	
	});
	
	function getCreateOrganizationHTML()
	{
	/* 	var CreateOrganization ="<span style=\"float:right!important\"> <i class=\"fa fa-plus-square\" title=\"Hello World!\" style=\"font-size:20px; color:green;\"></i> </span>"; */
	var CreateOrganization ="<button type=\"button\" class=\"btn btn-success pull-right\" data-placement=\"bottom\" rel=\"tooltip\" data-toggle=\"modal tooltip\" data-target=\"#organistationDivId\">Create Organisation <i class=\"fa fa-plus\"></i></button>";	
	return CreateOrganization;
	}
	
</script>
<style>
.td-span175
{
	width: 175px;
	padding:2px;
}

.td-span
{
	width: 150px;
	padding:2px;
}


.tooltip {
    position: relative;
    display: inline-block;
    border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
    visibility: hidden;
    width: 120px;
    background-color: black;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 5px 0;
    
    /* Position the tooltip */
    position: absolute;
    z-index: 1;
    bottom: 100%;
    left: 50%;
    margin-left: -60px;
}

.tooltip:hover .tooltiptext {
    visibility: visible;
}

</style>

<!-- BEGIN CONTENT -->
<div id="page-content-generate-key">
	<!-- BEGIN PAGE HEADER-->
	<div class="page-bar">
		<ul class="page-breadcrumb">
			<li><i class="fa fa-home"></i> <a href="#">Home</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">Schools / Colleges / Universities</a></li>
		</ul>
	</div>
	<div class="page-content-body">
		
		<div id="organisationTableId_wrapper"
			class="dataTables_wrapper no-footer">
			<div class="table-scrollable">
				<table class=table table-striped table-bordered table-hover dt-responsive dataTable no-footer dtr-inline collapsed" 
					id="organisationTableId" role="grid"
					aria-describedby="organisationTableId_info">
				</table>
			</div>
		</div>
	</div>
</div>
<div class="clearfix"></div>
<!-- START ORGANISATION ADD -->
<!-- ----------------------------------------------------------- -->
<jsp:include page="add-organisation.jsp" flush="true" />
<!-- ----------------------------------------------------------- -->
<!-- END  ORGANISATION ADD -->

