package org.hbs.sg.model.exam;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hbs.sg.model.accessors.ConsumerAssessment;
import org.hbs.sg.model.accessors.IConsumerAssessment;

@Entity
@Table(name = "allocatedquestions")
public class AllocatedQuestions implements IAllocatedQuestions
{
	private static final long	serialVersionUID	= 6445961246240671922L;
	
	private String				answerId;
	private int					autoId;
	private IConsumerAssessment	consumerAssessment;
	private boolean				partialAnswer		= false;
	private IAssessmentQuestion	question;
	private boolean				unanswered			= false;
	
	public AllocatedQuestions()
	{
		super();
	}
	
	public AllocatedQuestions(IConsumerAssessment consumerAssessment, IAssessmentQuestion question)
	{
		super();
		this.consumerAssessment = consumerAssessment;
		this.question = question;
	}
	
	public AllocatedQuestions(String answerId, int autoId, IConsumerAssessment consumerAssessment, boolean unanswered)
	{
		super();
		this.answerId = answerId;
		this.autoId = autoId;
		this.consumerAssessment = consumerAssessment;
		this.unanswered = unanswered;
	}
	
	@Override
	@Column(name = "answerId")
	public String getAnswerId()
	{
		return answerId;
	}
	
	@Override
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "autoId")
	public int getAutoId()
	{
		return autoId;
	}
	
	@Override
	@ManyToOne(targetEntity = ConsumerAssessment.class)
	@JoinColumn(name = "consumerExamId", nullable = false)
	public IConsumerAssessment getConsumerAssessment()
	{
		return consumerAssessment;
	}
	
	@Override
	@ManyToOne(targetEntity = AssessmentQuestion.class)
	@JoinColumn(name = "questionId", nullable = false)
	public IAssessmentQuestion getQuestion()
	{
		return question;
	}
	
	@Transient
	public boolean isPartialAnswer()
	{
		return partialAnswer;
	}
	
	@Override
	@Column(name = "unanswered")
	public boolean isUnanswered()
	{
		return unanswered;
	}
	
	@Override
	public void setAnswerId(String answerId)
	{
		this.answerId = answerId;
	}
	
	@Override
	public void setAutoId(int autoId)
	{
		this.autoId = autoId;
	}
	
	@Override
	public void setConsumerAssessment(IConsumerAssessment consumerAssessment)
	{
		this.consumerAssessment = consumerAssessment;
	}
	
	public void setPartialAnswer(boolean partialAnswer)
	{
		this.partialAnswer = partialAnswer;
	}
	
	public void setQuestion(IAssessmentQuestion question)
	{
		this.question = question;
	}
	
	@Override
	public void setUnanswered(boolean unanswered)
	{
		this.unanswered = unanswered;
	}
	
}
