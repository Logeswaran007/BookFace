<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<div id="addEBooksId" class="bootbox modal fade bootbox-alert in"
	tabindex="-1" role="addEBooksId"
	style="display: none; padding-right: 16px;">
	<form:form method="POST" modelAttribute="eBooksForm"
		commandName="eBooksForm" id="eBooksForm" name="eBooksForm"
		action="${root}/c54b280767442e7485d0fd640980cfc1">
		<div class="modal-dialog">
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
							</div>




						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-info" id="submit" type="submit"
						disabled="disabled">Save</button>
					<button data-bb-handler="cancel" id="cancel" type="button"
						class="btn default" data-dismiss="modal" aria-hidden="true">Cancel</button>
				</div>

			</div>
		</div>
	</form:form>
</div>
