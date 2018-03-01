package org.hbs.admin.model;

import java.util.Set;

/**
 * UserRoles entity. @author MyEclipse Persistence Tools
 */

public interface IUserRoles extends java.io.Serializable
{
	public IRoles getRoles();

	public int getUrAutoId();

	public IUsers getUsers();

	public void setRoles(IRoles roles);

	public void setUrAutoId(int urAutoId);

	public void setUsers(IUsers users);

	public Set<IPortletsUsersRoles> getUserRolePortlets();

	public void setUserRolePortlets(Set<IPortletsUsersRoles> userRolePortlets);
}