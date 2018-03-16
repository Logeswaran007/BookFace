package org.hbs.sg.model.accessors;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hbs.sg.model.exam.Assessment;
import org.hbs.sg.model.exam.IAssessment;

@Entity
@Table(name = "consumerassessmentgroup")
public class ConsumerAssessmentGroup implements IConsumerAssessmentGroup
{
	
	private static final long	serialVersionUID	= 5636567271253869102L;
	private IAssessment			assessment;
	private int					autoId;
	private IConsumerAssessment	consumerAssessment;
	
	public ConsumerAssessmentGroup()
	{
		super();
	}
	
	public ConsumerAssessmentGroup(IAssessment assessment, IConsumerAssessment consumerAssessment)
	{
		super();
		this.assessment = assessment;
		this.consumerAssessment = consumerAssessment;
	}
	
	@ManyToOne(targetEntity = Assessment.class)
	@JoinColumn(name = "assessmentId", nullable = false)
	public IAssessment getAssessment()
	{
		return assessment;
	}
	
	@Id
	@Column(name = "autoId")
	public int getAutoId()
	{
		return autoId;
	}
	
	@ManyToOne(targetEntity = ConsumerAssessment.class)
	@JoinColumn(name = "consumerExamId", nullable = false)
	public IConsumerAssessment getConsumerAssessment()
	{
		return consumerAssessment;
	}
	
	public void setAssessment(IAssessment assessment)
	{
		this.assessment = assessment;
	}
	
	public void setAutoId(int autoId)
	{
		this.autoId = autoId;
	}
	
	public void setConsumerAssessment(IConsumerAssessment consumerAssessment)
	{
		this.consumerAssessment = consumerAssessment;
	}
	
}
