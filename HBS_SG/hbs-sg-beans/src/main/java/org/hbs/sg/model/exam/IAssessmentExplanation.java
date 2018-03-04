package org.hbs.sg.model.exam;

import org.hbs.admin.model.IUploadImageOrDocuments;

public interface IAssessmentExplanation extends IUploadImageOrDocuments
{
	public IAssessmentQuestion getAssessmentQuestion();
	
	public String getExplanation();
	
	public String getExplanationId();
	
	public void setAssessmentQuestion(IAssessmentQuestion assessmentQuestion);
	
	public void setExplanation(String explanation);
	
	public void setExplanationId(String explanationId);
	
}