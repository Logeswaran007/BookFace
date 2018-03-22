package org.hbs.admin.model;

import org.hbs.util.dao.ICRUDBean;

/**
 * UserRoles entity. @author MyEclipse Persistence Tools
 */

public interface IPortletsUsersRoles extends ICRUDBean
{
	public IPortlets getPortlets();
	
	public int getPtAutoId();
	
	public Boolean getStatus();
	
	public void setPortlets(IPortlets portlets);
	
	public void setPtAutoId(int ptAutoId);
	
	public void setStatus(Boolean status);
}