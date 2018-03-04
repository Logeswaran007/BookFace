package org.hbs.admin.bo;

import java.io.Serializable;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.controller.param.UserParam;
import org.hbs.admin.model.IUserActivity;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.Producers;
import org.hbs.util.DataTableParam;

public interface UserBo extends Serializable
{
	public Map<String, String> getCountryList();

	public Map<String, String> getStateList(HttpServletRequest request);

	public void getUser(UserParam userParam) throws Exception;

	public IUsers getUserByEmailOrMobileNo(UserParam userParam);

	public DataTableParam getUsersList(DataTableParam dtParam, boolean isCount);

	public void saveUserActivity(IUserActivity userActivity);

	public void userLogAtLogin(IUsers user, String ipAddr);

	public void userLogAtLogOut(UserParam userParam);

	public boolean userSave(IUsers user, String... iRoles) throws InstantiationException, IllegalAccessException;

	public boolean userUpdate(IUsers users);

	public Map<String, String> getComboBoxUserMap(UserParam userParam) throws Exception;
	
	public Producers getProducers(HttpServletRequest request);

}
