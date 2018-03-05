package org.hbs.sg.model.course;

import java.util.Set;

import org.hbs.admin.model.ICommonBeanFields;
import org.hbs.util.dao.ICRUDBean;

public interface IChapters extends ICommonBeanFields, ICRUDBean
{
	public Set<IChapterAttachments> getAttachments();
	
	public String getChapterId();
	
	public String getChapterName();
	
	public ICourses getCourse();
	
	public void setAttachments(Set<IChapterAttachments> attachments);
	
	public void setChapterId(String chapterId);
	
	public void setChapterName(String chapterName);
	
	public void setCourse(ICourses course);
}