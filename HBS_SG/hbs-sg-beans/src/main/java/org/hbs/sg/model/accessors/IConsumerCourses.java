package org.hbs.sg.model.accessors;

import java.io.Serializable;

import org.hbs.sg.model.course.ICourses;

public interface IConsumerCourses extends Serializable
{

	public ICourses getCourses();

	public String getCourseYear();

	public int getAutoId();

	public IConsumerUser getUsers();

	public boolean isCourseActive();

	public void setCourses(ICourses courses);

	public void setCourseYear(String courseYear);

	public void setAutoId(int autoId);

	public void setUsers(IConsumerUser users);

}