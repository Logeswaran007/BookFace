package org.hbs.admin.bo;

import java.io.Serializable;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.controller.UserParam;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.Producers;
import org.hbs.admin.model.UserActivity;
import org.hbs.util.DataTableParam;

public interface UserBo extends Serializable
{
	public Map<String, String> getComboBoxUserMap(UserParam userParam) throws Exception;
	
	public Map<String, String> getCountryList();
	
	public Producers getProducers(HttpServletRequest request);
	
	public Map<String, String> getStateList(HttpServletRequest request);
	
	public void getUser(UserParam userParam) throws Exception;
	
	public IUsers getUserByEmailOrMobileNo(UserParam userParam);
	
	public DataTableParam getUsersList(DataTableParam dtParam, boolean isCount);
	
	public boolean saveUserActivity(UserActivity userActivity);
	
	public boolean userLogAtLogin(IUsers user, String ipAddr);
	
	public boolean userLogAtLogOut(UserParam userParam);
	
	public boolean saveOrUpdate(IUsers user, String... iRoles) throws InstantiationException, IllegalAccessException;
	
	public boolean saveOrUpdate(IUsers users);
	
	public String getMenusByRoleHTML(UserParam userParam);
	
}
