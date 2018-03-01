<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="${root}/assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css" />
        <link href="${root}/assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="${root}/assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="${root}/assets/global/plugins/clockface/css/clockface.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
       
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="${root}/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
        <script src="${root}/assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
        <script src="${root}/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
        <script src="${root}/assets/global/plugins/clockface/js/clockface.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
      
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="${root}/assets/pages/scripts/components-date-time-pickers.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
      


   
              

<form:errors path="*" cssClass="errorblock" element="div" />
<div class="row">
	<div class="col-md-6">
		<div class="form-group">
			<div class="input-group input-icon right">
				<span class="input-group-addon"> <i class="fa fa-user font-green"></i>
				</span>
				<form:input path="users.usUserId" class="form-control"
					type="hidden" id="usUserId" />
				<form:input path="users.usUserName"
					class="form-control" type="text" id="usUserName" value=""
					placeholder="User First Name" />
			</div>
		</div>
	</div>
	<div class="col-md-6">
		<div class="form-group">
			<div class="input-group input-icon right">
				<span class="input-group-addon"> <i class="fa fa-user-plus font-green"></i>
				</span>
				<form:input path="users.usUserId" class="form-control"
					type="hidden" id="usUserId" />
				<form:input path="users.usLastName"
					class="form-control" type="text" id="usLastName" value=""
					placeholder="User Last Name" />
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-md-6">
		<div class="form-group">
			<div class="input-group input-icon right">
				<span class="input-group-addon"> <i class="fa fa-calendar font-green"></i>
				</span>
				<form:input path="users.usUserId" class="form-control"
					type="hidden" id="usUserId" />
				       
				       <form:input class="form-control form-control-inline date-picker" 
				        data-date-end-date="0d" path="users.usDob" type="text" id="usDob" data-date-format="dd/mm/yyyy"
				        placeholder="Date of Birth" />
				   
			</div>
		</div>
	</div>
	<div class="col-md-6">
		<div class="form-group">
			<div class="input-group input-icon right">
				<span class="input-group-addon"> <i class="fa fa-transgender font-green" style="font-size:20px"></i>
				</span>
				<form:input path="users.usUserId" class="form-control"
					type="hidden" id="usUserId" />
					
			    <form:select path="users.usSex"
					id="usSex" class="form-control"
					placeholder="Select Gender">
					<form:option value="Male" label="Male" />
					<form:option value="Female" label="Female" />
					<form:option value="Bigender" label="Bigender" />
				</form:select>
				
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-md-6">
		<div class="form-group">
			<div class="input-group input-icon right">
				<span class="input-group-addon"> <i class="fa fa-user font-green"></i>
				</span>
				<form:input path="users.usUserId" class="form-control"
					type="hidden" id="usUserId" />
				
				<form:input path="users.usFatherName" 
					class="form-control" type="text" id="usFatherName" value=""
					placeholder="Father's Name" />
			</div>
		</div>
	</div>
	<div class="col-md-6">
		<div class="form-group">
			<div class="input-group input-icon right">
				<span class="input-group-addon"> <i class="fa fa-calendar font-green" style="font-size:20px"></i>
				</span>
				<form:input path="users.usUserId" class="form-control"
					type="hidden" id="usUserId" />
					
					<form:input class="form-control form-control-inline date-picker" 
				        data-date-end-date="0d" path="users.usDateOfJoin" type="text" id="usDateOfJoin"
				        placeholder="Date of Join" />
				
			</div>
		</div>
	</div>
</div>


<div class="clearfix"></div>
<!-- START USER ADD -->
<!-- ----------------------------------------------------------- -->
<jsp:include page="add-address-base.jsp" flush="true"> 
<jsp:param name="entity" value="users" /></jsp:include>
 <!-- ----------------------------------------------------------- -->
<!-- END  USER ADD -->

