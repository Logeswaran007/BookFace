package org.hbs.sg.model.exam;

import java.io.Serializable;

import org.hbs.sg.model.accessors.IConsumerAssessment;

public interface IAllocatedQuestions extends Serializable
{
	
	public String getAnswerId();
	
	public int getAutoId();
	
	public IConsumerAssessment getConsumerAssessment();
	
	public IAssessmentQuestion getQuestion();
	
	public boolean isPartialAnswer();
	
	public boolean isUnanswered();
	
	public void setAnswerId(String answerId);
	
	public void setAutoId(int autoId);
	
	public void setConsumerAssessment(IConsumerAssessment consumerAssessment);
	
	public void setPartialAnswer(boolean partialAnswer);
	
	public void setQuestion(IAssessmentQuestion question);
	
	public void setUnanswered(boolean unanswered);
	
}