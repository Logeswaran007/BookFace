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
								class="caption-subject bold font-green uppercase"><b>Generate
									Authentication Key</b></span>
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
											<form:select path="authKey.scheme.schemeId" id="schemeId"
												class="form-control">
												<form:option value="" label="--- Select Scheme ---" />
												<form:options items="${schemeList}" />
											</form:select>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="input-group input-icon right">
											<span class="input-group-addon"> <i
												class="fa fa-inr font-blue"></i></span>
											<form:input path="authKey.scheme.schemeCost" id="schemeCost"
												class="form-control" type="text" value=""
												placeholder="Scheme Cost Price" disabled="true" />
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<div class="input-icon left">
											<i class="fa fa-user"></i>
											<form:select path="authKey.users.usEmployeeId"
												id="employeeId" class="form-control">
												<form:option value="" label="--- Select Employee ---" />
												<form:options items="${employeeList}" />
											</form:select>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="input-group input-icon right">
											<span class="input-group-addon"> <i
												class="fa fa-ellipsis-v font-blue"></i>
											</span>
											<form:input path="noOfKeys" class="form-control" type="text"
												id="noOfKeys" value="" placeholder="No of Keys"
												disabled="true" />
										</div>
									</div>
								</div>
							</div>
							
							<%-- <div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<div class="input-icon left">
											<i class="fa fa-user"></i>
											<form:select path="authKey.users.usUserType"
												id="usUserType" class="form-control">
												<form:option value="" label="--- Select UserType ---" />
												<form:options items="${userTyeList}" />
											</form:select>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										
									</div>
								</div>
							</div> --%>
							<div class="clearfix"></div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<div class="input-group input-icon right">
											<span class="input-group-addon"> <i
												class="fa fa-inr font-blue"></i>
											</span>
											<form:input path="authKey.sellingPrice" class="form-control"
												id="sellingPrice" type="text" value=""
												placeholder="Scheme Selling Price" disabled="true" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="input-group input-icon right">
											<span class="help-block" id="totalCostSpanId"> </span>
											<form:input path="totalSellingCost" class="form-control"
												id="totalSellingCost" type="hidden" value="" />
										</div>
									</div>
								</div>
							</div>
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
		</div>
	</form:form>
</div>
<script>
	$(document).ready(function() {
		$("#noOfKeys").val("");
	});

	$("#authKeyGenForm").submit(function(e) {

		// for stopping the default action of element
		e.preventDefault();

		var scheme = {};
		scheme["schemeId"] = $("#schemeId").val().split("-")[0];

		var users = {};
		users["usEmployeeId"] = $("#employeeId").val();

		var authKey = {};
		authKey["scheme"] = scheme;
		authKey["users"] = users;
		authKey["sellingPrice"] = $("#sellingPrice").val();

		var data = {};
		data["authKey"] = authKey;
		data["noOfKeys"] = parseInt($("#noOfKeys").val());
		data["totalSellingCost"] = parseInt($("#totalSellingCost").val());

		$.ajax({
			type : "POST",
			url : "${root}/c54b280767442e7485d0fd640980cfc1",
			contentType : "application/json; charset=utf-8",
			mimeType : 'application/j-son;charset=UTF-8',
			dataType : "json",
			data : JSON.stringify(data),
			success : function(data) {
				reset();
				$("#addAuthKeyGenId").modal('hide');
				//$("#addAuthKeyGenResultId").modal('show');
				
				authKeyTable.ajax.reload();
			}
		});
	});

	$("#cancel").click(function() {
		reset();
	});

	function reset() {
		$("#schemeId").val("");
		$("#schemeCost").val("");
		$("#employeeId").val("");
		$("#sellingPrice").val("");
		$("#noOfKeys").val("");
		$("#totalSellingCost").val("");
		$("#sellingPrice").attr("disabled", true);
		$("#submit").attr("disabled", true);
		$("#noOfKeys").attr("disabled", true);
		$("#totalCostSpanId").text("");
	}

	$("#schemeId").change(function() {
		var schemeId = $("#schemeId").val();

		if (schemeId != "") {
			var data = schemeId.split("-");
			$("#schemeCost").val(data[1]);
			$("#sellingPrice").val(data[1]);
			$("#sellingPrice").attr("disabled", false);
			$("#submit").attr("disabled", false);
			$("#noOfKeys").attr("disabled", false);
			$("#noOfKeys").val("1");
			calculateSellingCost();
		} else {
			reset();
		}
	});

	$("#sellingPrice").change(function() {

		calculateSellingCost();
	});

	$("#noOfKeys").change(function() {

		calculateSellingCost();
	});

	$("#employeeId").change(function() {

		calculateSellingCost();
	});

	function calculateSellingCost() {

		var schemeId = $("#schemeId").val();
		var sellingPrice = $("#sellingPrice").val();
		var noOfKeys = $("#noOfKeys").val();
		var employeeId = $("#employeeId").val();

		if (schemeId != "" && sellingPrice != "" && noOfKeys != ""
				&& employeeId != "") {
			sellingPrice = parseFloat(sellingPrice) * parseFloat(noOfKeys);
			sellingPrice = parseFloat(Math.round(sellingPrice * 100) / 100)
					.toFixed(2);

			$("#totalCostSpanId").text(
					"Total Key Selling Price : " + sellingPrice);
			$("#totalSellingCost").val(sellingPrice);
			$("#submit").attr("disabled", false);
		} else {
			$("#totalCostSpanId").text("");
			$("#submit").attr("disabled", true);
		}
	}

	
</script>