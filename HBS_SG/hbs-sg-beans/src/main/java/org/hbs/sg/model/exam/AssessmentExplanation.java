package org.hbs.sg.model.exam;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hbs.admin.model.CommonFileUploadBase;
import org.hbs.util.EBusinessKey.EKey;

@Entity
@Table(name = "assessmentexplanation")
public class AssessmentExplanation extends CommonFileUploadBase implements IAssessmentExplanation
{
	private static final long		serialVersionUID	= 1303472021452590415L;
	protected IAssessmentQuestion	assessmentQuestion;
	protected String				explanation;
	protected String				explanationId;
	
	public AssessmentExplanation()
	{
		super();
	}
	public AssessmentExplanation(IAssessmentQuestion assessmentQuestion)
	{
		super();
		this.assessmentQuestion = assessmentQuestion;
		this.explanationId = getBusinessKey();
	}
	
	public AssessmentExplanation(IAssessmentQuestion assessmentQuestion, String explanation, String explanationId)
	{
		super();
		this.assessmentQuestion = assessmentQuestion;
		this.explanation = explanation;
		this.explanationId = explanationId;
	}
	
	@Override
	@ManyToOne(targetEntity = AssessmentQuestion.class, fetch = FetchType.LAZY)
	@JoinColumn(name = "questionId", nullable = false)
	public IAssessmentQuestion getAssessmentQuestion()
	{
		return assessmentQuestion;
	}
	
	@Override
	@Column(name = "explanation")
	public String getExplanation()
	{
		return explanation;
	}
	
	@Id
	@Column(name = "explanationId")
	public String getExplanationId()
	{
		return explanationId;
	}
	
	@Override
	public void setAssessmentQuestion(IAssessmentQuestion assessmentQuestion)
	{
		this.assessmentQuestion = assessmentQuestion;
	}
	
	@Override
	public void setExplanation(String explanation)
	{
		this.explanation = explanation;
	}
	
	public void setExplanationId(String explanationId)
	{
		this.explanationId = explanationId;
	}
	
	@Transient
	public String getBusinessKey(String... combination)
	{
		return EKey.Auto("ASTEXPL");
	}
}
