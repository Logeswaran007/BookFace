package org.hbs.sg.model.concern;

import org.hbs.admin.model.ICommonBeanFields;
import org.hbs.admin.model.ICommonFileUpload;

public interface IOrganisationAttachments extends ICommonFileUpload, ICommonBeanFields
{
	
	public IOrganisation getOrganisation();
	
	public void setOrganisation(IOrganisation organisation);
	
}
