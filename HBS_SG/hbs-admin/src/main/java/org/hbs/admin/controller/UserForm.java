package org.hbs.admin.controller;

import java.io.Serializable;

import org.hbs.admin.IAdminPath.EUserTemplate;
import org.hbs.admin.model.IAddress.AddressType;
import org.hbs.admin.model.IRoles.ERole;
import org.hbs.admin.model.IUsers.EUserType;
import org.hbs.admin.model.Producers;
import org.hbs.admin.model.Users;
import org.hbs.admin.model.UsersAddress;
import org.hbs.util.CommonValidator;

public class UserForm implements Serializable
{
	
	private static final long	serialVersionUID	= -2618631395817654936L;
	
	UsersAddress				communication		= new UsersAddress(AddressType.CommunicationAddress);
	boolean						isAdminEmployee		= false;
	UsersAddress				permanent			= new UsersAddress(AddressType.PermanentAddress);
	UsersAddress				present				= new UsersAddress(AddressType.PresentAddress);
	Users						users;
	
	public UserForm(Producers producer, EUserType userType) throws InstantiationException, IllegalAccessException
	{
		super();
		this.users = Users.createUserInstance(producer, userType);
		this.communication = new UsersAddress(AddressType.CommunicationAddress);
		this.present = new UsersAddress(AddressType.PresentAddress);
		this.permanent = new UsersAddress(AddressType.PermanentAddress);
	}
	
	public String[] getBaseRoles()
	{
		if (CommonValidator.isEqual(users.getUsUsersType(), EUserType.Consumer))
		{
			return new String[] { ERole.Consumer.name() };
		}
		else if (CommonValidator.isEqual(users.getUsUsersType(), EUserType.Producer))
		{
			return new String[] { ERole.Producer.name(), ERole.Admin.name() };
		}
		else if (CommonValidator.isEqual(users.getUsUsersType(), EUserType.Employee))
		{
			if (isAdminEmployee)
				return new String[] { ERole.Employee.name(), ERole.Admin.name() };
			else
				return new String[] { ERole.Employee.name() };
		}
		else
			return null;
	}
	
	public UsersAddress getCommunication()
	{
		return communication;
	}
	
	public UsersAddress getPermanent()
	{
		return permanent;
	}
	
	public UsersAddress getPresent()
	{
		return present;
	}
	
	public EUserTemplate getTemplate()
	{
		if (CommonValidator.isEqual(users.getUsUsersType(), EUserType.Consumer))
			return EUserTemplate.User_Create_Consumer;
		else if (CommonValidator.isEqual(users.getUsUsersType(), EUserType.Producer))
			return EUserTemplate.User_Create_Producer;
		else if (CommonValidator.isEqual(users.getUsUsersType(), EUserType.Employee))
			return EUserTemplate.User_Create_Employee;
		else
			return null;
	}
	
	public Users getUsers()
	{
		return users;
	}
	
	public void setCommunication(UsersAddress communication)
	{
		this.communication = communication;
	}
	
	public void setPermanent(UsersAddress permanent)
	{
		this.permanent = permanent;
	}
	
	public void setPresent(UsersAddress present)
	{
		this.present = present;
	}
	
	public void setUsers(Users users)
	{
		this.users = users;
	}
	
}
