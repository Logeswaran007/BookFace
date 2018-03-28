package org.hbs.edutel.model;

import org.hbs.util.ICRUDBean;

public interface IAuthKeyGenConsumer extends ICRUDBean
{
	
	public IAuthKeyGen getAuthKeyGen();
	
	public IEduTelConsumer getUsers();
	
	public void setAuthKeyGen(IAuthKeyGen authKeyGen);
	
	public void setUsers(IEduTelConsumer users);
	
}