package org.hbs.sg.model.concern;

import java.util.Set;

import org.hbs.admin.model.ICommonBeanFields;
import org.hbs.admin.model.ICountryBase;
import org.hbs.admin.model.IProducersBase;
import org.hbs.admin.model.IUploadImageOrDocuments;
import org.hbs.admin.model.IUsers;
import org.hbs.util.EBusinessKey;

public interface IOrganisation extends ICommonBeanFields, ICountryBase, IProducersBase, EBusinessKey
{
	public Set<IOrganisationAddress> getAddressList();
	
	public Set<IOrganisationAttachments> getAttachmentList();
	
	public IOrganisationAddress getCommunicationAddress();
	
	public String getOrganisationId();
	
	public String getOrganisationName();
	
	public String getOrganisationType();
	
	public IUploadImageOrDocuments getProfileImage();
	
	public Set<IUsers> getUsersList();
	
	public void setAddressList(Set<IOrganisationAddress> addresses);
	
	public void setAttachmentList(Set<IOrganisationAttachments> attachmentList);
	
	public void setCommunicationAddress(IOrganisationAddress communicationAddress);
	
	public void setOrganisationId(String organisationId);
	
	public void setOrganisationName(String organisationName);
	
	public void setOrganisationType(String organisationType);
	
	public void setProfileImage(IUploadImageOrDocuments profileImage);
	
	public void setUsersList(Set<IUsers> usersList);
	
}