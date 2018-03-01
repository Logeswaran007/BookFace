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

<form:errors path="*" cssClass="errorblock" element="div" />
<div class="row">
	<div class="col-md-6">
		<div class="form-group">
			<div class="input-group input-icon right">
				<span class="input-group-addon"> <i
					class="fa fa-university font-green"></i>
				</span> <input type="hidden" id="formJson" name="formJson" />
				<form:input path="organisation.organisationId" class="form-control"
					type="hidden" id="organisationId" />
				<form:input path="organisation.organisationName"
					class="form-control" type="text" id="organisationName"
					value="MM Hr Sec School"
					placeholder="School or Colleges or Institution" />
			</div>
		</div>
		<div class="form-group">
			<div class="input-group input-icon right">
				<span class="input-group-addon"> <i
					class="fa fa-list-ul font-green"></i>
				</span>
				<form:select path="organisation.organisationType"
					id="organisationType" class="form-control"
					placeholder="Organisation Type">
					<form:option value="School" label="School" />
					<form:option value="College" label="College" />
					<form:option value="University" label="University" />
					<form:option value="Tutorial" label="Tutorial" />
				</form:select>
			</div>
		</div>
	</div>
	<div class="col-md-6">
		<div class="fileinput fileinput-new" data-provides="fileinput">
			<input type="hidden" id="ProfileImage" value="ProfileImage" name="docTypes[]"
				id="docTypes">
			<div class="col-md-6 fileinput-new thumbnail"
				style="width: 120px; height: 90px;">
				<img src="${root}/common/no-image.png" alt="" />
			</div>
			<div class="col-md-6 fileinput-preview fileinput-exists thumbnail"
				style="max-width: 120px; max-height: 90px;"></div>
			<div class="col-md-4">
				<span class="btn default btn-file"> <span
					class="btn btn-success fileinput-new"><i class="fa fa-user fa-2x"></i></span> <span
					class="btn btn-info fileinput-exists"><i class="fa fa-edit fa-2x"></i></span> <input
					type="file" id="uploadMultiPartFiles" name="uploadMultiPartFiles[]">
				</span>
			</div>
			<div class="col-md-4">
			<span class="btn default"> 
				<a href="javascript:;" class="btn btn-danger fileinput-exists"
					data-dismiss="fileinput"><i class="fa fa-trash fa-2x">&nbsp;</i></a></span>
			</div>
		</div>
	</div>
</div>
<div class="clearfix"></div>
<!-- START ORGANISATION ADD -->
<!-- ----------------------------------------------------------- -->
<jsp:include page="add-address-base.jsp" flush="true"><jsp:param
		name="entity" value="organisation" /></jsp:include>
<!-- ----------------------------------------------------------- -->
<!-- END  ORGANISATION ADD -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script
	src="${root}/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js"
	type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<script>
	$("#organisationForm").submit(function(e) {

		// for stopping the default action of element
		e.preventDefault();

		var organisation = {};
		organisation["organisationId"] = $("#organisationId").val();
		organisation["organisationName"] = $("#organisationName").val();
		organisation["organisationType"] = $("#organisationType").val();

		var communication = getCommunicationAddress();
		communication["organisation"] = organisation;

		var present = getPresentAddress();
		present["organisation"] = organisation;

		var permanent = getPermanentAddress();
		permanent["organisation"] = organisation;

		var data = {};
		data["organisation"] = organisation;
		data["communication"] = communication;
		data["present"] = present;
		data["permanent"] = permanent;

		var formData = new FormData();
		formData.append("organisationForm", JSON.stringify(data));

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
			url : "${root}/bf08745da5c91a28f4ef52f00f069480",
			processData : false, //prevent jQuery from automatically transforming the data into a query string
			contentType : false,
			cache : false,
			timeout : 600000,
			data : formData,
			success : function(data) {
				$("#organistationDivId").modal('hide');
				organisationTable.ajax.reload();
			}
		});
	});

	
</script>