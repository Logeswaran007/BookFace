package org.hbs.sg.web.bo;

import java.util.List;

import org.hbs.admin.dao.UserDAO;
import org.hbs.admin.model.IAddress.AddressType;
import org.hbs.admin.model.UsersAddress;
import org.hbs.edutel.model.AuthKeyGen;
import org.hbs.sg.model.AlertsAndNotifications;
import org.hbs.sg.model.concern.Organisation;
import org.hbs.sg.model.concern.OrganisationAddress;
import org.hbs.sg.model.course.CourseAttachments;
import org.hbs.sg.model.course.ICourses.ECourseUploadType;
import org.hbs.sg.model.exam.Assessment;
import org.hbs.sg.web.dao.AssessmentDAO;
import org.hbs.sg.web.dao.CoursesDAO;
import org.hbs.sg.web.dao.KeyGenDAO;
import org.hbs.util.CommonValidator;
import org.hbs.util.DataTableParam;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.IParam.IWrap;
import org.hbs.util.dao.IBaseDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class SGBoImpl extends SGBoComboBoxImpl implements SGBo
{
	private static final long	serialVersionUID	= -7942529344878869154L;
	
	@Autowired
	protected AssessmentDAO		assessmentDAO;
	
	@Autowired
	protected CoursesDAO		coursesDAO;
	
	@Autowired
	protected IBaseDAO			iBaseDAO;
	
	@Autowired
	protected KeyGenDAO			keyGenDAO;
	
	@Autowired
	protected UserDAO			userDAO;
	
	@Override
	public DataTableParam getAssessmentList(DataTableParam dtParam, boolean isCount)
	{
		dtParam.searchBeanClass = Assessment.class;
		
		ENamed.EqualTo.param_AND(dtParam, "status", true);
		dtParam._OrderBy = " Order By createdDate Desc";
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	@Override
	public DataTableParam getAuthKeyGenList(DataTableParam dtParam, boolean isCount)
	{
		dtParam.searchBeanClass = AuthKeyGen.class;
		
		ENamed.EqualTo.param_AND(dtParam, "status", true);
		dtParam._OrderBy = " Order By createdDate,users.status Desc";
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	public DataTableParam getCourseAttachmentList(DataTableParam dtParam, boolean isCount)
	{
		dtParam.searchBeanClass = CourseAttachments.class;
		
		ENamed.EqualTo.param_AND(dtParam, "uploadDocumentForType", ECourseUploadType.EBooks.name());
		ENamed.EqualTo.param_AND(dtParam, "status", true);
		dtParam._OrderBy = " Order By createdDate Desc";
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	@Override
	public DataTableParam getInformationAlertList(DataTableParam dtParam, boolean isCount)
	{
		dtParam.searchBeanClass = AlertsAndNotifications.class;
		
		if (CommonValidator.isNotNullNotEmpty(dtParam.sSearch))
		{
			ENamed.Like.param_AND(dtParam, "message", dtParam.sSearch, IWrap.ST_BRACE1);
			ENamed.Like.param_OR(dtParam, "messageType", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "scheduledDate", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "expiryDate", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "createdUser.usUserName", dtParam.sSearch, IWrap.ED_BRACE1);
		}
		ENamed.EqualTo.param_AND(dtParam, "status", true);
		dtParam._OrderBy = " Order By createdDate Desc";
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
		
	}
	
	@Override
	public DataTableParam getOrganisationList(DataTableParam dtParam, boolean isCount)
	{
		dtParam.searchBeanClass = OrganisationAddress.class;
		
		ENamed.EqualTo.param_AND(dtParam, "addressType", AddressType.CommunicationAddress.name());
		ENamed.EqualTo.param_AND(dtParam, "organisation.status", true);
		dtParam._OrderBy = " Order By organisation.createdDate Desc";
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	@Override
	public DataTableParam getUserList(DataTableParam dtParam, boolean isCount)
	{
		dtParam.searchBeanClass = UsersAddress.class;
		
		ENamed.EqualTo.param_AND(dtParam, "addressType", AddressType.CommunicationAddress.name());
		ENamed.EqualTo.param_AND(dtParam, "users.status", true);
		dtParam._OrderBy = " Order By users.createdDate Desc";
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	@Override
	public boolean saveOrUpdate(AlertsAndNotifications alerts)
	{
		return iBaseDAO.saveOrUpdate("AlertsAndNotifications", alerts);
		
	}
	
	@Override
	public boolean saveOrUpdate(Assessment assessment)
	{
		return iBaseDAO.saveOrUpdate("Assessment", assessment);
	}
	
	@Override
	public boolean saveOrUpdate(List<AuthKeyGen> authKeyList)
	{
		return iBaseDAO.saveOrUpdate("AuthKeyGen", authKeyList.toArray(new AuthKeyGen[authKeyList.size()]));
		
	}
	
	@Override
	public boolean saveOrUpdate(Organisation organisation)
	{
		return iBaseDAO.saveOrUpdate("Organisation", organisation);
	}
	
}
