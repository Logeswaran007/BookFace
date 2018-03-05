package org.hbs.sg.model.exam;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hbs.admin.model.CommonFileUploadBase;

@Entity
@Table(name = "assessmentanswer")
public class AssessmentAnswer extends CommonFileUploadBase implements IAssessmentAnswer
{
	private static final long		serialVersionUID	= -6214771334313143012L;
	protected String				answerId;
	protected IAssessmentQuestion	assessmentQuestion;
	protected String				patternMode			= EPatternMode.Option.name();
	protected String				textAnswer;
	
	public AssessmentAnswer()
	{
		super();
	}
	
	public AssessmentAnswer(String textAnswer, String answerId, IAssessmentQuestion assessmentQuestion, String patternMode)
	{
		super();
		this.textAnswer = textAnswer;
		this.answerId = answerId;
		this.assessmentQuestion = assessmentQuestion;
		this.patternMode = patternMode;
	}
	
	@Id
	@Column(name = "answerId")
	public String getAnswerId()
	{
		return answerId;
	}
	
	@Override
	@ManyToOne(targetEntity = AssessmentQuestion.class)
	@JoinColumn(name = "questionId", nullable = false)
	public IAssessmentQuestion getAssessmentQuestion()
	{
		return assessmentQuestion;
	}
	
	@Override
	@Column(name = "patternMode")
	public String getPatternMode()
	{
		return patternMode;
	}
	
	@Override
	@Column(name = "textAnswer")
	public String getTextAnswer()
	{
		return textAnswer;
	}
	
	@Override
	public void setAnswerId(String answerId)
	{
		this.answerId = answerId;
	}
	
	@Override
	public void setAssessmentQuestion(IAssessmentQuestion assessmentQuestion)
	{
		this.assessmentQuestion = assessmentQuestion;
	}
	
	public void setPatternMode(String patternMode)
	{
		this.patternMode = patternMode;
	}
	
	@Override
	public void setTextAnswer(String textAnswer)
	{
		this.textAnswer = textAnswer;
	}
	
}
