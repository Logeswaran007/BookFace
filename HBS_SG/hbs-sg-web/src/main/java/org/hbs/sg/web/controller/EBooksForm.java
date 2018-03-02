package org.hbs.sg.web.controller;

import java.io.Serializable;

public class EBooksForm implements Serializable
{

	private static final long	serialVersionUID	= 5996681412103693724L;
	String						courseId;
	String						courseGroupId;
	String						chapterId;

	public EBooksForm()
	{
		super();

	}

	public String getCourseId()
	{
		return courseId;
	}

	public void setCourseId(String courseId)
	{
		this.courseId = courseId;
	}

	public String getCourseGroupId()
	{
		return courseGroupId;
	}

	public void setCourseGroupId(String courseGroupId)
	{
		this.courseGroupId = courseGroupId;
	}

	public String getChapterId()
	{
		return chapterId;
	}

	public void setChapterId(String chapterId)
	{
		this.chapterId = chapterId;
	}

}
