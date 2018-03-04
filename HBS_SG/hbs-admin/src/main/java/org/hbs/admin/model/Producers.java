
package org.hbs.admin.model;

import java.sql.Timestamp;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hbs.util.CommonValidator;
import org.hbs.util.EBusinessKey;
import org.hbs.util.EnumInterface;
import org.hbs.util.dao.ICRUDBean;

@Entity
@Table(name = "producers")
public class Producers extends CommonBeanFields implements IProducers, EBusinessKey, ICRUDBean
{
	private static final long				serialVersionUID		= -5798203939392344587L;
	
	protected String						activeProducerId;
	
	protected String						documentHandlerDownloadBean;
	
	protected String						documentHandlerUploadBean;
	
	protected String						domainContext;
	
	protected Set<IProducersAttachments>	producerAttachmentList	= new LinkedHashSet<IProducersAttachments>(0);
	
	protected String						producerId;
	
	protected String						producerName;
	
	protected Timestamp						pwdExpiryDays;
	
	protected String						repositoryBasePath;
	
	protected IUsers						users;
	
	protected String						virtualBasePath;
	
	public Producers()
	{
		super();
		this.producerId = getBusinessKey();
	}
	
	@Transient
	public String getActiveProducerId()
	{
		return activeProducerId == null ? producerId : activeProducerId;
	}
	
	@Transient
	public IProducersAttachments getAttachment(EnumInterface documentType)
	{
		if (CommonValidator.isSetFirstNotEmpty(producerAttachmentList))
		{
			for (IProducersAttachments attachments : producerAttachmentList)
			{
				if (CommonValidator.isEqual(attachments.getUploadDocumentForType(), documentType))
					return attachments;
			}
		}
		return null;
	}
	
	@Transient
	public String getBusinessKey(String... combination)
	{
		return EKey.Auto("PRD");
	}
	
	@Column(name = "documentHandlerDownloadBean")
	public String getDocumentHandlerDownloadBean()
	{
		return documentHandlerDownloadBean;
	}
	
	@Column(name = "documentHandlerUploadBean")
	public String getDocumentHandlerUploadBean()
	{
		return documentHandlerUploadBean;
	}
	
	@Column(name = "domainContext")
	public String getDomainContext()
	{
		return domainContext;
	}
	
	@OneToMany(targetEntity = ProducersAttachments.class, fetch = FetchType.LAZY, mappedBy = "producer")
	public Set<IProducersAttachments> getProducerAttachmentList()
	{
		return producerAttachmentList;
	}
	
	@Id
	@Column(name = "producerId", nullable = false)
	public String getProducerId()
	{
		return producerId;
	}
	
	@Column(name = "producerName")
	public String getProducerName()
	{
		return producerName;
	}
	
	@Column(name = "pwdExpiryDays")
	public Timestamp getPwdExpiryDays()
	{
		return pwdExpiryDays;
	}
	
	@Column(name = "repositoryBasePath")
	public String getRepositoryBasePath()
	{
		return repositoryBasePath;
	}
	
	@ManyToOne(targetEntity = ProducerUsers.class)
	@JoinColumn(name = "usEmployeeId", nullable = false)
	public IUsers getUsers()
	{
		return users;
	}
	
	@Column(name = "virtualBasePath")
	public String getVirtualBasePath()
	{
		return CommonValidator.isNotNullNotEmpty(virtualBasePath) ? virtualBasePath : CommonValidator.isNotNullNotEmpty(domainContext) ? domainContext : "";
	}
	
	public void setActiveProducerId(String activeProducerId)
	{
		this.activeProducerId = activeProducerId;
	}
	
	public void setDocumentHandlerDownloadBean(String documentHandlerDownloadBean)
	{
		this.documentHandlerDownloadBean = documentHandlerDownloadBean;
	}
	
	public void setDocumentHandlerUploadBean(String documentHandlerUploadBean)
	{
		this.documentHandlerUploadBean = documentHandlerUploadBean;
	}
	
	public void setDomainContext(String domainContext)
	{
		this.domainContext = domainContext;
	}
	
	public void setProducerAttachmentList(Set<IProducersAttachments> producerAttachmentList)
	{
		this.producerAttachmentList = producerAttachmentList;
	}
	
	public void setProducerId(String producerId)
	{
		this.producerId = producerId;
	}
	
	public void setProducerName(String producerName)
	{
		this.producerName = producerName;
	}
	
	public void setPwdExpiryDays(Timestamp pwdExpiryDays)
	{
		this.pwdExpiryDays = pwdExpiryDays;
	}
	
	public void setRepositoryBasePath(String repositoryBasePath)
	{
		this.repositoryBasePath = repositoryBasePath;
	}
	
	public void setUsers(IUsers users)
	{
		this.users = users;
	}
	
	public void setVirtualBasePath(String virtualBasePath)
	{
		this.virtualBasePath = virtualBasePath;
	}
	
}
