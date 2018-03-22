<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<div class="clearfix"></div>
<div class="row">
	<div class="col-md-6 col-sm-6">
		<div class="portlet light ">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-share font-blue-steel hide"></i> <span
						class="caption-subject font-blue-steel bold uppercase">Login
						Logout Activities</span>
				</div>
				<div class="actions">
					<a class="btn btn-circle btn-icon-only btn-default fullscreen"
						href="javascript:;"> </a>
				</div>
			</div>
			<div class="portlet-body">
				<div class="scroller" style="height: 300px;" data-always-visible="1"
					data-rail-visible="0">
					<ul class="feeds">
						<li>
							<div class="col1">
								<div class="cont">
									<div class="cont-col1">
										<div class="label label-sm label-info">
											<i class="fa fa-check"></i>
										</div>
									</div>
									<div class="cont-col2">
										<div class="desc">
											You have 4 pending tasks. <span
												class="label label-sm label-warning "> Take action <i
												class="fa fa-share"></i>
											</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col2">
								<div class="date">Just now</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
