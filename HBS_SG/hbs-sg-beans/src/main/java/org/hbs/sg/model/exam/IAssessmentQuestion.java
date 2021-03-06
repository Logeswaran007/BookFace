package org.hbs.sg.model.exam;

import java.util.Set;

import org.hbs.admin.model.IUploadImageOrDocuments;
import org.hbs.util.EnumInterface;
import org.hbs.util.ICRUDBean;

public interface IAssessmentQuestion extends IUploadImageOrDocuments, ICRUDBean
{
	public enum EWeightage implements EnumInterface
	{
		High, Low, Medium;
	}
	
	public boolean isAnswerMode();
	
	public void setAnswerMode(boolean answerMode);
	
	public Set<IAssessmentAnswer> getAnswers();
	
	public String getAskedYears();
	
	public IAssessment getAssessment();
	
	public AssessmentCorrectAnswer getCorrectAnswer();
	
	public Set<IAssessmentExplanation> getExplanations();
	
	public Double getNegativeMarkPerQuestion();
	
	public String getQuestionId();
	
	public String getTextQuestion();
	
	public String getWeightage();
	
	public void setAnswers(Set<IAssessmentAnswer> answers);
	
	public void setAskedYears(String askedYears);
	
	public void setAssessment(IAssessment assessment);
	
	public void setCorrectAnswer(AssessmentCorrectAnswer correctAnswer);
	
	public void setExplanations(Set<IAssessmentExplanation> explanations);
	
	public void setNegativeMarkPerQuestion(Double negativeMarkPerQuestion);
	
	public void setQuestionId(String questionId);
	
	public void setTextQuestion(String textQuestion);
	
	public void setWeightage(String weightage);
	
}