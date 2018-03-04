package org.hbs.sg.portlet.bo;

import java.util.List;

import org.hbs.admin.model.IUsers.EUserType;
import org.hbs.admin.model.UserActivity;
import org.hbs.admin.model.UserLog;
import org.hbs.admin.model.Users;
import org.hbs.sg.model.accessors.ConsumerAssessment;
import org.hbs.sg.model.accessors.IConsumerAssessment.EAssessmentMode;
import org.hbs.sg.portlet.dao.PortletDAO;
import org.hbs.util.CommonValidator;
import org.hbs.util.DataTableParam;
import org.hbs.util.IDataTableParam;
import org.hbs.util.IParam.ENamed;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class PortletBoImpl implements PortletBo
{
	
	private static final long	serialVersionUID	= -101283946410826304L;
	
	@Autowired
	protected PortletDAO		portletDAO;
	
	@Override
	public DataTableParam getActivityList(DataTableParam dtParam, boolean isCount)
	{
		try
		{
			String usEmployeeId = (String) dtParam.searchValueMap.get("usEmployeeId");
			String usUsersType = (String) dtParam.searchValueMap.get("usUsersType");
			
			dtParam.searchValueMap.clear();
			
			if (CommonValidator.isEqual(usUsersType, EUserType.Consumer))
				ENamed.EqualTo.param_AND(dtParam, "createdUser.usUserType", usUsersType);
			else
				ENamed.EqualTo.param_AND(dtParam, "createdUser.usEmployeeId", usEmployeeId);
			
			dtParam._OrderBy = " Order By createdDate Desc";
			dtParam.searchBeanClass = UserActivity.class;
			
			return portletDAO.getSearchList(dtParam, isCount);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return dtParam;
	}
	
	@Override
	public IDataTableParam getAssessmentList(DataTableParam dtParam, boolean isCount)
	{
		String usEmployeeId = (String) dtParam.searchValueMap.get("usEmployeeId");
		dtParam.searchValueMap.clear();
		
		ENamed.EqualTo.param_AND(dtParam, "users.usEmployeeId", usEmployeeId);
		ENamed.NotEqualTo.param_AND(dtParam, "assessmentMode", EAssessmentMode.Practise.name());
		dtParam._OrderBy = " Order By createdDate Desc";
		dtParam.searchBeanClass = ConsumerAssessment.class;
		
		return portletDAO.getSearchList(dtParam, isCount);
	}
	
	public PortletDAO getPortletDAO()
	{
		return portletDAO;
	}
	
	@Override
	public IDataTableParam getPractiseExamList(DataTableParam dtParam, boolean isCount)
	{
		String usEmployeeId = (String) dtParam.searchValueMap.get("usEmployeeId");
		dtParam.searchValueMap.clear();
		
		ENamed.EqualTo.param_AND(dtParam, "users.usEmployeeId", usEmployeeId);
		ENamed.EqualTo.param_AND(dtParam, "assessmentMode", EAssessmentMode.Practise.name());
		dtParam._OrderBy = " Order By createdDate Desc";
		dtParam.searchBeanClass = ConsumerAssessment.class;
		
		return portletDAO.getSearchList(dtParam, isCount);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public IDataTableParam getReportCardList(DataTableParam dtParam, boolean isCount)
	{
		String usEmployeeId = (String) dtParam.searchValueMap.get("usEmployeeId");
		dtParam.searchValueMap.clear();
		
		ENamed.EqualTo.param_AND(dtParam, "users.usEmployeeId", usEmployeeId);
		ENamed.EqualTo.param_AND(dtParam, "assessmentMode", EAssessmentMode.Practise.name());
		dtParam._OrderBy = " Order By createdDate Desc";
		dtParam.searchBeanClass = ConsumerAssessment.class;
		
		List<ConsumerAssessment> caList = (List<ConsumerAssessment>) portletDAO.getSearchList(dtParam, isCount).dataList;
		
		Object[] onlineArray = caList.stream().filter(datum -> CommonValidator.isEqual(datum.getAssessmentMode(), EAssessmentMode.Online)).toArray();
		
		return portletDAO.getSearchList(dtParam, isCount);
	}
	
	@Override
	public DataTableParam getUserLogList(DataTableParam dtParam, boolean isCount)
	{
		String usEmployeeId = (String) dtParam.searchValueMap.get("usEmployeeId");
		dtParam.searchValueMap.clear();
		
		ENamed.EqualTo.param_AND(dtParam, "users.usEmployeeId", usEmployeeId);
		
		dtParam._OrderBy = " Order By ulUserLoginTime Desc";
		dtParam.searchBeanClass = UserLog.class;
		
		return portletDAO.getSearchList(dtParam, isCount);
	}
	
	@Override
	public IDataTableParam getUsersList(DataTableParam dtParam, boolean isCount)
	{
		String producerId = (String) dtParam.searchValueMap.get("producerId");
		dtParam.searchValueMap.clear();
		
		ENamed.EqualTo.param_AND(dtParam, "producer.producerId", producerId);
		dtParam._OrderBy = " Order By createdDate Desc";
		dtParam.searchBeanClass = Users.class;
		
		return portletDAO.getSearchList(dtParam, isCount);
	}
	
	public void setPortletDAO(PortletDAO portletDAO)
	{
		this.portletDAO = portletDAO;
	}
	
}
