package org.hbs.sg.model.exam;

import org.hbs.admin.model.IUploadImageOrDocuments;
import org.hbs.util.ICRUDBean;

public interface IAssessmentExplanation extends IUploadImageOrDocuments, ICRUDBean
{
	public IAssessmentQuestion getAssessmentQuestion();
	
	public String getExplanation();
	
	public String getExplanationId();
	
	public void setAssessmentQuestion(IAssessmentQuestion assessmentQuestion);
	
	public void setExplanation(String explanation);
	
	public void setExplanationId(String explanationId);
	
}