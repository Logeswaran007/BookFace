package org.hbs.admin.model;

/**
 * UserRoles entity. @author MyEclipse Persistence Tools
 */

public interface IPortletsUsersRoles extends java.io.Serializable
{
	public int getPtAutoId();

	public IPortlets getPortlets();

	public void setPtAutoId(int ptAutoId);

	public void setPortlets(IPortlets portlets);

	public Boolean getStatus();

	public void setStatus(Boolean status);
}