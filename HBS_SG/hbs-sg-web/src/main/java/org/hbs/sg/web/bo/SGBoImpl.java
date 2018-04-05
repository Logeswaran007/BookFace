package org.hbs.sg.web.bo;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.hbs.admin.dao.UserDAO;
import org.hbs.admin.model.IAddress.AddressType;
import org.hbs.admin.model.IUploadImageOrDocuments;
import org.hbs.edutel.model.AuthKeyGen;
import org.hbs.edutel.model.IAuthKeyGen.EKeyGen;
import org.hbs.sg.model.AlertsAndNotifications;
import org.hbs.sg.model.concern.Organisation;
import org.hbs.sg.model.concern.OrganisationAddress;
import org.hbs.sg.model.course.ChapterAttachments;
import org.hbs.sg.model.course.CourseAttachments;
import org.hbs.sg.model.course.Courses;
import org.hbs.sg.model.course.IChapterAttachments;
import org.hbs.sg.model.course.ICourses;
import org.hbs.sg.model.course.ICourses.ECourseUploadType;
import org.hbs.sg.web.dao.CoursesDAO;
import org.hbs.sg.web.dao.KeyGenDAO;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
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
	final CustomLogger			logger				= new CustomLogger(this.getClass());
	
	@Autowired
	protected CoursesDAO		coursesDAO;
	
	@Autowired
	protected IBaseDAO			iBaseDAO;
	
	@Autowired
	protected KeyGenDAO			keyGenDAO;
	
	@Autowired
	protected UserDAO			userDAO;
	
	@Override
	public DataTableParam getAuthKeyGenList(DataTableParam dtParam, boolean isCount)
	{
		dtParam.addBean(AuthKeyGen.class, "AKG");
		
		ENamed.EqualTo.param_AND(dtParam, "AKG.status", true);
		dtParam._OrderBy = " Order By AKG.createdDate, AKG.users.status Desc";
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	public DataTableParam getCourseAttachmentList(DataTableParam dtParam, boolean isCount)
	{
		dtParam.addBean(CourseAttachments.class, "CA");
		
		ENamed.EqualTo.param_AND(dtParam, "CA.uploadDocumentForType", ECourseUploadType.EBooks.name());
		ENamed.EqualTo.param_AND(dtParam, "CA.status", true);
		dtParam._OrderBy = " Order By CA.createdDate Desc";
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	@Override
	public DataTableParam getInformationAlertList(DataTableParam dtParam, boolean isCount)
	{
		dtParam.addBean(AlertsAndNotifications.class, "AN");
		
		if (CommonValidator.isNotNullNotEmpty(dtParam.sSearch))
		{
			ENamed.Like.param_AND(dtParam, "AN.message", dtParam.sSearch, IWrap.ST_BRACE1);
			ENamed.Like.param_OR(dtParam, "AN.messageType", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "AN.scheduledDate", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "AN.expiryDate", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "AN.createdUser.usUserName", dtParam.sSearch, IWrap.ED_BRACE1);
		}
		ENamed.EqualTo.param_AND(dtParam, "AN.status", true);
		dtParam._OrderBy = " Order By AN.createdDate Desc";
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
		
	}
	
	@Override
	public DataTableParam getOrganisationList(DataTableParam dtParam, boolean isCount)
	{
		dtParam.addBean(OrganisationAddress.class, "OA");
		ENamed.EqualTo.param_AND(dtParam, "OA.addressType", AddressType.CommunicationAddress.name());
		ENamed.EqualTo.param_AND(dtParam, "OA.organisation.status", true);
		dtParam._OrderBy = " Order By OA.organisation.createdDate Desc";
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	@Override
	public boolean saveOrUpdate(AlertsAndNotifications alerts)
	{
		return iBaseDAO.saveOrUpdate("AlertsAndNotifications", alerts);
		
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
	
	@Override
	public boolean saveOrUpdate(Set<? extends IUploadImageOrDocuments> attachments)
	{
		// Used to identify, whose attachment instance is incoming...
		
		Object object = attachments.iterator().next();
		if (object instanceof IChapterAttachments)
			return iBaseDAO.saveOrUpdate("ChapterAttachments", attachments.toArray(new ChapterAttachments[attachments.size()]));
		else if (object instanceof IChapterAttachments)
			return iBaseDAO.saveOrUpdate("CourseAttachments", attachments.toArray(new CourseAttachments[attachments.size()]));
		return false;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public ICourses getCourse(DataTableParam dtParam)
	{
		dtParam.addBean(Courses.class, "C");
		dtParam.iDisplayLength = 1;
		
		ENamed.EqualTo.param_AND(dtParam, "C.status", true);
		
		List<ICourses> datatList = (List<ICourses>) iBaseDAO.getDataList(dtParam).getDataList();
		if (CommonValidator.isListFirstNotEmpty(datatList))
			return datatList.iterator().next();
		else
			return null;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<AuthKeyGen> getAuthKeyGenList(DataTableParam dtParam)
	{
		
		ArrayList<String> serialKeyList = new ArrayList<String>();
		
		for (String key : dtParam.searchValueMap.keySet())
		{
			if (CommonValidator.isEqual(key, "serialKey"))
			{
				if (dtParam.searchValueMap.get(key) instanceof String)
				{
					serialKeyList.add((String) dtParam.searchValueMap.get(key));
				}
				else if (dtParam.searchValueMap.get(key) instanceof ArrayList)
				{
					serialKeyList = (ArrayList<String>) dtParam.searchValueMap.get(key);
				}
			}
		}
		
		dtParam.searchCondtionMap.clear();
		dtParam.searchValueMap.clear();
		dtParam.addBean(AuthKeyGen.class, "AKG");
		ENamed.In.param_AND(dtParam, "AKG.serialKey", serialKeyList);
		ENamed.EqualTo.param_AND(dtParam, "AKG.users.status", true);
		ENamed.EqualTo.param_AND(dtParam, "AKG.serialKeyStatus", EKeyGen.Not_Sold.getStatus());
		
		return (List<AuthKeyGen>) iBaseDAO.getDataList(dtParam).getDataList();
	}
	
}
