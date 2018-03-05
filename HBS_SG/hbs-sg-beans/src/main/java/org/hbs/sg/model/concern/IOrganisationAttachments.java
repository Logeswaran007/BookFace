package org.hbs.sg.model.concern;

import org.hbs.admin.model.ICommonBeanFields;
import org.hbs.admin.model.ICommonFileUpload;
import org.hbs.util.dao.ICRUDBean;

public interface IOrganisationAttachments extends ICommonFileUpload, ICommonBeanFields, ICRUDBean
{
	
	public IOrganisation getOrganisation();
	
	public void setOrganisation(IOrganisation organisation);
	
}
