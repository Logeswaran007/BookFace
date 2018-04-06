package org.hbs.sg.portlet.bo;

import java.util.List;

import org.hbs.admin.model.IUsers.EUserType;
import org.hbs.admin.model.UserActivity;
import org.hbs.admin.model.UserLog;
import org.hbs.admin.model.Users;
import org.hbs.sg.model.accessors.ConsumerAssessment;
import org.hbs.sg.model.accessors.IConsumerAssessment.EAssessmentMode;
import org.hbs.util.CommonValidator;
import org.hbs.util.DataTableParam;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.dao.IBaseDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class PortletBoImpl implements PortletBo
{
	
	private static final long	serialVersionUID	= -101283946410826304L;
	
	@Autowired
	protected IBaseDAO			iBaseDAO;
	
	@Override
	public DataTableParam getActivityList(DataTableParam dtParam, boolean isCount)
	{
		try
		{
			String usEmployeeId = (String) dtParam.searchValueMap.get("usEmployeeId");
			String usUsersType = (String) dtParam.searchValueMap.get("usUsersType");
			
			dtParam.searchValueMap.clear();
			dtParam.addBean(UserActivity.class, "ACT");
			
			if (CommonValidator.isEqual(usUsersType, EUserType.Consumer))
				ENamed.EqualTo.param_AND(dtParam, "ACT.createdUser.usUserType", usUsersType);
			else
				ENamed.EqualTo.param_AND(dtParam, "ACT.createdUser.usEmployeeId", usEmployeeId);
			
			dtParam._OrderBy = " Order By ACT.createdDate Desc";
			
			return iBaseDAO.getDataTableList(dtParam, isCount);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return dtParam;
	}
	
	@Override
	public DataTableParam getAssessmentList(DataTableParam dtParam, boolean isCount)
	{
		String usEmployeeId = (String) dtParam.searchValueMap.get("usEmployeeId");
		dtParam.searchValueMap.clear();
		dtParam.addBean(ConsumerAssessment.class, "CA");
		
		ENamed.EqualTo.param_AND(dtParam, "CA.users.usEmployeeId", usEmployeeId);
		ENamed.NotEqualTo.param_AND(dtParam, "CA.assessmentMode", EAssessmentMode.Practise.name());
		dtParam._OrderBy = " Order By CA.createdDate Desc";
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	@Override
	public DataTableParam getPractiseExamList(DataTableParam dtParam, boolean isCount)
	{
		String usEmployeeId = (String) dtParam.searchValueMap.get("usEmployeeId");
		dtParam.searchValueMap.clear();
		dtParam.addBean(ConsumerAssessment.class, "CA");
		
		ENamed.EqualTo.param_AND(dtParam, "CA.users.usEmployeeId", usEmployeeId);
		ENamed.EqualTo.param_AND(dtParam, "CA.assessmentMode", EAssessmentMode.Practise.name());
		dtParam._OrderBy = " Order By CA.createdDate Desc";
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public DataTableParam getReportCardList(DataTableParam dtParam, boolean isCount)
	{
		String usEmployeeId = (String) dtParam.searchValueMap.get("usEmployeeId");
		dtParam.searchValueMap.clear();
		dtParam.addBean(ConsumerAssessment.class, "CA");
		
		ENamed.EqualTo.param_AND(dtParam, "CA.users.usEmployeeId", usEmployeeId);
		ENamed.EqualTo.param_AND(dtParam, "CA.assessmentMode", EAssessmentMode.Practise.name());
		dtParam._OrderBy = " Order By CA.createdDate Desc";
		
		List<ConsumerAssessment> caList = (List<ConsumerAssessment>) iBaseDAO.getDataTableList(dtParam, isCount).dataList;
		
		Object[] onlineArray = caList.stream().filter(datum -> CommonValidator.isEqual(datum.getAssessmentMode(), EAssessmentMode.Online)).toArray();
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	@Override
	public DataTableParam getUserLogList(DataTableParam dtParam, boolean isCount)
	{
		String usEmployeeId = (String) dtParam.searchValueMap.get("usEmployeeId");
		dtParam.searchValueMap.clear();
		dtParam.addBean(UserLog.class, "UL");
		
		ENamed.EqualTo.param_AND(dtParam, "UL.users.usEmployeeId", usEmployeeId);
		
		dtParam._OrderBy = " Order By UL.ulUserLoginTime Desc";
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	@Override
	public DataTableParam getUsersList(DataTableParam dtParam, boolean isCount)
	{
		String producerId = (String) dtParam.searchValueMap.get("producerId");
		dtParam.searchValueMap.clear();
		dtParam.addBean(Users.class, "U");
		
		ENamed.EqualTo.param_AND(dtParam, "U.producer.producerId", producerId);
		dtParam._OrderBy = " Order By U.createdDate Desc";
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
}
