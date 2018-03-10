package org.hbs.sg.web.controller;

import java.io.Serializable;

import org.hbs.sg.model.exam.Assessment;

public class AssessmentForm implements Serializable
{
	
	private static final long	serialVersionUID	= -2295096847701279059L;
	
	Assessment					assessment			= new Assessment();
	String						assessmentName;
	String						chapterId;
	String[]					chapterIds;
	String						courseGroupId;
	String						courseId;
	
	public AssessmentForm()
	{
		super();
	}
	
	public AssessmentForm(Assessment assessment)
	{
		super();
		this.assessment = assessment;
	}
	
	public Assessment getAssessment()
	{
		return assessment;
	}
	
	public String getAssessmentName()
	{
		return assessmentName;
	}
	
	public String getChapterId()
	{
		return chapterId;
	}
	
	public String[] getChapterIds()
	{
		return chapterIds;
	}
	
	public String getCourseGroupId()
	{
		return courseGroupId;
	}
	
	public String getCourseId()
	{
		return courseId;
	}
	
	public void setAssessment(Assessment assessment)
	{
		this.assessment = assessment;
	}
	
	public void setAssessmentName(String assessmentName)
	{
		this.assessmentName = assessmentName;
	}
	
	public void setChapterId(String chapterId)
	{
		this.chapterId = chapterId;
	}
	
	public void setChapterIds(String[] chapterIds)
	{
		this.chapterIds = chapterIds;
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
