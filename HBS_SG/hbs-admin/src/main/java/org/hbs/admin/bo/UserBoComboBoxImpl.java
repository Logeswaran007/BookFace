package org.hbs.admin.bo;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.controller.UserParam;
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
		
		param.addBean(Users.class, "U");
		param.searchColumns = " U.usEmployeeId, U.usUserName, U.usLastName";
		
		ENamed.EqualTo.param_AND(param, "U.status", true);
		ENamed.EqualTo.param_AND(param, "U.usUsersType", param.userType.name());
		ENamed.EqualTo.param_AND(param, "U.producer.producerId", users.getProducer().getProducerId());
		
		List<Object[]> objectList = (List<Object[]>) iBaseDAO.getDataList(param).getDataList();
		
		for (Object[] object : objectList)
		{
			hmComboMap.put(object[0].toString(), object[1].toString() + " " + object[2].toString());
		}
		
		return hmComboMap;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Map<String, String> getCountryList()
	{
		Map<String, String> hmComboMap = new LinkedHashMap<String, String>();
		UserParam param = new UserParam(Country.class, "C");
		param.searchColumns = " C.country, C.countryName ";
		
		ENamed.EqualTo.param_AND(param, "C.status", true);
		param._OrderBy = " Order By C.displayOrder Asc";
		
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
		UserParam param = new UserParam(State.class, "S");
		
		Object country = param.searchValueMap.get("country");
		
		param.searchColumns = " S.state ";
		
		ENamed.EqualTo.param_AND(param, "S.country.country", CommonValidator.isNotNullNotEmpty(country) ? country : "IN");
		
		List<String> objectList = (List<String>) iBaseDAO.getDataList(param).getDataList();
		
		for (String object : objectList)
		{
			hmComboMap.put(object.toString(), object.toString());
		}
		
		return hmComboMap;
	}
	
}