package org.hbs.sg.model.exam;

import org.hbs.util.ICRUDBean;

public interface IAssessmentInformation extends ICRUDBean
{
	
	public String getAssessmentDate();
	
	public String getDuration();
	
	public boolean isBroadCast();
	
	public boolean isDateElapsed();
	
	public boolean isDateReached();
	
	public void setAssessmentDate(String assessmentDate);
	
	public void setBroadCast(boolean broadCast);
	
	public void setDateElapsed(boolean assessmentDateElapsed);
	
	public void setDateReached(boolean assessmentDateReached);
	
	public void setDuration(String assessmentDuration);
	
}