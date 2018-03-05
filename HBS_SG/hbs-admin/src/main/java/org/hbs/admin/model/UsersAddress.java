package org.hbs.admin.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

/**
 * @author HariHaran
 */
@Entity
@Table(name = "usersaddress")
public class UsersAddress extends CommonAddress implements IUsersAddress
{
	
	private static final long	serialVersionUID	= -7174292623536679196L;
	
	protected IUsers			users;
	
	public UsersAddress()
	{
		super();
		this.addressId = getBusinessKey();
	}
	
	public UsersAddress(AddressType addressType)
	{
		super();
		this.addressId = getBusinessKey();
		this.addressType = addressType.name();
	}
	
	public UsersAddress(IUsers users)
	{
		super();
		this.addressId = getBusinessKey();
		this.users = users;
	}
	
	@Transient
	public String getBusinessKey(String... combination)
	{
		return EKey.Auto("UADD");
	}
	
	@ManyToOne(targetEntity = Users.class)
	@JoinColumn(name = "usEmployeeId", nullable = false)
	@JsonDeserialize(as = Users.class)
	public IUsers getUsers()
	{
		return users;
	}
	
	public void setUsers(IUsers users)
	{
		this.users = users;
	}
}
