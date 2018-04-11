<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<script>
${displayOrderList}
	 var data = {};
	var assessmentQuestionTable;
	$(document).ready(function()  
	{
    	assessmentQuestionTable = $('#assessmentQuestionTableId').DataTable(
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
    					"emptyTable" : "<center>No Assessment Questions Available.</center>"
    				},
    			 	"ajax":
    			 	{
    					"url": "${searchAssessmentQuestionUrl}",
    					"type": "POST"
    				},
    			 	dom: "<'row'<'col-md-6 col-sm-6'l><'col-md-6 col-sm-6'f<'create'>>r><'table-scrollable't><'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>",
    				   initComplete: function(){
    				      $("div.create")
    				         .html(getCreateAssessmentQuestionHTML());           
    				   }, 
    				"columns": ${columnsList},
    				"columnDefs": ${columnDefsList}
    			});	
    			
	 	$('div.dataTables_filter input').addClass('form-control');
	 	$('div.dataTables_length select').addClass('form-control');
	 	$('.dataTables_filter input').attr('placeholder','Search');
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
	function getCreateAssessmentQuestionHTML()
	{
		var CreateAssessmentQuestion ="<button type=\'button\' class=\'btn green btn-outline pull-right\' data-placement=\'bottom\' rel=\'tooltip\' data-toggle=\'modal\' data-target=\'#addAssessmentQuestionDivId\'>Create Assessment Question<i class=\'fa fa-plus\'></i></button>";
	
	return CreateAssessmentQuestion;
	}
	
</script>


<!-- BEGIN CONTENT -->
<div id="page-content-generate-key">
	<!-- BEGIN PAGE HEADER-->
	<div class="page-bar">
		<ul class="page-breadcrumb">
			<li><i class="fa fa-home"></i> <a href="#">Home</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">Assessment Questions Panel</a></li>
		</ul>
	</div>
	<div class="page-content-body">
		
		 <div id="assessmentQuestionTableId_wrapper"
			class="dataTables_wrapper no-footer">
			<div class="table-scrollable">
				<table class="table table-striped table-bordered table-hover dt-responsive dataTable no-footer dtr-inline collapsed"
					id="assessmentQuestionTableId" role="grid"
					aria-describedby="assessmentQuestionTableId_info">
				</table>
			</div>
		</div> 
	</div>
</div>
<div class="clearfix"></div>
<!-- START onlineExam ADD -->
<!-- ----------------------------------------------------------- -->
<jsp:include page="add-assessment-question.jsp" flush="true" />
<!-- ----------------------------------------------------------- -->
<!-- END  onlineExam ADD -->

