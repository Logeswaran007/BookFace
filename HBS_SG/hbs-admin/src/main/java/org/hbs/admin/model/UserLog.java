package org.hbs.admin.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hbs.util.CommonValidator;
import org.hbs.util.dao.ICRUDBean;

@Entity
@Table(name = "userlog")
public class UserLog implements IUserLog, ICRUDBean
{
	private static final long	serialVersionUID	= -5336666543176665572L;
	
	private int					ulAutoId;
	
	private boolean				ulFetchBlock		= false;
	
	private String				ulIpaddress;
	
	private Timestamp			ulUserLoginTime;
	
	private Timestamp			ulUserLogoutTime;
	
	private IUsers				users;
	
	public UserLog()
	{
		super();
	}
	
	public UserLog(Integer ulAutoId, IUsers users, Timestamp ulUserLoginTime, Timestamp ulUserLogoutTime, String ulIpaddress, boolean ulFetchBlock)
	{
		super();
		this.ulAutoId = ulAutoId;
		this.users = users;
		this.ulUserLoginTime = ulUserLoginTime;
		this.ulUserLogoutTime = ulUserLogoutTime;
		this.ulIpaddress = ulIpaddress;
		this.ulFetchBlock = ulFetchBlock;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ulAutoId")
	public Integer getUlAutoId()
	{
		return this.ulAutoId;
	}
	
	@Column(name = "ulIpaddress")
	public String getUlIpaddress()
	{
		return this.ulIpaddress;
	}
	
	@Column(name = "ulUserLoginTime")
	public Timestamp getUlUserLoginTime()
	{
		return this.ulUserLoginTime;
	}
	
	@Column(name = "ulUserLogoutTime")
	public Timestamp getUlUserLogoutTime()
	{
		return this.ulUserLogoutTime;
	}
	
	@ManyToOne(targetEntity = Users.class, fetch = FetchType.LAZY)
	@JoinColumn(name = "usEmployeeId", nullable = false)
	public IUsers getUsers()
	{
		return this.users;
	}
	
	@Column(name = "ulFetchBlock")
	public boolean isUlFetchBlock()
	{
		return ulFetchBlock;
	}
	
	public void setUlAutoId(int ulAutoId)
	{
		this.ulAutoId = ulAutoId;
	}
	
	public void setUlFetchBlock(boolean ulFetchBlock)
	{
		this.ulFetchBlock = ulFetchBlock;
	}
	
	public void setUlIpaddress(String ulIpaddress)
	{
		this.ulIpaddress = ulIpaddress;
	}
	
	public void setUlUserLoginTime(Timestamp ulUserLoginTime)
	{
		this.ulUserLoginTime = ulUserLoginTime;
	}
	
	public void setUlUserLogoutTime(Timestamp ulUserLogoutTime)
	{
		this.ulUserLogoutTime = ulUserLogoutTime;
		if (CommonValidator.isNotNullNotEmpty(ulUserLogoutTime))
			this.ulFetchBlock = true;
	}
	
	public void setUsers(IUsers users)
	{
		this.users = users;
	}
	
}
