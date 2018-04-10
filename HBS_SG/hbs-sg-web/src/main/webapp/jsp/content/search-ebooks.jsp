<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<script>
${displayOrderList}
var data = {};
var msg={};
var eBooksCourseTableId;
var eBooksChapterTableId;

$(document).ready(function()
{
	eBooksCourseTableId = $('#eBooksCourseTableId').DataTable(
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
            "emptyTable": "<center>No E-Books available for Courses</center>"
        },	
        "ajax":
        {
            "url": "${searchCourseEBooksUrl}",
            "type": "POST"
        },
        "columns": ${columnsCourseList},
        "columnDefs": ${columnCourseDefsList}
    });


	eBooksChapterTableId = $('#eBooksChapterTableId').DataTable(
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
            "emptyTable": "<center>No E-Books available for Chapters.</center>"
        },	
        "ajax":
        {
            "url": "${searchChapterEBooksUrl}",
            "type": "POST"
        },
        "columns": ${columnsChapterList},
        "columnDefs": ${columnChapterDefsList}
    });

});


function loadCourseEBooksPDFDownload(courseId)
{
	
	if( $(courseId!= ""))
			{
		 $.ajax(  {
			            type: "POST",
				        url: '${root}/cb4ccbb888a3058b8a7884d886d2e4d5/'+courseId,
				        success: function(url)
				         {
				        	eBooksCourseTableId.ajax.reload();
				        	if(url!= "")
				        		{
				           		 window.open(url);
				        		}
				        	else
				        		alert("Not able to generate PDF contact support team.");
				         }
				        
		                
					    });
		
			}

}
function loadChapterEBooksPDFDownload(chapterId)
{
	if( $(chapterId!= ""))
			{
		 $.ajax(  {
			            type: "POST",
				        url: '${root}/ea983cfe76e3f63681e133aa95d84393/'+chapterId,
				        success: function(url)
				         {
				        	eBooksChapterTableId.ajax.reload();
				        	if(url!= "")
				        		{
				           		window.open(url);
				        		}
				        	else
				        		alert("Not able to generate PDF contact support team.");
				         }
					    });
	    
		
			}

}

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
		<div id="eBooksCourseTableId_wrapper"
			class="dataTables_wrapper no-footer">
			<div class="tabbable tabbable-tabdrop">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#tab1" data-toggle="tab">Course
							EBooks </a></li>
					<li><a href="#tab2" data-toggle="tab">Chapter EBooks</a></li>

				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="tab1">
						<div class="table-scrollable">
							<table
								class="table table-striped table-bordered table-hover table-checkable order-column dataTable no-footer"
								id="eBooksCourseTableId" role="grid"
								aria-describedby="eBooksCourseTableId_info">
							</table>
						</div>
					</div>
					<div class="tab-pane" id="tab2">
						<div class="table-scrollable">
							<table
								class="table table-striped table-bordered table-hover table-checkable order-column dataTable no-footer"
								id="eBooksChapterTableId" role="grid"
								aria-describedby="eBooksChapterTableId_info">
							</table>
						</div>
					</div>

				</div>
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
