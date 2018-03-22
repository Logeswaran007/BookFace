<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<!-- BEGIN PAGE LEVEL PLUGINS -->
<link
	href="${root}/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css"
	rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL PLUGINS -->




<div id="addEBooksId" class="bootbox modal fade bootbox-alert in"
	tabindex="-1" role="addEBooksId"
	style="display: none; padding-right: 16px;">
	<form:form method="POST" modelAttribute="eBooksForm"
		commandName="eBooksForm" id="eBooksForm" name="eBooksForm"
		action="${root}/a412ba0e3ffb38980d7c2f347967b3ca">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="bootbox-close-button close"
						data-dismiss="modal" aria-hidden="true" style="margin-top: -10px;">×</button>
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-speech font-green"></i> <span
								class="caption-subject bold font-green uppercase"><b>E-Books</b></span>
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

								<div class="col-md-6">
									<div class="fileinput fileinput-new" data-provides="fileinput">
										<input type="hidden" id="ProfileImage" value="ProfileImage"
											name="docTypes[]" id="docTypes">

										<div class="col-md-6 fileinput-new thumbnail"
											style="width: 120px; height: 90px;">
											<img src="${root}/common/no-image.png" alt="" />
										</div>
										<div
											class="col-md-6 fileinput-preview fileinput-exists thumbnail"
											style="max-width: 120px; max-height: 90px;"></div>
										<div class="col-md-4">
											<span class="btn default btn-file"> <span
												class="btn btn-success fileinput-new"><i
													class="fa fa-user fa-2x"></i></span> <span
												class="btn btn-info fileinput-exists"><i
													class="fa fa-edit fa-2x"></i></span> <input type="file"
												id="uploadMultiPartFiles" name="uploadMultiPartFiles[]">

											</span>
										</div>
										<div class="col-md-4">
											<span class="btn default"> <a href="javascript:;"
												class="btn btn-danger fileinput-exists"
												data-dismiss="fileinput"><i class="fa fa-trash fa-2x">&nbsp;</i></a></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button data-bb-handler="eBooksForm" class="btn blue" id="submit"
							type="submit">Save</button>
						<button data-bb-handler="cancel" id="cancel" type="button"
							class="btn default" data-dismiss="modal" aria-hidden="true">Cancel</button>
					</div>

				</div>
			</div>
		</div>
	</form:form>
</div>


<script
	src="${root}/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js"
	type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->



<script>
	$("#eBooksForm").submit(function(e) {

		// for stopping the default action of element
		e.preventDefault();

		var data = {};
		data["courseId"] = $("#courseId").val();
		data["courseGroupId"] = $("#courseGroupId").val();
		data["chapterId"] = $("#chapterId").val();

		var courseattachments = {};
		data["courseAttachments"] = courseattachments;

		var formData = new FormData();
		formData.append("eBooksForm", JSON.stringify(data));

		alert(JSON.stringify(data));

		var docTypes = [];

		$('input[name^="docTypes"]').each(function() {
			docTypes.push($(this).val());
		});

		formData.append("docTypes", docTypes);

		$.each($('#uploadMultiPartFiles')[0].files, function(i, file) {
			formData.append('uploadMultiPartFiles', file);
		});

		$.ajax({
			type : "POST",
			enctype : 'multipart/form-data',
			url : "${root}/a412ba0e3ffb38980d7c2f347967b3ca",
			processData : false, //prevent jQuery from automatically transforming the data into a query string
			contentType : false,
			cache : false,
			timeout : 600000,
			data : formData,
			success : function(data) {
				$("#addEBooksId").modal('hide');
				eBooksTable.ajax.reload();
			}
		});
	});
</script>

