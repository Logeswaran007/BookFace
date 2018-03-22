package org.hbs.admin.model;

import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public abstract class ProducersBase extends CommonBeanFields implements IProducersBase
{
	
	private static final long	serialVersionUID	= -2975176593095463958L;
	
	protected IProducers		producer;
	
	public ProducersBase()
	{
		super();
	}
	
	@ManyToOne(targetEntity = Producers.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "producerId")
	public IProducers getProducer()
	{
		return producer;
	}
	
	@Override
	public void setProducer(IProducers producer)
	{
		this.producer = producer;
	}
}