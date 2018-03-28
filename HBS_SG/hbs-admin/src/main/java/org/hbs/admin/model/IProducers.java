package org.hbs.admin.model;

import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

import org.hbs.util.EnumInterface;
import org.hbs.util.ICRUDBean;

public interface IProducers extends ICommonBeanFields, ICRUDBean
{
	public String getActiveProducerId();
	
	public IProducersAttachments getAttachment(EnumInterface documentType);
	
	public String getDocumentHandlerDownloadBean();
	
	public String getDocumentHandlerUploadBean();
	
	public String getDomainContext();
	
	public Set<IProducersAttachments> getProducerAttachmentList();
	
	public String getProducerId();
	
	public String getProducerName();
	
	public Set<IProducersProperty> getPropertyList();
	
	public List<IProducersProperty> getPropertyList(EnumInterface group);
	
	public IProducersProperty getProperty(EnumInterface group, String key);
	
	public Timestamp getPwdExpiryDays();
	
	public IUsers getUsers();
	
	public void setActiveProducerId(String producerId);
	
	public void setDocumentHandlerDownloadBean(String documentHandlerDownloadBean);
	
	public void setDocumentHandlerUploadBean(String documentHandlerUploadBean);
	
	public void setDomainContext(String domainContext);
	
	public void setProducerAttachmentList(Set<IProducersAttachments> producerAttachmentList);
	
	public void setProducerId(String producerId);
	
	public void setProducerName(String producerName);
	
	public void setPropertyList(Set<IProducersProperty> propertyList);
	
	public void setPwdExpiryDays(Timestamp csPwdExpiryDays);
	
	public void setUsers(IUsers users);
	
}
