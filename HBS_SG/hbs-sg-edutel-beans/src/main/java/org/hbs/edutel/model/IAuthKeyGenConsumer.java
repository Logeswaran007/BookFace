package org.hbs.edutel.model;

import java.io.Serializable;

public interface IAuthKeyGenConsumer extends Serializable
{

	public IAuthKeyGen getAuthKeyGen();

	public IEduTelConsumer getUsers();

	public void setAuthKeyGen(IAuthKeyGen authKeyGen);

	public void setUsers(IEduTelConsumer users);

}