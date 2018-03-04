package org.hbs.sg.web.controller;

import java.io.Serializable;

public class EBooksForm implements Serializable
{
	
	private static final long	serialVersionUID	= 5996681412103693724L;
	String						chapterId;
	String						courseGroupId;
	String						courseId;
	
	public EBooksForm()
	{
		super();
		
	}
	
	public String getChapterId()
	{
		return chapterId;
	}
	
	public String getCourseGroupId()
	{
		return courseGroupId;
	}
	
	public String getCourseId()
	{
		return courseId;
	}
	
	public void setChapterId(String chapterId)
	{
		this.chapterId = chapterId;
	}
	
	public void setCourseGroupId(String courseGroupId)
	{
		this.courseGroupId = courseGroupId;
	}
	
	public void setCourseId(String courseId)
	{
		this.courseId = courseId;
	}
	
}
