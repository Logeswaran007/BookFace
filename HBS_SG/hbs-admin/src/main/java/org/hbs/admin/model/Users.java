package org.hbs.admin.model;

import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "users")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "usUsersType", discriminatorType = DiscriminatorType.STRING)
public class Users extends CommonUsers
{
	private static final long serialVersionUID = 8724774711417136041L;
	
	public Users()
	{
		super();
		this.usEmployeeId = getBusinessKey();
	}
	
	public Users(EUserType userType)
	{
		super();
		this.usEmployeeId = getBusinessKey();
		this.usUsersType = userType.name();
	}
	
	@Transient
	public String getBusinessKey(String... combination)
	{
		return EKey.Auto("USR");
	}
	
	@Transient
	public EUserType getUserType()
	{
		return EUserType.valueOf(this.usUsersType);
	}
	
}
