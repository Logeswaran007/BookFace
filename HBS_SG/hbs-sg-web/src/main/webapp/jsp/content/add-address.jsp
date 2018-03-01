<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="addType" value="${param.addressType}" />
<c:set var="frmObject" value="${param.formObjectName}" />
<c:set var="color" value="${param.color}" />
<c:set var="entity" value="${param.entity}" />
<c:set var="phone1" value="${param.phone1}" />
<c:set var="website" value="${param.website}" />

<div class="tab-pane" id="${frmObject}Tab">
	<div class="row">
		<div class="col-md-4">
			<div class="form-group">
				<div class="input-group input-icon right">
					<span class="input-group-addon"> <i
						class="fa fa-envelope font-${color}"></i>
					</span>
					<form:input path="${frmObject}.email" class="form-control"
						type="text" id="${frmObject}email" value="email${entity}" placeholder="Email" />
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<div class="input-group input-icon right">
					<span class="input-group-addon"> <i
						class="fa fa-phone font-${color}"></i>
					</span>
					<form:input path="${frmObject}.primaryPhoneNo" class="form-control"
						type="text" id="${frmObject}primaryPhoneNo" value="99999999999"
						placeholder="Primary Phone No" />
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<c:if test="${entity=='organisation'}">
					<div class="input-group input-icon right">
						<span class="input-group-addon"> <i
							class="fa fa-phone-square font-${color}"></i>
						</span>
						<form:input path="${frmObject}.phoneNo1" class="form-control"
							type="text" id="${frmObject}phoneNo1" value="8888888888"
							placeholder="Phone No 1" />
					</div>
				</c:if>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
	<div class="row">
		<div class="col-md-4">
			<div class="form-group">
				<div class="input-group input-icon right">
					<span class="input-group-addon"> <i
						class="fa fa-mobile font-${color}"></i>
					</span>
					<form:input path="${frmObject}.mobileNo" class="form-control"
						type="text" id="${frmObject}mobileNo" value="99999000000"
						placeholder="Mobile No" />
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<div class="input-group input-icon right">
					<span class="input-group-addon"> <i
						class="fa fa-mobile font-${color}"></i>
					</span>
					<form:input path="${frmObject}.alternateMobileNo"
						class="form-control" type="text"
						id="${frmObject}alternateMobileNo" value="909090909090"
						placeholder="Alternate Mobile No" />
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<div class="input-group input-icon right">
					<span class="input-group-addon"> <i
						class="fa fa-whatsapp font-${color}"></i>
					</span>
					<form:input path="${frmObject}.whatsAppMobileNo"
						class="form-control" type="text"
						id="${frmObject}whatsAppMobileNo" value="80808080808"
						placeholder="Whats App No" />
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
	<div class="row">
		<div class="col-md-4">
			<div class="form-group">
				<div class="input-group input-icon right">
					<span class="input-group-addon"> <i
						class="fa fa-map-marker font-${color}"></i>
					</span>
					<form:input path="${frmObject}.addressLine1" class="form-control"
						type="text" id="${frmObject}addressLine1" value="addressLine1"
						placeholder="Address Line 1" />
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<div class="input-group input-icon right">
					<span class="input-group-addon"> <i
						class="fa fa-map-marker font-${color}"></i>
					</span>
					<form:input path="${frmObject}.addressLine2" class="form-control"
						type="text" id="${frmObject}addressLine2" value="addressLine2"
						placeholder="Address Line 2" />
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<div class="input-group input-icon right">
					<span class="input-group-addon"> <i
						class="fa fa-map-marker font-${color}"></i>
					</span>
					<form:input path="${frmObject}.addressLine3" class="form-control"
						type="text" id="${frmObject}addressLine3" value="addressLine3"
						placeholder="Address Line 3" />
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
	<div class="row">
		<div class="col-md-4">
			<div class="form-group">
				<div class="input-group input-icon right">
					<span class="input-group-addon"> <i
						class="fa fa-map-marker font-${color}"></i>
					</span>
					<form:input path="${frmObject}.landmark" class="form-control"
						type="text" id="${frmObject}landmark" value="landmark"
						placeholder="Landmark" />
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<div class="input-group input-icon right">
					<span class="input-group-addon"> <i
						class="fa fa-map-marker font-${color}"></i>
					</span>
					<form:select path="${frmObject}.country.country"
						class="form-control" id="${frmObject}country">
						<form:options items="${countryList}" />
					</form:select>
				</div>
			</div>
			<div class="form-group">
				<form:input path="${frmObject}.addressId" type="hidden"
					id="${frmObject}addressId" />
				<form:input path="${frmObject}.addressType" type="hidden"
					id="${frmObject}addressType" />
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<c:if test="${entity=='organisation'}">
					<div class="input-group input-icon right">
						<span class="input-group-addon"> <i
							class="fa fa-map-marker font-${color}"></i>
						</span>
						<form:input path="${frmObject}.website" class="form-control"
							type="text" id="${frmObject}website" value="website"
							placeholder="Website Url" />
					</div>
				</c:if>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
	<div class="row">
		<div class="col-md-4">
			<div class="form-group">
				<div class="input-group input-icon right">
					<span class="input-group-addon"> <i
						class="fa fa-map-marker font-${color}"></i>
					</span>
					<form:select path="${frmObject}.state" class="form-control"
						id="${frmObject}state">
						<form:options items="${stateList}" />
					</form:select>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<div class="input-group input-icon right">
					<span class="input-group-addon"> <i
						class="fa fa-globe font-${color}"></i>
					</span>
					<form:input path="${frmObject}.city" class="form-control"
						type="text" id="${frmObject}city" value="City" placeholder="City" />
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<div class="input-group input-icon right">
					<span class="input-group-addon"> <i
						class="fa fa-map-marker font-${color}"></i>
					</span>
					<form:input path="${frmObject}.pincode" class="form-control"
						type="text" id="${frmObject}pincode" value="2321312"
						placeholder="Pincode" />
				</div>
			</div>
		</div>
		

	</div>
	<div class="clearfix"></div>
