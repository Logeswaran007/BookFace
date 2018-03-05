package org.hbs.sg.model.exam;

import org.hbs.util.dao.ICRUDBean;

public interface IAssessmentPatternInfo extends ICRUDBean
{
	
	public int getAutoId();
	
	public String getInfoName();
	
	public IAssessmentPattern getPattern();
	
	public String getPercentage();
	
	public String getWeightage();
	
	public boolean isStatus();
	
	public void setAutoId(int autoId);
	
	public void setInfoName(String infoName);
	
	public void setPattern(IAssessmentPattern pattern);
	
	public void setPercentage(String percentage);
	
	public void setStatus(boolean status);
	
	public void setWeightage(String weightage);
	
}