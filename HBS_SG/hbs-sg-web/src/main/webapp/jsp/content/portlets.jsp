<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="idx" value="0" />
<c:forEach var="pt" items="${portletList}">
	<c:if test="${idx%2==0}">
		<div class="row">
	</c:if>
	<jsp:include page="${pt}" flush="true" />
	<c:if test="${idx%2==1}">
		</div>
		<div class="clearfix"></div>
	</c:if>
	<c:set var="idx" value="${idx+1}" />
</c:forEach>
<div class="clearfix"></div>