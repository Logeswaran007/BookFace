package org.hbs.sg.model.exam;

import java.io.Serializable;

import org.hbs.sg.model.accessors.IConsumerAssessment;

public interface IAllocatedQuestions extends Serializable
{

	public String getAnswerId();

	public int getAutoId();

	public IConsumerAssessment getConsumerAssessment();

	public boolean isUnanswered();

	public void setAnswerId(String answerId);

	public void setAutoId(int autoId);

	public void setConsumerAssessment(IConsumerAssessment consumerAssessment);

	public void setUnanswered(boolean unanswered);

	public IAssessmentQuestion getQuestion();

	public void setQuestion(IAssessmentQuestion question);

	public boolean isPartialAnswer();

	public void setPartialAnswer(boolean partialAnswer);

}