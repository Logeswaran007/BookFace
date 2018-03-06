<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<script>
${displayOrderList}
var data = {};
var msg={};
var eBooksTable;
$(document).ready(function()
{
	eBooksTable = $('#eBooksTableId').DataTable(
    {
        "lengthMenu": [
            [10, 25, 50, 100],
            [10, 25, 50, 100]
        ],
        "processing": true,
        "serverSide": true,
        "jQueryUI": true,
        "pagingType": "full_numbers",
        "order": [1, 'desc'],
        "language":
        {
            "search": "",
            "lengthMenu": "_MENU_",
            "emptyTable": "<center>No eBooks data  Available.</center>"
        },	
        "ajax":
        {
            "url": "${searchEBooksUrl}",
            "type": "POST"
        },
        "columns": ${columnsList},
        "columnDefs": ${columnDefsList}
    });
    $('div.dataTables_filter input').addClass('form-control');
    $('div.dataTables_length select').addClass('form-control');
    $('.dataTables_filter input').attr('placeholder', 'Search');
});

function getCourseList()
{
	if( $("#courseGroupId").val() != "")
	{
	    $.ajax(
	    {
	        type: "GET",
	        dataType : "json",
	        contentType : "application/json; charset=utf-8",
	        url: '${root}/f68ac3a11b5644835aa0ec1a40019393/' + $("#courseGroupId").val(),
	    success: function(data)
	    { 
	    	$('#chapterId').find('courseId').remove().end();
	    	
	    	$.each(data.lbBeanList, function(i, d) { 
	    		$('#courseId').append('<option value="' + d.value+ '">' + d.label + '</option>'); }); 
	    	}
	    });
	};
}

function getChapterList()
{
	if( $("#courseId").val() != "")
	{
	    $.ajax(
	    {
	        type: "GET",
	        dataType : "json",
	        contentType : "application/json; charset=utf-8",
	        url: '${root}/f4593337ee57632604ffdf95306f3d67/' + $("#courseId").val(),
	        success: function(data)
	        { 
	        	$('#chapterId').find('option').remove().end();
	        	
		    	$.each(data.lbBeanList, function(i, d) { 
		    		$('#chapterId').append('<option value="' + d.value+ '">' + d.label + '</option>'); }); 
		    	}
		    });
	};
};

</script>
<style>
.td-span175 {
	width: 175px;
	padding: 2px;
}

.td-span {
	width: 150px;
	padding: 2px;
}
</style>
<!-- BEGIN CONTENT -->
<div id="page-content-generate-key">
	<!-- BEGIN PAGE HEADER-->
	<div class="page-bar">
		<ul class="page-breadcrumb">
			<li><i class="fa fa-home"></i> <a href="#">Home</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">E-Books</a></li>
		</ul>
	</div>
	<div class="page-content-body">
		<div class="table-toolbar">
			<div class="row">
				<div class="col-md-6">
					<div class="btn-group">
						<button type="button" class="btn green btn-outline"
							data-toggle="modal" data-target="#addEBooksId">
							EBooks <i class="fa fa-plus"></i>
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
		<div id="eBooksTableId_wrapper" class="dataTables_wrapper no-footer">
			<div class="table-scrollable">
				<table
					class="table table-striped table-bordered table-hover table-checkable order-column dataTable no-footer"
					id="eBooksTableId" role="grid"
					aria-describedby="eBooksTableId_info">
				</table>
			</div>
		</div>
	</div>
</div>
<div class="clearfix"></div>


<!-- START AUTH KEY GENERATE -->
<!-- ----------------------------------------------------------- -->
<jsp:include page="add-ebooks.jsp" flush="true" />
<!-- ----------------------------------------------------------- -->
<!-- END AUTH KEY GENERATE -->
