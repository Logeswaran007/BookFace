package org.hbs.sg.model.exam;

import java.io.Serializable;

import org.hbs.admin.model.IUploadImageOrDocuments;

public interface IAssessmentAnswer extends IUploadImageOrDocuments
{
	public enum EPatternMode implements Serializable
	{
		Option, MultiOption
	}

	public String getAnswerId();

	public String getTextAnswer();

	public IAssessmentQuestion getAssessmentQuestion();

	public void setTextAnswer(String answer);

	public void setAnswerId(String answerId);

	public void setAssessmentQuestion(IAssessmentQuestion assessmentQuestion);

	public String getPatternMode();

	public void setPatternMode(String patternMode);

}