package org.hbs.sg.model.exam;

import org.hbs.sg.model.accessors.IConsumerAssessment;
import org.hbs.util.dao.ICRUDBean;

public interface IAllocatedQuestions extends ICRUDBean
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