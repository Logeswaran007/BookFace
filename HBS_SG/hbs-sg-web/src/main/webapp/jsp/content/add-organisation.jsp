<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<div id="organistationDivId" class="bootbox modal fade bootbox-alert in"
	tabindex="-1" role="organistationDivId"
	style="display: none; padding-right: 16px;">
	<form:form method="POST" modelAttribute="organisationForm"
		commandName="organisationForm" id="organisationForm"
		name="organisationForm"
		action="${root}/c54b280767442e7485d0fd640980cfc1"
		novalidate="novalidate" enctype="multipart/form-data">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="bootbox-close-button close"
						data-dismiss="modal" aria-hidden="true" style="margin-top: -10px;">×</button>
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-speech font-green"></i> <span
								class="caption-subject bold font-green uppercase"><b>Add
									Organisation - Schools / Colleges / Universities</b></span>
						</div>
					</div>
				</div>
				<div class="modal-body">
					<div class="bootbox-body">
						<div class="form-body">
							<!-- START ORGANISATION ADD -->
							<!-- ----------------------------------------------------------- -->
							<jsp:include page="add-organisation-address.jsp" flush="true" />
							<!-- ----------------------------------------------------------- -->
							<!-- END  ORGANISATION ADD -->

						</div>
					</div>
					<div class="modal-footer">
						<button data-bb-handler="organisationForm" class="btn blue"
							id="submit" type="submit">Save</button>
						<button data-bb-handler="cancel" id="cancel" type="button"
							class="btn default" data-dismiss="modal" aria-hidden="true">Cancel</button>
					</div>
				</div>

			</div>
		</div>
	</form:form>
</div>
