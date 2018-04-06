package org.hbs.admin.model;

import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;

import org.hbs.util.IConstProperty;

@MappedSuperclass
public abstract class CommonBeanFields implements ICommonBeanFields, IConstProperty
{
	private static final long	serialVersionUID		= -4784531727752023870L;
	
	protected Timestamp			createdDate;
	
	protected String			createdDateByTimeZone	= "";
	
	protected IUsers			createdUser;
	
	protected Timestamp			modifiedDate;
	
	protected String			modifiedDateByTimeZone	= "";
	
	protected IUsers			modifiedUser;
	
	protected Boolean			status					= true;
	
	public CommonBeanFields()
	{
		super();
	}
	
	public CommonBeanFields(IUsers createdUser, Timestamp createdDate, IUsers modifiedUser, Timestamp modifiedDate, Boolean status)
	{
		super();
		this.createdUser = createdUser;
		this.createdDate = createdDate;
		this.modifiedUser = modifiedUser;
		this.modifiedDate = modifiedDate;
		this.status = status;
	}
	
	@Column(name = "createdDate")
	public Timestamp getCreatedDate()
	{
		return createdDate;
	}
	
	@ManyToOne(targetEntity = Users.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "createdBy", nullable = true)
	public IUsers getCreatedUser()
	{
		return createdUser;
	}
	
	@Column(name = "modifiedDate")
	public Timestamp getModifiedDate()
	{
		return modifiedDate;
	}
	
	@ManyToOne(targetEntity = Users.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "modifiedBy", nullable = true)
	public IUsers getModifiedUser()
	{
		return modifiedUser;
	}
	
	@Column(name = "status")
	public Boolean getStatus()
	{
		return status;
	}
	
	public void setCreatedDate(Timestamp createdDate)
	{
		this.createdDate = createdDate;
	}
	
	public void setCreatedDateByTimeZone(String createdDateByTimeZone)
	{
		this.createdDateByTimeZone = createdDateByTimeZone;
	}
	
	public void setCreatedUser(IUsers createdUser)
	{
		this.createdUser = createdUser;
	}
	
	public void setModifiedDate(Timestamp modifiedDate)
	{
		this.modifiedDate = modifiedDate;
	}
	
	public void setModifiedDateByTimeZone(String modifiedDateByTimeZone)
	{
		this.modifiedDateByTimeZone = modifiedDateByTimeZone;
	}
	
	public void setModifiedUser(IUsers modifiedUser)
	{
		this.modifiedUser = modifiedUser;
	}
	
	public void setStatus(Boolean status)
	{
		this.status = status;
	}
	
}
