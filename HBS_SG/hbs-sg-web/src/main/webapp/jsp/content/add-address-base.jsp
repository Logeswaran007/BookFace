<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="entity" value="${param.entity}" />

<div class="row">
	<div class="col-md-12">
		<div class="tabbable-line">
			<ul class="nav nav-tabs ">
				<li class="active"><a href="#Communication" data-toggle="tab"
					aria-expanded="false"><B>Communication</B></a></li>
				<li class=""><a href="#Permanent" data-toggle="tab"
					aria-expanded="false"><B>Permanent</B></a></li>
				<li class=""><a href="#Present" data-toggle="tab"
					aria-expanded="true"><B>Present</B></a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="Communication">

					<!-- START COMMUNICATION ADDRESS -->
					<!-- ----------------------------------------------------------- -->
					<jsp:include page="add-address.jsp" flush="true"><jsp:param
							name="addressType" value="CommunicationAddress" />
						<jsp:param name="formObjectName" value="communication" /><jsp:param name="color" value="green" /><jsp:param name="entity" value="${entity}"/></jsp:include>
					<!-- ----------------------------------------------------------- -->
					<!-- END  COMMUNICATION ADDRESS -->

				</div>
				<div class="tab-pane" id="Permanent">
					<!-- START PERMANENT ADDRESS -->
					<!-- ----------------------------------------------------------- -->
					<jsp:include page="add-address.jsp" flush="true"><jsp:param
							name="addressType" value="PermanentAddress" />
						<jsp:param name="formObjectName" value="permanent" /><jsp:param name="color" value="blue" /></jsp:include>
					<!-- ----------------------------------------------------------- -->
					<!-- END  PERMANENT ADDRESS -->
				</div>
				<div class="tab-pane" id="Present">
					<!-- START PRESENT ADDRESS -->
					<!-- ----------------------------------------------------------- -->
					<jsp:include page="add-address.jsp" flush="true"><jsp:param
							name="addressType" value="PresentAddress" />
						<jsp:param name="formObjectName" value="present" /><jsp:param name="color" value="purple" /></jsp:include>
					<!-- ----------------------------------------------------------- -->
					<!-- END  PRESENT ADDRESS -->
				</div>
			</div>
		</div>
	</div>
</div>
