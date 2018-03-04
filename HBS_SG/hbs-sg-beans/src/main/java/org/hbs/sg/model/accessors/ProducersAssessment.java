package org.hbs.sg.model.accessors;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hbs.admin.model.IProducers;
import org.hbs.admin.model.Producers;
import org.hbs.sg.model.exam.Assessment;
import org.hbs.sg.model.exam.IAssessment;

@Entity
@Table(name = "producersassessment")
public class ProducersAssessment implements IProducersAssessment
{
	
	private static final long	serialVersionUID	= 979577296031243861L;
	
	protected IAssessment		assessment;
	
	protected int				autoId;
	
	protected IProducers		producer;
	
	public ProducersAssessment()
	{
		super();
	}
	
	public ProducersAssessment(int autoId, IProducers producer, IAssessment assessment)
	{
		super();
		this.autoId = autoId;
		this.producer = producer;
		this.assessment = assessment;
	}
	
	@Override
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
	
	@Override
	@ManyToOne(targetEntity = Producers.class)
	@JoinColumn(name = "producerId", nullable = false)
	public IProducers getProducer()
	{
		return producer;
	}
	
	public void setAssessment(IAssessment assessment)
	{
		this.assessment = assessment;
	}
	
	public void setAutoId(int autoId)
	{
		this.autoId = autoId;
	}
	
	public void setProducer(IProducers producer)
	{
		this.producer = producer;
	}
	
}
