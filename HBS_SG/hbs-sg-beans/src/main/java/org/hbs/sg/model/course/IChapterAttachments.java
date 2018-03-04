package org.hbs.sg.model.course;

import org.hbs.admin.model.ICommonBeanFields;
import org.hbs.admin.model.ICommonFileUpload;

public interface IChapterAttachments extends ICommonBeanFields, ICommonFileUpload
{
	public IChapters getChapters();
	
	public void setChapters(IChapters chapters);
	
}