package org.hbs.sg.model.exam;

import org.hbs.util.ICRUDBean;

public interface IAssessmentPatternInfo extends ICRUDBean
{
	
	public int getAutoId();
	
	public IAssessmentPattern getPattern();
	
	public int getPercentage();
	
	public String getWeightage();
	
	public boolean isStatus();
	
	public void setAutoId(int autoId);
	
	public void setPattern(IAssessmentPattern pattern);
	
	public void setPercentage(int percentage);
	
	public void setStatus(boolean status);
	
	public void setWeightage(String weightage);
	
	public int trackQuestionCalibrate(String assessmentId, long groupCount);
	
	public QuestionCalibrate initialise(String assessmentId);
	
}