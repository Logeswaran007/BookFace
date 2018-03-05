package org.hbs.sg.model.exam;

import java.io.Serializable;

import org.hbs.admin.model.IUploadImageOrDocuments;
import org.hbs.util.dao.ICRUDBean;

public interface IAssessmentAnswer extends IUploadImageOrDocuments, ICRUDBean
{
	public enum EPatternMode implements Serializable
	{
		MultiOption, Option
	}
	
	public String getAnswerId();
	
	public IAssessmentQuestion getAssessmentQuestion();
	
	public String getPatternMode();
	
	public String getTextAnswer();
	
	public void setAnswerId(String answerId);
	
	public void setAssessmentQuestion(IAssessmentQuestion assessmentQuestion);
	
	public void setPatternMode(String patternMode);
	
	public void setTextAnswer(String answer);
	
}