</div>
<script>

function get${addType}()
{
	var ${frmObject} = {};
	${frmObject}["addressId"]	    	=$("#${frmObject}addressId").val();
	${frmObject}["addressLine1"]	    =$("#${frmObject}addressLine1").val();
	${frmObject}["addressLine2"]	    =$("#${frmObject}addressLine2").val();
	${frmObject}["addressLine3"]	    =$("#${frmObject}addressLine3").val();
	${frmObject}["alternateMobileNo"]	=$("#${frmObject}alternateMobileNo").val();
	${frmObject}["city"]		    	=$("#${frmObject}city").val();
	${frmObject}["email"]		    	=$("#${frmObject}email").val();
	${frmObject}["landmark"]		    =$("#${frmObject}landmark").val();
	${frmObject}["mobileNo"]		    =$("#${frmObject}mobileNo").val();
	${frmObject}["pincode"]		    	=$("#${frmObject}pincode").val();
	${frmObject}["primaryPhoneNo"]		=$("#${frmObject}primaryPhoneNo").val();
	${frmObject}["whatsAppMobileNo"]	=$("#${frmObject}whatsAppMobileNo").val();
	${frmObject}["addressType"] 	    =$("#${frmObject}addressType").val();	
	${frmObject}["phoneNo1"] 	    	=$("#${frmObject}phoneNo1").val();	
	${frmObject}["website"] 	    	=$("#${frmObject}website").val();	
	
	var country = {};
	country["country"] 					=$("#${frmObject}country").val();
	${frmObject}["country"]		    	= country;
	
	var state = {};
	state["state"] 						=$("#${frmObject}state").val();
	${frmObject}["state"]		    	= state;
	
	return ${frmObject};
}

</script>