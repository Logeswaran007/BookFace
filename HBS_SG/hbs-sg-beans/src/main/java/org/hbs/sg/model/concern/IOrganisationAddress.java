package org.hbs.sg.model.concern;

import org.hbs.admin.model.IAddress;
import org.hbs.util.dao.ICRUDBean;

public interface IOrganisationAddress extends IAddress, ICRUDBean
{
	public IOrganisation getOrganisation();
	
	public Long getPhoneNo1();
	
	public String getWebsite();
	
	public void setOrganisation(IOrganisation organisation);
	
	public void setPhoneNo1(Long phoneNo1);
	
	public void setWebsite(String website);
}
