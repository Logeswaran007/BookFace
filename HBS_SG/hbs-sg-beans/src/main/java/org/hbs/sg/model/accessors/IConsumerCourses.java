package org.hbs.sg.model.accessors;

import java.io.Serializable;

import org.hbs.sg.model.course.ICourses;

public interface IConsumerCourses extends Serializable
{
	
	public int getAutoId();
	
	public ICourses getCourses();
	
	public String getCourseYear();
	
	public IConsumerUser getUsers();
	
	public boolean isCourseActive();
	
	public void setAutoId(int autoId);
	
	public void setCourses(ICourses courses);
	
	public void setCourseYear(String courseYear);
	
	public void setUsers(IConsumerUser users);
	
}