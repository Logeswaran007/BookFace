package org.hbs.admin.model;

/**
 * UserRoles entity. @author MyEclipse Persistence Tools
 */

public interface IPortletsUsersRoles extends java.io.Serializable
{
	public IPortlets getPortlets();
	
	public int getPtAutoId();
	
	public Boolean getStatus();
	
	public void setPortlets(IPortlets portlets);
	
	public void setPtAutoId(int ptAutoId);
	
	public void setStatus(Boolean status);
}