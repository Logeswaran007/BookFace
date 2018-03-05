package org.hbs.sg.model.exam;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hbs.admin.model.CommonFileUploadBase;
import org.hbs.sg.model.exam.Assessment.EAssessmentType;

@Entity
@Table(name = "assessmentquestion")
public class AssessmentQuestion extends CommonFileUploadBase implements IAssessmentQuestion
{
	
	private static final long				serialVersionUID		= 2530625237472598780L;
	protected Set<IAssessmentAnswer>		answers					= new LinkedHashSet<IAssessmentAnswer>(0);
	protected String						askedYears;
	protected IAssessment					assessment;
	protected IAssessmentCorrectAnswer		correctAnswer;
	protected Set<IAssessmentExplanation>	explanations			= new LinkedHashSet<IAssessmentExplanation>(0);
	protected Double						negativeMarkPerQuestion	= 0.0;
	protected String						questionId;
	protected String						textQuestion;
	protected String						weightage				= EWeightage.Default.name();
	
	public AssessmentQuestion()
	{
		super();
		this.uploadDocumentForType = EAssessmentType.Aptitude.name();
	}
	
	public AssessmentQuestion(Set<IAssessmentAnswer> answers, String askedYears, IAssessment assessment, IAssessmentCorrectAnswer correctAnswer, Set<IAssessmentExplanation> explanations,
			Double negativeMarkPerQuestion, String questionId, String textQuestion, String weightage)
	{
		super();
		this.answers = answers;
		this.askedYears = askedYears;
		this.assessment = assessment;
		this.correctAnswer = correctAnswer;
		this.explanations = explanations;
		this.negativeMarkPerQuestion = negativeMarkPerQuestion;
		this.questionId = questionId;
		this.textQuestion = textQuestion;
		this.weightage = weightage;
		this.uploadDocumentForType = EAssessmentType.Aptitude.name();
	}
	
	@Override
	@OneToMany(targetEntity = AssessmentAnswer.class, fetch = FetchType.EAGER, mappedBy = "assessmentQuestion")
	public Set<IAssessmentAnswer> getAnswers()
	{
		return answers;
	}
	
	@Override
	@Column(name = "askedYears")
	public String getAskedYears()
	{
		return askedYears;
	}
	
	@Override
	@ManyToOne(targetEntity = Assessment.class)
	@JoinColumn(name = "assessmentId", nullable = false)
	public IAssessment getAssessment()
	{
		return assessment;
	}
	
	@Override
	@Embedded
	public IAssessmentCorrectAnswer getCorrectAnswer()
	{
		return correctAnswer;
	}
	
	@Override
	@OneToMany(targetEntity = AssessmentExplanation.class, fetch = FetchType.EAGER, mappedBy = "assessmentQuestion")
	public Set<IAssessmentExplanation> getExplanations()
	{
		return explanations;
	}
	
	@Override
	@Column(name = "negativeMarkPerQuestion")
	public Double getNegativeMarkPerQuestion()
	{
		return negativeMarkPerQuestion;
	}
	
	@Id
	@Column(name = "questionId")
	public String getQuestionId()
	{
		return questionId;
	}
	
	@Override
	@Column(name = "textQuestion")
	public String getTextQuestion()
	{
		return textQuestion;
	}
	
	@Override
	@Column(name = "weightage")
	public String getWeightage()
	{
		return weightage;
	}
	
	@Override
	public void setAnswers(Set<IAssessmentAnswer> answers)
	{
		this.answers = answers;
	}
	
	@Override
	public void setAskedYears(String askedYears)
	{
		this.askedYears = askedYears;
	}
	
	@Override
	public void setAssessment(IAssessment assessment)
	{
		this.assessment = assessment;
	}
	
	@Override
	public void setCorrectAnswer(IAssessmentCorrectAnswer correctAnswer)
	{
		this.correctAnswer = correctAnswer;
	}
	
	@Override
	public void setExplanations(Set<IAssessmentExplanation> explanations)
	{
		this.explanations = explanations;
	}
	
	@Override
	public void setNegativeMarkPerQuestion(Double negativeMarkPerQuestion)
	{
		this.negativeMarkPerQuestion = negativeMarkPerQuestion;
	}
	
	public void setQuestionId(String questionId)
	{
		this.questionId = questionId;
	}
	
	@Override
	public void setTextQuestion(String textQuestion)
	{
		this.textQuestion = textQuestion;
	}
	
	public void setWeightage(String weightage)
	{
		this.weightage = weightage;
	}
	
}