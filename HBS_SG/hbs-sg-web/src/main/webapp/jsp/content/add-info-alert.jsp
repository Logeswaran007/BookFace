<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<!-- BEGIN PAGE LEVEL PLUGINS -->
<link
	href="${root}/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${root}/assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${root}/assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${root}/assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" type="text/css">
<link href="${root}/assets/global/plugins/clockface/css/clockface.css"
	rel="stylesheet" type="text/css">

<!-- END PAGE LEVEL PLUGINS -->


<!-- BEGIN PAGE LEVEL PLUGINS -->
<script
	src="${root}/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js"
	type="text/javascript"></script>
<script
	src="${root}/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"
	type="text/javascript"></script>
<script src="${root}/assets/global/plugins/moment.min.js"
	type="text/javascript"></script>
<script
	src="${root}/assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"
	type="text/javascript"></script>
<script
	src="${root}/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"
	type="text/javascript"></script>
<script src="${root}/assets/global/plugins/clockface/js/clockface.js"
	type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script
	src="${root}/assets/pages/scripts/components-date-time-pickers.min.js"
	type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->

<link href="${root}/assets/global/plugins/bootstrap-summernote/summernote.css"
	rel="stylesheet">
<script src="${root}/assets/global/plugins/bootstrap-summernote/summernote.min.js"
	rel="stylesheet"></script>



<div id="addInfoAlertId" class="bootbox modal fade bootbox-alert in"
	tabindex="-1" role="addInfoAlertId"
	style="display: none; padding-right: 16px;">
	<form:form method="POST" modelAttribute="informationAlertForm"
		commandName="informationAlertForm" id="informationAlertForm"
		name="informationAlertForm"
		action="${root}/e20e5e5b79ca06d8f85a053de63d2cf8">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="bootbox-close-button close"
						data-dismiss="modal" aria-hidden="true" style="margin-top: -10px;">×</button>
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-speech font-green"></i> <span
								class="caption-subject bold font-green uppercase"><b>Information
									Alerts</b></span>
						</div>
					</div>
				</div>
				<br />

				<form:errors path="*" cssClass="errorblock" element="div" />
				<div class="row" margin-left="4px" margin-right="2px">
					<div class="col-md-4">
						<div class="form-group">
							<div class="input-group input-icon right">
								<span class="input-group-addon"> <i
									class="fa fa-list-ul font-green"></i>
								</span>
								<form:select path="alerts.messageType" id="messageType"
									class="form-control" placeholder="messageType">
									<form:option value="" label="--- Select Type ---" />
									<form:options items="${typeList}" />
								</form:select>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div
							class="input-group date form_datetime form_datetime bs-datetime">
							<input type="text" size="16" class="form-control"
								name="alerts.scheduledDate" id="scheduledDate"
								placeholder="Scheduled Date"> <span
								class="input-group-btn">
								<button class="btn default date-set" type="button">
									<i class="fa fa-calendar"></i>
								</button>
							</span>
						</div>
					</div>

					<div class="col-md-4">
						<div
							class="input-group date form_datetime form_datetime bs-datetime">
							<input type="text" size="16" class="form-control"
								name="alerts.expiryDate" id="expiryDate"
								placeholder="Expiry Date"> <span class="input-group-btn">
								<button class="btn default date-set" type="button">
									<i class="fa fa-calendar"></i>
								</button>
							</span>
						</div>
					</div>
				</div>
				<br /> <br /> <br /> <br /> <br />

				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<label class="control-label col-md-2">Message<span
								class="required"> * </span>
							</label>
							<div class="col-md-9">
								<form:textarea path="alerts.message" id="message" />
							</div>
						</div>
					</div>
				</div>
				<br />


				<div class="modal-footer">
					<button data-bb-handler="informationAlertForm" class="btn blue"
						id="submit" type="submit">Save</button>
					<button data-bb-handler="cancel" id="cancel" type="button"
						class="btn default" data-dismiss="modal" aria-hidden="true">Cancel</button>
				</div>
			</div>
		</div>
	</form:form>
</div>


<script>
	jQuery(document).ready(function() {

		$('#message').summernote({
			height : 200, //set editable area's height
			resize : false
		});

		$("#informationAlertForm").submit(function(e) {

			// for stopping the default action of element
			e.preventDefault();

			var alerts = {};
			alerts["messageType"] = $("#messageType").val();
			alerts["scheduledDate"] = $("#scheduledDate").val();
			alerts["expiryDate"] = $("#expiryDate").val();
			alerts["message"] = $("#message").val();

			var data = {};
			data["alerts"] = alerts;

			alert(JSON.stringify(data));

			$.ajax({
				type : "POST",
				url : "${root}/e20e5e5b79ca06d8f85a053de63d2cf8",
				contentType : "application/json; charset=utf-8",
				mimeType : 'application/j-son;charset=UTF-8',
				dataType : "json",
				data : JSON.stringify(data),
				success : function(data) {
					$("#addInfoAlertId").modal('hide');
					alertsTable.ajax.reload();
				}
			});
		});
	});
</script>
