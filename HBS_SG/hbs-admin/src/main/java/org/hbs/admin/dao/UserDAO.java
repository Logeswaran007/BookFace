package org.hbs.admin.dao;

import org.hbs.admin.controller.param.UserParam;
import org.hbs.admin.model.IUserActivity;
import org.hbs.admin.model.IUsers;
import org.hbs.util.DataTableParam;

public interface UserDAO
{
	public IUsers getUser(UserParam userParam, Class<?> clazz);

	public DataTableParam getUsersList(DataTableParam dtParam, boolean isCount);

	public UserParam getUsersList(UserParam userParam);

	public boolean saveUserActivity(IUserActivity userActivity);

	public boolean userLogAtLogin(IUsers user, String ipAddr);

	public boolean userLogAtLogOut(UserParam userParam);

	public boolean userSave(IUsers user);

	public boolean userUpdate(IUsers user);

}
