package org.hbs.admin.bo;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.controller.param.UserParam;
import org.hbs.admin.dao.UserDAO;
import org.hbs.admin.model.Country;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.admin.model.State;
import org.hbs.admin.model.Users;
import org.hbs.util.CommonValidator;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.dao.IBaseDAO;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class UserBoComboBoxImpl implements UserBo
{
	
	private static final long	serialVersionUID	= 1160466715298198052L;
	
	@Autowired
	protected IBaseDAO			iBaseDAO;
	
	@Autowired
	protected UserDAO			userDAO;
	
	public UserBoComboBoxImpl()
	{
		super();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Map<String, String> getComboBoxUserMap(UserParam param) throws Exception
	{
		IUsers users = EUsers.getSessionUser(param.request);
		
		Map<String, String> hmComboMap = new LinkedHashMap<String, String>();
		
		param.searchBeanClass = Users.class;
		param.searchColumns = " usEmployeeId, usUserName ";
		
		ENamed.EqualTo.param_AND(param, "status", true);
		ENamed.EqualTo.param_AND(param, "usUsersType", param.userType.name());
		ENamed.EqualTo.param_AND(param, "producer.producerId", users.getProducer().getProducerId());
		
		List<Object[]> objectList = (List<Object[]>) iBaseDAO.getDataList(param).getDataList();
		
		for (Object[] object : objectList)
		{
			hmComboMap.put(object[0].toString(), object[1].toString());
		}
		
		return hmComboMap;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Map<String, String> getCountryList()
	{
		Map<String, String> hmComboMap = new LinkedHashMap<String, String>();
		UserParam param = new UserParam();
		
		param.searchBeanClass = Country.class;
		param.searchColumns = " country, countryName ";
		
		ENamed.EqualTo.param_AND(param, "status", true);
		param._OrderBy = " Order By displayOrder Asc";
		
		List<Object[]> objectList = (List<Object[]>) iBaseDAO.getDataList(param).getDataList();
		
		for (Object[] object : objectList)
		{
			hmComboMap.put(object[0].toString(), object[1].toString());
		}
		
		return hmComboMap;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Map<String, String> getStateList(HttpServletRequest request)
	{
		Map<String, String> hmComboMap = new LinkedHashMap<String, String>();
		UserParam param = new UserParam();
		
		Object country = param.searchValueMap.get("country");
		
		param.searchBeanClass = State.class;
		param.searchColumns = " state ";
		
		ENamed.EqualTo.param_AND(param, "country.country", CommonValidator.isNotNullNotEmpty(country) ? country : "IN");
		
		List<String> objectList = (List<String>) iBaseDAO.getDataList(param).getDataList();
		
		for (String object : objectList)
		{
			hmComboMap.put(object.toString(), object.toString());
		}
		
		return hmComboMap;
	}
	
}