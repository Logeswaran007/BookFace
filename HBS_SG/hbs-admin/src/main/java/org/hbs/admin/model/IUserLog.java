package org.hbs.admin.model;

import java.sql.Timestamp;

import org.hbs.util.dao.ICRUDBean;

/**
 * UserLog entity. @author MyEclipse Persistence Tools
 */

public interface IUserLog extends ICRUDBean
{
	public Integer getUlAutoId();
	
	public String getUlIpaddress();
	
	public Timestamp getUlUserLoginTime();
	
	public Timestamp getUlUserLogoutTime();
	
	public IUsers getUsers();
	
	public boolean isUlFetchBlock();
	
	public void setUlAutoId(int ulUserLogAutoId);
	
	public void setUlFetchBlock(boolean ulFetchBlock);
	
	public void setUlIpaddress(String ulIpaddress);
	
	public void setUlUserLoginTime(Timestamp ulUserLoginTime);
	
	public void setUlUserLogoutTime(Timestamp ulUserLogoutTime);
	
	public void setUsers(IUsers users);
	
}