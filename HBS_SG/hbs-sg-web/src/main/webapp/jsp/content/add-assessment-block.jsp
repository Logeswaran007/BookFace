<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<div id="addAssessmentDivId" class="bootbox modal fade bootbox-alert in" tabindex="-1"
	role="addAssessmentDivId" style="display: none; padding-right: 16px;">
	<form:form method="POST" modelAttribute="assessmentForm"
		commandName="assessmentForm" id="assessmentForm"
		name="assessmentForm"
		action="${root}/cb0c3a5e0a43e8308a00a2f307df8683">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="bootbox-close-button close"
						data-dismiss="modal" aria-hidden="true" style="margin-top: -10px;">×</button>
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-speech font-green"></i> <span
								class="caption-subject bold font-green uppercase"><b>Create
									Assessment Block</b></span>
						</div>
					</div>
				</div>
				<div class="modal-body">
					<div class="bootbox-body">

						<form:errors path="*" cssClass="errorblock" element="div" />
						<div class="form-body">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<div class="input-icon left">
											<i class="fa fa-cogs"></i>
											<form:select path="courseGroupId" id="courseGroupId"
												class="form-control" onchange="getCourseList();">
												<form:option value="" label="--- Select Course Group ---" />
												<form:options items="${courseGroupList}" />
											</form:select>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="input-icon left">
											<i class="fa fa-cogs"></i>
											<form:select path="courseId" id="courseId"
												class="form-control" onchange="getChapterList();">
												<form:option value="" label="--- Select Course ---" />
												<form:options items="${courseList}" />
											</form:select>
										</div>
									</div>

								</div>
							</div>
							<div class="row">

								<div class="col-md-6">
									<div class="form-group">
										<div class="input-icon left">
											<i class="fa fa-cogs"></i>
											<form:select path="chapterId" id="chapterId"
												class="form-control">
												<form:option value="" label="--- Select Chapter ---" />
												<form:options items="${chapterList}" />
											</form:select>
										</div>
									</div>

								</div>
							</div>
							<div class="row">

								<div class="col-md-6">
									<div class="form-group">
										<div class="input-icon left">
											<i class="fa fa-file-text"></i>
											<form:input path="assessmentName" class="form-control"
												type="text" id="assessmentNameId" value=""
												placeholder="Assessment Name" />
										</div>
									</div>

								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="modal-footer">
				<button data-bb-handler="assessmentForm" class="btn blue"
						id="submit" type="submit">Save</button>
				<button data-bb-handler="cancel" id="cancel" type="button"
						class="btn default" data-dismiss="modal" aria-hidden="true">Cancel</button>
				</div>

			</div>
		</div>
	</form:form>
</div>
<script>
	$("#assessmentForm").submit(function(e) {

		// for stopping the default action of element
		e.preventDefault();

		var data = {};
		
		data["assessmentName"] = $("#assessmentNameId").val();
		data["courseGroupId"] = $("#courseGroupId").val();
		data["courseId"] = $("#courseId").val();
		data["chapterId"] = $("#chapterId").val();
		
		var formData = new FormData();
		formData.append("assessmentForm", JSON.stringify(data));


		$.ajax({
			type : "POST",
			enctype : 'multipart/form-data',
			url : "${root}/cb0c3a5e0a43e8308a00a2f307df8683",
			processData : false, //prevent jQuery from automatically transforming the data into a query string
			contentType : false,
			cache : false,
			timeout : 600000,
			data : formData,
			success : function(data) {
				$("#addAssessmentDivId").modal('hide');
				assessmentQuestionTable.ajax.reload();
			}
		});
	});

	
</script>

