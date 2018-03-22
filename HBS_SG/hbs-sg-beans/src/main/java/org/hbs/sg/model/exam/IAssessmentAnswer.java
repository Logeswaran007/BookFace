package org.hbs.sg.model.exam;

import org.hbs.admin.model.IUploadImageOrDocuments;
import org.hbs.util.dao.ICRUDBean;

public interface IAssessmentAnswer extends IUploadImageOrDocuments, ICRUDBean
{
	public String getAnswerId();
	
	public IAssessmentQuestion getAssessmentQuestion();
	
	public String getTextAnswer();
	
	public void setAnswerId(String answerId);
	
	public void setAssessmentQuestion(IAssessmentQuestion assessmentQuestion);
	
	public void setTextAnswer(String answer);
	
}