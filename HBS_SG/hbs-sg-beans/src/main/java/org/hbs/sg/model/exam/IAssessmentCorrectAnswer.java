package org.hbs.sg.model.exam;

import java.util.List;

import org.hbs.util.dao.ICRUDBean;

public interface IAssessmentCorrectAnswer extends ICRUDBean
{
	
	public List<String> correctList();
	
	public String getCorrectAnswer1();
	
	public String getCorrectAnswer2();
	
	public String getCorrectAnswer3();
	
	public String getCorrectAnswer4();
	
	public Double getMarkPerQuestion();
	
	public void setCorrectAnswer1(String correctAnswer1);
	
	public void setCorrectAnswer2(String correctAnswer2);
	
	public void setCorrectAnswer3(String correctAnswer3);
	
	public void setCorrectAnswer4(String correctAnswer4);
	
	public void setMarkPerQuestion(Double markPerQuestion);
	
}