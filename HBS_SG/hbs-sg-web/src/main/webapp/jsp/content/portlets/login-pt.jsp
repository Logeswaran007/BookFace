<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<div class="col-md-6 col-sm-6">
	<div class="portlet light ">
		<div class="portlet-title">
			<div class="caption">
				<i class="icon-share font-blue-steel hide"></i> <span
					class="caption-subject font-blue-steel bold uppercase">Recent
					Activities</span>
			</div>
			<div class="actions">
				<div class="btn-group">
					<a class="btn btn-sm btn-default btn-circle" href="javascript:;"
						data-toggle="dropdown" data-hover="dropdown"
						data-close-others="true"> Filter By <i
						class="fa fa-angle-down"></i>
					</a>
					<div
						class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
						<label><input type="checkbox" /> Finance</label> <label><input
							type="checkbox" checked="checked" /> Membership</label> <label><input
							type="checkbox" /> Customer Support</label> <label><input
							type="checkbox" checked="checked" /> HR</label> <label><input
							type="checkbox" /> System</label>
					</div>
				</div>
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
					<li><a href="javascript:;">
							<div class="col1">
								<div class="cont">
									<div class="cont-col1">
										<div class="label label-sm label-success">
											<i class="fa fa-bar-chart-o"></i>
										</div>
									</div>
									<div class="cont-col2">
										<div class="desc">Finance Report for year 2013 has been
											released.</div>
									</div>
								</div>
							</div>
							<div class="col2">
								<div class="date">20 mins</div>
							</div>
					</a></li>
					<li>
						<div class="col1">
							<div class="cont">
								<div class="cont-col1">
									<div class="label label-sm label-danger">
										<i class="fa fa-user"></i>
									</div>
								</div>
								<div class="cont-col2">
									<div class="desc">You have 5 pending membership that
										requires a quick review.</div>
								</div>
							</div>
						</div>
						<div class="col2">
							<div class="date">24 mins</div>
						</div>
					</li>
					<li>
						<div class="col1">
							<div class="cont">
								<div class="cont-col1">
									<div class="label label-sm label-info">
										<i class="fa fa-shopping-cart"></i>
									</div>
								</div>
								<div class="cont-col2">
									<div class="desc">
										New order received with <span
											class="label label-sm label-success"> Reference
											Number: DR23923 </span>
									</div>
								</div>
							</div>
						</div>
						<div class="col2">
							<div class="date">30 mins</div>
						</div>
					</li>
					<li>
						<div class="col1">
							<div class="cont">
								<div class="cont-col1">
									<div class="label label-sm label-success">
										<i class="fa fa-user"></i>
									</div>
								</div>
								<div class="cont-col2">
									<div class="desc">You have 5 pending membership that
										requires a quick review.</div>
								</div>
							</div>
						</div>
						<div class="col2">
							<div class="date">24 mins</div>
						</div>
					</li>
					<li>
						<div class="col1">
							<div class="cont">
								<div class="cont-col1">
									<div class="label label-sm label-default">
										<i class="fa fa-bell-o"></i>
									</div>
								</div>
								<div class="cont-col2">
									<div class="desc">
										Web server hardware needs to be upgraded. <span
											class="label label-sm label-default "> Overdue </span>
									</div>
								</div>
							</div>
						</div>
						<div class="col2">
							<div class="date">2 hours</div>
						</div>
					</li>
					<li><a href="javascript:;">
							<div class="col1">
								<div class="cont">
									<div class="cont-col1">
										<div class="label label-sm label-default">
											<i class="fa fa-briefcase"></i>
										</div>
									</div>
									<div class="cont-col2">
										<div class="desc">IPO Report for year 2013 has been
											released.</div>
									</div>
								</div>
							</div>
							<div class="col2">
								<div class="date">20 mins</div>
							</div>
					</a></li>
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
					<li><a href="javascript:;">
							<div class="col1">
								<div class="cont">
									<div class="cont-col1">
										<div class="label label-sm label-danger">
											<i class="fa fa-bar-chart-o"></i>
										</div>
									</div>
									<div class="cont-col2">
										<div class="desc">Finance Report for year 2013 has been
											released.</div>
									</div>
								</div>
							</div>
							<div class="col2">
								<div class="date">20 mins</div>
							</div>
					</a></li>
					<li>
						<div class="col1">
							<div class="cont">
								<div class="cont-col1">
									<div class="label label-sm label-default">
										<i class="fa fa-user"></i>
									</div>
								</div>
								<div class="cont-col2">
									<div class="desc">You have 5 pending membership that
										requires a quick review.</div>
								</div>
							</div>
						</div>
						<div class="col2">
							<div class="date">24 mins</div>
						</div>
					</li>
					<li>
						<div class="col1">
							<div class="cont">
								<div class="cont-col1">
									<div class="label label-sm label-info">
										<i class="fa fa-shopping-cart"></i>
									</div>
								</div>
								<div class="cont-col2">
									<div class="desc">
										New order received with <span
											class="label label-sm label-success"> Reference
											Number: DR23923 </span>
									</div>
								</div>
							</div>
						</div>
						<div class="col2">
							<div class="date">30 mins</div>
						</div>
					</li>
					<li>
						<div class="col1">
							<div class="cont">
								<div class="cont-col1">
									<div class="label label-sm label-success">
										<i class="fa fa-user"></i>
									</div>
								</div>
								<div class="cont-col2">
									<div class="desc">You have 5 pending membership that
										requires a quick review.</div>
								</div>
							</div>
						</div>
						<div class="col2">
							<div class="date">24 mins</div>
						</div>
					</li>
					<li>
						<div class="col1">
							<div class="cont">
								<div class="cont-col1">
									<div class="label label-sm label-warning">
										<i class="fa fa-bell-o"></i>
									</div>
								</div>
								<div class="cont-col2">
									<div class="desc">
										Web server hardware needs to be upgraded. <span
											class="label label-sm label-default "> Overdue </span>
									</div>
								</div>
							</div>
						</div>
						<div class="col2">
							<div class="date">2 hours</div>
						</div>
					</li>
					<li><a href="javascript:;">
							<div class="col1">
								<div class="cont">
									<div class="cont-col1">
										<div class="label label-sm label-info">
											<i class="fa fa-briefcase"></i>
										</div>
									</div>
									<div class="cont-col2">
										<div class="desc">IPO Report for year 2013 has been
											released.</div>
									</div>
								</div>
							</div>
							<div class="col2">
								<div class="date">20 mins</div>
							</div>
					</a></li>
				</ul>
			</div>
			<div class="scroller-footer">
				<div class="btn-arrow-link pull-right">
					<a href="javascript:;">See All Records</a> <i
						class="icon-arrow-right"></i>
				</div>
			</div>
		</div>
	</div>
</div>
