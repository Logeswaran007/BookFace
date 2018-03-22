package org.hbs.admin.model;

import org.hbs.util.dao.ICRUDBean;

public interface IUsersAttachments extends ICommonBeanFields, ICommonFileUpload, ICRUDBean
{
	public IUsers getUsers();
	
	public void setUsers(IUsers users);
	
}
