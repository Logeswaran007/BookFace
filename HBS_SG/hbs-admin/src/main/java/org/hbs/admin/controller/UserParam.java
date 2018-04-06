package org.hbs.admin.controller;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUserStatus;
import org.hbs.admin.model.IUsers.EUserType;
import org.hbs.util.Param;

public class UserParam extends Param
{
	
	private static final long	serialVersionUID	= 2950016171013727276L;
	public String				action;
	public String				confirmPassword;
	public String				email;
	public EUserStatus			eUserStatus;
	public String				modifiedBy;
	public Timestamp			modifiedDate;
	public String				newPassword;
	public String				oldPassword;
	public String				password;
	public String				status;
	public String				usEmployeeIds;								// Comma_Separate_Can_Be_Used
	public IUsers				user				= null;
	public String				userId;
	public EUserType			userType;
	public String				usUserIds;									// Comma_Separate_Can_Be_Used
	public String				usUserName;
	public Timestamp			usUserPwdModDate;
	
	public UserParam()
	{
		
	}
	
	public UserParam(Class<?> clazz, String aliasName)
	{
		addBean(clazz, aliasName);
	}
	
	public UserParam(HttpServletRequest request)
	{
		this.request = request;
	}
	
	public UserParam(HttpServletRequest request, EUserType userType)
	{
		this.request = request;
		this.userType = userType;
	}
	
	public UserParam(IUsers user)
	{
		this.user = user;
	}
	
	public UserParam(String usEmployeeIds)
	{
		this.usEmployeeIds = usEmployeeIds;
		
	}
	
	public UserParam(String usEmployeeIds, String status, String usUserName)
	{
		this.usEmployeeIds = usEmployeeIds;
		this.status = status;
		this.usUserName = usUserName;
	}
	
	public String getAction()
	{
		return action;
	}
	
	public String getConfirmPassword()
	{
		return confirmPassword;
	}
	
	public String getEmail()
	{
		return email;
	}
	
	public String getModifiedBy()
	{
		return modifiedBy;
	}
	
	public Timestamp getModifiedDate()
	{
		return modifiedDate;
	}
	
	public String getNewPassword()
	{
		return newPassword;
	}
	
	public String getOldPassword()
	{
		return oldPassword;
	}
	
	public String getPassword()
	{
		return password;
	}
	
	public String getStatus()
	{
		return status;
	}
	
	public String getUsEmployeeIds()
	{
		return usEmployeeIds;
	}
	
	public IUsers getUser()
	{
		return user;
	}
	
	public String getUserId()
	{
		return userId;
	}
	
	public String getUsUserIds()
	{
		return usUserIds;
	}
	
	public String getUsUserName()
	{
		return usUserName;
	}
	
	public Timestamp getUsUserPwdModDate()
	{
		return usUserPwdModDate;
	}
	
	public void setAction(String action)
	{
		this.action = action;
	}
	
	public void setConfirmPassword(String confirmPassword)
	{
		this.confirmPassword = confirmPassword;
	}
	
	public void setEmail(String email)
	{
		this.email = email;
	}
	
	public void setModifiedBy(String modifiedBy)
	{
		this.modifiedBy = modifiedBy;
	}
	
	public void setModifiedDate(Timestamp modifiedDate)
	{
		this.modifiedDate = modifiedDate;
	}
	
	public void setNewPassword(String newPassword)
	{
		this.newPassword = newPassword;
	}
	
	public void setOldPassword(String oldPassword)
	{
		this.oldPassword = oldPassword;
	}
	
	public void setPassword(String password)
	{
		this.password = password;
	}
	
	public void setStatus(String status)
	{
		this.status = status;
	}
	
	public void setUsEmployeeIds(String usEmployeeIds)
	{
		this.usEmployeeIds = usEmployeeIds;
	}
	
	public void setUser(IUsers user)
	{
		this.user = user;
	}
	
	public void setUserId(String userId)
	{
		this.userId = userId;
	}
	
	public void setUsUserIds(String usUserIds)
	{
		this.usUserIds = usUserIds;
	}
	
	public void setUsUserName(String usUserName)
	{
		this.usUserName = usUserName;
	}
	
	public void setUsUserPwdModDate(Timestamp usUserPwdModDate)
	{
		this.usUserPwdModDate = usUserPwdModDate;
	}
	
}
