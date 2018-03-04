package org.hbs.admin.dao;

import java.io.Serializable;

import org.hbs.admin.controller.param.UserParam;
import org.hbs.admin.model.IUserActivity;
import org.hbs.admin.model.IUsers;

public interface UserDAO extends Serializable
{
	public boolean saveUserActivity(IUserActivity userActivity);
	
	public boolean userLogAtLogin(IUsers user, String ipAddr);
	
	public boolean userLogAtLogOut(UserParam userParam);
	
	public boolean userSave(IUsers user);
	
	public boolean userUpdate(IUsers user);
	
}
