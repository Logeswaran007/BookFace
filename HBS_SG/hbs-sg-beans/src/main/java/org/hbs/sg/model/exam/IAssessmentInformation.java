package org.hbs.sg.model.exam;

import java.io.Serializable;

public interface IAssessmentInformation extends Serializable
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