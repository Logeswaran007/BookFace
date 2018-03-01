package org.hbs.admin.bo;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.controller.param.UserParam;
import org.hbs.admin.dao.GeoDAO;
import org.hbs.admin.dao.UserDAO;
import org.hbs.admin.model.Country;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUserType;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.admin.model.State;
import org.hbs.util.CommonValidator;
import org.hbs.util.DataTableParam;
import org.hbs.util.IParam.ENamed;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class UserBoComboBoxImpl implements UserBo
{

	private static final long	serialVersionUID	= 1160466715298198052L;

	@Autowired
	protected GeoDAO			geoDAO;

	@Autowired
	protected UserDAO			userDAO;

	public UserBoComboBoxImpl()
	{
		super();
	}

	@Override
	public Map<String, String> getComboBoxEmployeeMap(UserParam userParam) throws Exception
	{
		IUsers users = EUsers.getSessionUser(userParam.request);

		Map<String, String> hmEmployeeMap = new LinkedHashMap<String, String>();
		userParam.searchColumns = " usEmployeeId, usUserName ";

		ENamed.EqualTo.param_AND(userParam, "status", true);
		ENamed.EqualTo.param_AND(userParam, "usUsersType", EUserType.Employee.name());
		ENamed.EqualTo.param_AND(userParam, "producer.producerId", users.getProducer().getProducerId());

		userDAO.getUsersList(userParam);

		Object[] datum = null;
		for (Object data : userParam.dataList)
		{
			datum = (Object[]) data;
			hmEmployeeMap.put(datum[0].toString(), datum[1].toString());
		}

		return hmEmployeeMap;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Map<String, String> getCountryList()
	{
		Map<String, String> hmCountryMap = new LinkedHashMap<String, String>();
		DataTableParam dtParam = new DataTableParam();
		ENamed.EqualTo.param_AND(dtParam, "status", true);
		dtParam._OrderBy = " Order By displayOrder Asc";

		List<Country> countryList = (List<Country>) geoDAO.getCountryList(dtParam).dataList;

		for (Country cty : countryList)
		{
			hmCountryMap.put(cty.getCountry(), cty.getCountryName());
		}

		return hmCountryMap;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Map<String, String> getStateList(HttpServletRequest request)
	{
		Map<String, String> hmStateMap = new LinkedHashMap<String, String>();
		DataTableParam dtParam = new DataTableParam(request);

		Object country = dtParam.searchValueMap.get("country");

		ENamed.EqualTo.param_AND(dtParam, "country.country", CommonValidator.isNotNullNotEmpty(country) ? country : "IN");

		List<State> stateList = (List<State>) geoDAO.getStateList(dtParam).dataList;

		for (State state : stateList)
		{
			hmStateMap.put(state.getState(), state.getState());
		}

		return hmStateMap;
	}

}