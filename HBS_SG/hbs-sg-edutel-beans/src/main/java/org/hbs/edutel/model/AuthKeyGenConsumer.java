package org.hbs.edutel.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hbs.util.dao.ICRUDBean;

@Entity
@Table(name = "authkeygenconsumer")
public class AuthKeyGenConsumer implements IAuthKeyGenConsumer, ICRUDBean
{
	private static final long	serialVersionUID	= 475823338531190033L;
	
	protected IAuthKeyGen		authKeyGen;
	
	protected IEduTelConsumer	users;
	
	public AuthKeyGenConsumer()
	{
	}
	
	public AuthKeyGenConsumer(IAuthKeyGen authKeyGen, IEduTelConsumer users)
	{
		super();
		this.authKeyGen = authKeyGen;
		this.users = users;
	}
	
	@ManyToOne(targetEntity = AuthKeyGen.class)
	@JoinColumn(name = "serialKey", nullable = false)
	public IAuthKeyGen getAuthKeyGen()
	{
		return authKeyGen;
	}
	
	@Id
	@ManyToOne(targetEntity = EduTelConsumer.class)
	@JoinColumn(name = "usEmployeeId", nullable = false)
	public IEduTelConsumer getUsers()
	{
		return users;
	}
	
	@Override
	public void setAuthKeyGen(IAuthKeyGen authKeyGen)
	{
		this.authKeyGen = authKeyGen;
	}
	
	@Override
	public void setUsers(IEduTelConsumer users)
	{
		this.users = users;
	}
	
}
