package org.hbs.admin.model;

import org.hbs.util.ICRUDBean;

public interface IUsersAddress extends IAddress, ICRUDBean
{
	public IUsers getUsers();
	
	public void setUsers(IUsers users);
	
}
