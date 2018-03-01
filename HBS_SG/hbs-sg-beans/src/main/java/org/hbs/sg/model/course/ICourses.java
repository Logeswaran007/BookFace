package org.hbs.sg.model.course;

import java.util.Set;

import org.hbs.admin.model.ICommonBeanFields;
import org.hbs.util.EBusinessKey;
import org.hbs.util.EnumInterface;

public interface ICourses extends ICommonBeanFields, EBusinessKey
{
	public enum CourseBy implements EnumInterface
	{
		Id, Section;
	}

	public Set<IChapters> getChapters();

	public ICourseGroup getCourseGroup();

	public String getCourseId();

	public void setChapters(Set<IChapters> chapters);

	public void setCourseGroup(ICourseGroup courseGroup);

	public void setCourseId(String courseId);

}