package org.hbs.sg.model.accessors;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.hbs.sg.model.exam.IAssessment;

@Entity
@Table(name = "consumerassessmentgroup")
public class ConsumerAssessmentGroup implements IConsumerAssessmentGroup
{
	
	private static final long	serialVersionUID	= 5636567271253869102L;
	private IAssessment			assessment;
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
	
	public IAssessment getAssessment()
	{
		return assessment;
	}
	
	public void setAssessment(IAssessment assessment)
	{
		this.assessment = assessment;
	}
	
	public IConsumerAssessment getConsumerAssessment()
	{
		return consumerAssessment;
	}
	
	public void setConsumerAssessment(IConsumerAssessment consumerAssessment)
	{
		this.consumerAssessment = consumerAssessment;
	}
	
}
