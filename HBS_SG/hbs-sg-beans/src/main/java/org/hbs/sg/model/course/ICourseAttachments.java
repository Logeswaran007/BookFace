package org.hbs.sg.model.course;

import org.hbs.admin.model.ICommonBeanFields;
import org.hbs.admin.model.ICommonFileUpload;
import org.hbs.util.ICRUDBean;

public interface ICourseAttachments extends ICommonFileUpload, ICommonBeanFields, ICRUDBean
{
	
	public ICourses getCourses();
	
	public void setCourses(ICourses organisation);
	
}
