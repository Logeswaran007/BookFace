<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<div id="addAuthKeyGenId" class="bootbox modal fade bootbox-alert in"
	tabindex="-1" role="addAuthKeyGenId"
	style="display: none; padding-right: 16px;">
	<form:form method="POST" modelAttribute="authKeyGenForm"
		commandName="authKeyGenForm" id="authKeyGenForm" name="authKeyGenForm"
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
						<div class="form-body"></div>
					</div>
				</div>
				<div class="modal-footer">
					<button data-bb-handler="generateKey" class="btn btn-info"
						id="submit" type="submit" disabled="disabled">Generate
						Key</button>
					<button data-bb-handler="cancel" id="cancel" type="button"
						class="btn default" data-dismiss="modal" aria-hidden="true">Cancel</button>
				</div>

			</div>
		</div>
	</form:form>
</div>
