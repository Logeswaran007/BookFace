package org.hbs.sg.model.course;

import org.hbs.admin.model.ICommonBeanFields;
import org.hbs.admin.model.ICommonFileUpload;

public interface ICourseAttachments extends ICommonFileUpload, ICommonBeanFields
{
	
	public ICourses getCourses();
	
	public void setCourses(ICourses organisation);
	
}
