package org.hbs.sg.web.controller;

import java.io.Serializable;

import org.hbs.sg.model.exam.Assessment;

public class AssessmentForm implements Serializable
{

	private static final long	serialVersionUID	= -2295096847701279059L;

	Assessment					assessment			= new Assessment();
	String						courseGroupId;
	String						courseId;
	String						chapterId;
	String						assessmentName;

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

	public void setAssessment(Assessment assessment)
	{
		this.assessment = assessment;
	}

	public String getCourseGroupId()
	{
		return courseGroupId;
	}

	public void setCourseGroupId(String courseGroupId)
	{
		this.courseGroupId = courseGroupId;
	}

	public String getCourseId()
	{
		return courseId;
	}

	public void setCourseId(String courseId)
	{
		this.courseId = courseId;
	}

	public String getChapterId()
	{
		return chapterId;
	}

	public void setChapterId(String chapterId)
	{
		this.chapterId = chapterId;
	}

	public String getAssessmentName()
	{
		return assessmentName;
	}

	public void setAssessmentName(String assessmentName)
	{
		this.assessmentName = assessmentName;
	}

}
