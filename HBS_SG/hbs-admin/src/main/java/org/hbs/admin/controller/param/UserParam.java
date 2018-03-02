package org.hbs.admin.controller.param;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUserStatus;
import org.hbs.admin.model.IUsers.EUserType;
import org.hbs.util.Param;

public class UserParam extends Param
{

	private static final long	serialVersionUID	= 2950016171013727276L;
	public String				usEmployeeIds;								// Comma_Separate_Can_Be_Used
	public String				status;
	public IUsers				user;
	public String				usUserIds;									// Comma_Separate_Can_Be_Used
	public String				usUserName;
	public String				userId;
	public String				password;
	public String				newPassword;
	public String				oldPassword;
	public String				confirmPassword;
	public String				action;
	public String				modifiedBy;
	public Timestamp			modifiedDate;
	public Timestamp			usUserPwdModDate;
	public String				email;
	public EUserStatus			eUserStatus;
	public EUserType			userType;

	public UserParam()
	{

	}

	public UserParam(HttpServletRequest request, EUserType userType)
	{
		this.request = request;
		this.userType = userType;
	}
	
	public UserParam(HttpServletRequest request)
	{
		this.request = request;
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

	public String getUsEmployeeIds()
	{
		return usEmployeeIds;
	}

	public void setUsEmployeeIds(String usEmployeeIds)
	{
		this.usEmployeeIds = usEmployeeIds;
	}

	public String getStatus()
	{
		return status;
	}

	public void setStatus(String status)
	{
		this.status = status;
	}

	public IUsers getUser()
	{
		return user;
	}

	public void setUser(IUsers user)
	{
		this.user = user;
	}

	public String getUsUserIds()
	{
		return usUserIds;
	}

	public void setUsUserIds(String usUserIds)
	{
		this.usUserIds = usUserIds;
	}

	public String getUsUserName()
	{
		return usUserName;
	}

	public void setUsUserName(String usUserName)
	{
		this.usUserName = usUserName;
	}

	public String getUserId()
	{
		return userId;
	}

	public void setUserId(String userId)
	{
		this.userId = userId;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

	public String getNewPassword()
	{
		return newPassword;
	}

	public void setNewPassword(String newPassword)
	{
		this.newPassword = newPassword;
	}

	public String getOldPassword()
	{
		return oldPassword;
	}

	public void setOldPassword(String oldPassword)
	{
		this.oldPassword = oldPassword;
	}

	public String getConfirmPassword()
	{
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword)
	{
		this.confirmPassword = confirmPassword;
	}

	public String getAction()
	{
		return action;
	}

	public void setAction(String action)
	{
		this.action = action;
	}

	public String getModifiedBy()
	{
		return modifiedBy;
	}

	public void setModifiedBy(String modifiedBy)
	{
		this.modifiedBy = modifiedBy;
	}

	public Timestamp getModifiedDate()
	{
		return modifiedDate;
	}

	public void setModifiedDate(Timestamp modifiedDate)
	{
		this.modifiedDate = modifiedDate;
	}

	public Timestamp getUsUserPwdModDate()
	{
		return usUserPwdModDate;
	}

	public void setUsUserPwdModDate(Timestamp usUserPwdModDate)
	{
		this.usUserPwdModDate = usUserPwdModDate;
	}

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

}
