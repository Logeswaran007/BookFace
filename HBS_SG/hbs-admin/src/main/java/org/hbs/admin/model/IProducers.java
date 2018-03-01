package org.hbs.admin.model;

import java.sql.Timestamp;
import java.util.Set;

import org.hbs.util.EnumInterface;

public interface IProducers extends ICommonBeanFields
{
	public String getActiveProducerId();

	public IProducersAttachments getAttachment(EnumInterface documentType);

	public String getDocumentHandlerDownloadBean();

	public String getDocumentHandlerUploadBean();

	public String getDomainContext();

	public Set<IProducersAttachments> getProducerAttachmentList();

	public String getProducerId();

	public String getProducerName();

	public Timestamp getPwdExpiryDays();

	public String getRepositoryBasePath();

	public IUsers getUsers();

	public String getVirtualBasePath();

	public void setActiveProducerId(String producerId);

	public void setDocumentHandlerDownloadBean(String documentHandlerDownloadBean);

	public void setDocumentHandlerUploadBean(String documentHandlerUploadBean);

	public void setDomainContext(String domainContext);

	public void setProducerAttachmentList(Set<IProducersAttachments> producerAttachmentList);

	public void setProducerId(String producerId);

	public void setProducerName(String producerName);

	public void setPwdExpiryDays(Timestamp csPwdExpiryDays);

	public void setRepositoryBasePath(String repositoryBasePath);

	public void setUsers(IUsers users);

	public void setVirtualBasePath(String virtualBasePath);
}
