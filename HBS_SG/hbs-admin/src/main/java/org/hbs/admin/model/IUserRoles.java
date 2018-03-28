package org.hbs.admin.model;

import java.util.Set;

import org.hbs.util.ICRUDBean;

/**
 * UserRoles entity. @author MyEclipse Persistence Tools
 */

public interface IUserRoles extends ICRUDBean
{
	public IRoles getRoles();
	
	public int getUrAutoId();
	
	public Set<IPortletsUsersRoles> getUserRolePortlets();
	
	public IUsers getUsers();
	
	public void setRoles(IRoles roles);
	
	public void setUrAutoId(int urAutoId);
	
	public void setUserRolePortlets(Set<IPortletsUsersRoles> userRolePortlets);
	
	public void setUsers(IUsers users);
}