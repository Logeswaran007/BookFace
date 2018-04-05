package org.hbs.sg.web.bo;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hbs.admin.model.IUploadImageOrDocuments;
import org.hbs.edutel.model.AuthKeyGen;
import org.hbs.sg.model.AlertsAndNotifications;
import org.hbs.sg.model.concern.Organisation;
import org.hbs.sg.model.course.ICourses;
import org.hbs.sg.web.controller.AssessmentParam;
import org.hbs.sg.web.controller.SchemeParam;
import org.hbs.util.DataTableParam;
import org.hbs.util.LabelValueBean;

public interface SGBo extends Serializable
{
	
	public List<AuthKeyGen> getAuthKeyGenList(DataTableParam dtParam);
	
	public DataTableParam getAuthKeyGenList(DataTableParam dtParam, boolean isCount);
	
	public List<LabelValueBean> getComboBoxChaptersList(AssessmentParam assessmentParam) throws Exception;
	
	public Map<String, String> getComboBoxCourseGroupMap(AssessmentParam assessmentParam) throws Exception;
	
	public List<LabelValueBean> getComboBoxCourseList(AssessmentParam assessmentParam) throws Exception;
	
	public Map<String, String> getComboBoxSchemeMap(SchemeParam schemeParam) throws Exception;
	
	public ICourses getCourse(DataTableParam dtParam);
	
	public DataTableParam getCourseAttachmentList(DataTableParam dtParam, boolean isCount);
	
	public DataTableParam getInformationAlertList(DataTableParam dtParam, boolean isCount);
	
	public DataTableParam getOrganisationList(DataTableParam dtParam, boolean isCount);
	
	public boolean saveOrUpdate(AlertsAndNotifications alerts);
	
	public boolean saveOrUpdate(List<AuthKeyGen> authKeyList);
	
	public boolean saveOrUpdate(Organisation organisation);
	
	public boolean saveOrUpdate(Set<? extends IUploadImageOrDocuments> attachments);
	
}
