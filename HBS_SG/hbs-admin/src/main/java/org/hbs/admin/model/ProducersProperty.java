package org.hbs.admin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "producersproperty")
public class ProducersProperty implements IProducersProperty
{
	
	private static final long	serialVersionUID	= -4704236838326830638L;
	private int					autoId;
	private String				enumKey;
	private String				group;
	private IProducers			producer;
	private String				property;
	private boolean				status				= true;
	private String				value;
	
	public ProducersProperty()
	{
		super();
	}
	
	public ProducersProperty(int autoId, String enumKey, String group, String property, boolean status, String value)
	{
		super();
		this.autoId = autoId;
		this.enumKey = enumKey;
		this.group = group;
		this.property = property;
		this.status = status;
		this.value = value;
	}
	
	@Id
	@Column(name = "autoId")
	public int getAutoId()
	{
		return autoId;
	}
	
	@Column(name = "enumKey")
	public String getEnumKey()
	{
		return enumKey;
	}
	
	@Column(name = "group")
	public String getGroup()
	{
		return group;
	}
	
	@ManyToOne(targetEntity = Producers.class)
	@JoinColumn(name = "producerId")
	public IProducers getProducer()
	{
		return producer;
	}
	
	@Column(name = "property")
	public String getProperty()
	{
		return property;
	}
	
	@Column(name = "value")
	public String getValue()
	{
		return value;
	}
	
	@Column(name = "status")
	public boolean isStatus()
	{
		return status;
	}
	
	public void setAutoId(int autoId)
	{
		this.autoId = autoId;
	}
	
	public void setEnumKey(String enumKey)
	{
		this.enumKey = enumKey;
	}
	
	public void setGroup(String group)
	{
		this.group = group;
	}
	
	@Override
	public void setProducer(IProducers producer)
	{
		this.producer = producer;
	}
	
	public void setProperty(String property)
	{
		this.property = property;
	}
	
	public void setStatus(boolean status)
	{
		this.status = status;
	}
	
	public void setValue(String value)
	{
		this.value = value;
	}
	
}
