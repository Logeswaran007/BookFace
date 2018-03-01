package org.hbs.sg.model.exam;

import org.hbs.admin.model.IUploadImageOrDocuments;

public interface IAssessmentExplanation extends IUploadImageOrDocuments
{
	public String getExplanationId();

	public void setExplanationId(String explanationId);

	public IAssessmentQuestion getAssessmentQuestion();

	public String getExplanation();

	public void setAssessmentQuestion(IAssessmentQuestion assessmentQuestion);

	public void setExplanation(String explanation);

}