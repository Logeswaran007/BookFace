package org.hbs.sg.model.course;

import java.util.Set;

import org.hbs.admin.model.IProducersBase;
import org.hbs.util.ICRUDBean;

public interface ICourseGroup extends IProducersBase, ICRUDBean
{
	public String getCourseBatch();
	
	public String getCourseDesc();
	
	public String getCourseGroupId();
	
	public String getCourseGroupSection();
	
	public Set<ICourses> getCoursesList();
	
	public int getEndMonth();
	
	public int getStartMonth();
	
	public void setCourseBatch(String courseBatch);
	
	public void setCourseDesc(String courseDesc);
	
	public void setCourseGroupId(String courseGroupId);
	
	public void setCourseGroupSection(String courseGroupSection);
	
	public void setCoursesList(Set<ICourses> coursesList);
	
	public void setEndMonth(int courseEndMonth);
	
	public void setStartMonth(int courseStartMonth);
	
	public int updateCourseYear(int year, int size);
	
}