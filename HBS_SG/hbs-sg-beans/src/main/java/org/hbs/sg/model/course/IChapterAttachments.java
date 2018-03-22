package org.hbs.sg.model.course;

import org.hbs.admin.model.ICommonBeanFields;
import org.hbs.admin.model.ICommonFileUpload;
import org.hbs.util.dao.ICRUDBean;

public interface IChapterAttachments extends ICommonBeanFields, ICommonFileUpload, ICRUDBean
{
	public IChapters getChapters();
	
	public void setChapters(IChapters chapters);
	
}