package org.hbs.admin.model;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;
import javax.persistence.Transient;

import org.hbs.util.CommonValidator;
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
	
	@Transient
	public String getCreatedDateByTimeZone()
	{
		if (CommonValidator.isNotNullNotEmpty(createdUser, createdUser.getCountry(), createdUser.getCountry().getCountry()))
		{
			DateFormat dateFormat = new SimpleDateFormat(DATE_FORMAT_DD_MMM_YYYY_HH_MM_AM_PM);
			if (CommonValidator.isNotEqual(createdUser.getCountry().getCountry(), "00") && CommonValidator.isNotEqual(createdUser.getCountry().getCountry(), "IN"))
			{
				Calendar calendar = new GregorianCalendar();
				calendar.setTimeInMillis(createdDate.getTime());
				dateFormat.setCalendar(calendar);
				dateFormat.setTimeZone(TimeZone.getTimeZone(createdUser.getCountry().getCountry()));
				createdDateByTimeZone = dateFormat != null ? dateFormat.format(calendar.getTime()) + " (" + createdUser.getCountry().getCountry() + ")" : "";
			}
			else
			{
				createdDateByTimeZone = dateFormat != null ? dateFormat.format(createdDate.getTime()) + " (" + createdUser.getCountry().getCountry() + ")" : "";
			}
			
		}
		return createdDateByTimeZone;
	}
	
	@ManyToOne(targetEntity = Users.class, cascade = CascadeType.ALL)
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
	
	@Transient
	public String getModifiedDateByTimeZone()
	{
		if (CommonValidator.isNotNullNotEmpty(modifiedUser, modifiedUser.getCountry(), modifiedUser.getCountry().getCountry()))
		{
			DateFormat dateFormat = new SimpleDateFormat(DATE_FORMAT_DD_MMM_YYYY_HH_MM_AM_PM);
			if (CommonValidator.isNotEqual(createdUser.getCountry().getCountry(), "00") && CommonValidator.isNotEqual(createdUser.getCountry().getCountry(), "IN"))
			{
				Calendar calendar = new GregorianCalendar();
				calendar.setTimeInMillis(modifiedDate.getTime());
				dateFormat.setCalendar(calendar);
				dateFormat.setTimeZone(TimeZone.getTimeZone(createdUser.getCountry().getCountry()));
				modifiedDateByTimeZone = dateFormat != null ? dateFormat.format(calendar.getTime()) + " (" + createdUser.getCountry().getCountry() + ")" : "";
			}
			else
			{
				modifiedDateByTimeZone = dateFormat != null ? dateFormat.format(createdDate.getTime()) + " (" + createdUser.getCountry().getCountry() + ")" : "";
			}
		}
		return modifiedDateByTimeZone;
	}
	
	@ManyToOne(targetEntity = Users.class) // cascade = CascadeType.ALL
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
