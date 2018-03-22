package org.hbs.admin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "producersattachments")
public class ProducersAttachments extends CommonFileUpload implements IProducersAttachments
{
	private static final long	serialVersionUID	= -748718055395205690L;
	
	protected int				autoId;
	
	protected String			documentDesc;
	
	protected String			documentStatus;
	
	protected IProducers		producer;
	
	public ProducersAttachments()
	{
		super();
	}
	
	public ProducersAttachments(int autoId, IProducers producer, String documentStatus, String documentDesc)
	{
		super();
		this.autoId = autoId;
		this.producer = producer;
		this.documentStatus = documentStatus;
		this.documentDesc = documentDesc;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "autoId")
	public int getAutoId()
	{
		return autoId;
	}
	
	@Column(name = "documentDesc")
	public String getDocumentDesc()
	{
		return documentDesc;
	}
	
	@Column(name = "documentStatus")
	public String getDocumentStatus()
	{
		return documentStatus;
	}
	
	@ManyToOne(targetEntity = Producers.class)
	@JoinColumn(name = "producerId", nullable = false)
	public IProducers getProducer()
	{
		return producer;
	}
	
	public void setAutoId(int autoId)
	{
		this.autoId = autoId;
	}
	
	public void setDocumentDesc(String documentDesc)
	{
		this.documentDesc = documentDesc;
	}
	
	public void setDocumentStatus(String documentStatus)
	{
		this.documentStatus = documentStatus;
	}
	
	public void setProducer(IProducers producer)
	{
		this.producer = producer;
	}
	
}
