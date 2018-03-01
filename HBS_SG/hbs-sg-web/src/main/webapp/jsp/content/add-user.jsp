<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<div id="userDivId" class="bootbox modal fade bootbox-alert in"
	tabindex="-1" role="userDivId"
	style="display: none; padding-right: 16px;">
	<form:form method="POST" modelAttribute="userForm" commandName="userForm" id="userForm" name="userForm"
		action="${root}/c54b280767442e7485d0fd640980cfc1" novalidate="novalidate">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="bootbox-close-button close"
						data-dismiss="modal" aria-hidden="true" style="margin-top: -10px;">×</button>
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-user-plus font-green"></i> <span
								class="caption-subject bold font-green uppercase"><b>Add
									User </b></span>
						</div>
					</div>
				</div>
				<div class="modal-body">
					<div class="bootbox-body">

						
						<div class="form-body">
							<!-- START USER ADD -->
							<!-- ----------------------------------------------------------- -->
							  <jsp:include page="add-user-address.jsp" flush="true" /> 
							<!-- ----------------------------------------------------------- -->
							<!-- END  USER ADD -->

						</div>
					</div>
					<div class="modal-footer">
						<button data-bb-handler="userForm" class="btn blue"
							id="submit" type="submit"> Save</button>
						<button data-bb-handler="cancel" id="cancel" type="button"
							class="btn default" data-dismiss="modal" aria-hidden="true">Cancel</button>
					</div>
				</div>

			</div>
		</div>
	</form:form>
</div>

<script>
	$("#userForm").submit(function(e) {
		
		alert($("#usUserId").val());
	
		// for stopping the default action of element
		e.preventDefault();

		var users = {};
		users["usUserId"] = $("#usUserId").val();
		users["usUserName"] = $("#usUserName").val();
		users["usLastName"] = $("#usLastName").val();
		users["usDob"] = $("#usDob").val();
		users["usSex"] = $("#usSex").val();
		

		var communication = getCommunicationAddress();
		communication["users"] = users;

		var present = getPresentAddress();
		present["users"] = users;

		var permanent = getPermanentAddress();
		permanent["users"] = users;

		var data = {};
		data["users"] = users;
		data["communication"] = communication;
		data["present"] = present;
		data["permanent"] = permanent;

		$.ajax({
			type : "POST",
			url : "${root}/a37f317c6bb38ee26bb65f0e9af4b739",
			contentType : "application/json; charset=utf-8",
			mimeType : 'application/j-son;charset=UTF-8',
			dataType : "json",
			data : JSON.stringify(data),
			success : function(data) {
				$("#userDivId").modal('hide');
				userTable.ajax.reload();
			}
		});
	});

</script>
