package org.hbs.sg.model.course;

import java.io.Serializable;
import java.util.Set;

import org.hbs.admin.model.IProducersBase;

public interface ICourseGroup extends IProducersBase, Serializable
{
	public String getCourseBatch();

	public String getCourseDesc();

	public int getEndMonth();

	public String getCourseGroupId();

	public String getCourseGroupSection();

	public Set<ICourses> getCoursesList();

	public int getStartMonth();

	public void setCourseBatch(String courseBatch);

	public void setCourseDesc(String courseDesc);

	public void setEndMonth(int courseEndMonth);

	public void setCourseGroupId(String courseGroupId);

	public void setCourseGroupSection(String courseGroupSection);

	public void setCoursesList(Set<ICourses> coursesList);

	public void setStartMonth(int courseStartMonth);

	public int updateCourseYear(int year, int size);

}