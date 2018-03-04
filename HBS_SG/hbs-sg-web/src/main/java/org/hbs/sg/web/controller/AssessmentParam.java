package org.hbs.sg.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.hbs.util.Param;

public class AssessmentParam extends Param
{
	
	private static final long	serialVersionUID	= -4134551024794083131L;
	public String				courseGroupId;
	public String				courseId;
	
	public AssessmentParam(HttpServletRequest request)
	{
		this.request = request;
	}
	
	public AssessmentParam(HttpServletRequest request, String courseGroupId, String courseId)
	{
		this.request = request;
		this.courseGroupId = courseGroupId;
		this.courseId = courseId;
	}
	
}
