package org.hbs.edutel.model;

import java.util.Set;

import org.hbs.sg.model.accessors.IConsumerUser;

public interface IEduTelConsumer extends IConsumerUser
{
	public Set<IAuthKeyGenConsumer> getAuthKeyGenConsumerList();
	
	public void setAuthKeyGenConsumerList(Set<IAuthKeyGenConsumer> authKeyGenList);
	
}