package org.hbs.sg.model.accessors;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hbs.sg.model.IScheme;
import org.hbs.sg.model.Scheme;
import org.hbs.sg.model.course.Courses;
import org.hbs.sg.model.course.ICourses;

@Entity
@Table(name = "consumercourses")
public class ConsumerCourses implements IConsumerCourses
{
	private static final long	serialVersionUID	= -3181454689972295233L;
	
	protected int				autoId;
	
	protected ICourses			courses;
	
	protected String			courseYear;
	
	protected IScheme			scheme;
	
	protected IConsumerUser		users;
	
	public ConsumerCourses()
	{
		super();
	}
	
	public ConsumerCourses(int autoId, ICourses courses, String courseYear, IConsumerUser users, IScheme scheme)
	{
		super();
		this.autoId = autoId;
		this.courses = courses;
		this.courseYear = courseYear;
		this.users = users;
		this.scheme = scheme;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "autoId")
	public int getAutoId()
	{
		return autoId;
	}
	
	@ManyToOne(targetEntity = Courses.class)
	@JoinColumn(name = "courseId", nullable = false)
	public ICourses getCourses()
	{
		return courses;
	}
	
	@Column(name = "courseYear")
	public String getCourseYear()
	{
		return courseYear;
	}
	
	@ManyToOne(targetEntity = Scheme.class)
	@JoinColumn(name = "schemeId", nullable = true)
	public IScheme getScheme()
	{
		return scheme;
	}
	
	@ManyToOne(targetEntity = ConsumerUsers.class)
	@JoinColumn(name = "usEmployeeId", nullable = false)
	public IConsumerUser getUsers()
	{
		return users;
	}
	
	@Transient
	public boolean isCourseActive()
	{
		String[] years = courseYear.split("_");
		
		int startYear = Integer.parseInt(years[0]);
		int endYear = Integer.parseInt(years[1]);
		
		int year = Integer.parseInt(new SimpleDateFormat("yyyy").format(new Date()));
		int month = Integer.parseInt(new SimpleDateFormat("MM").format(new Date()));
		
		if (courses.getCourseGroup().getStartMonth() > courses.getCourseGroup().getEndMonth()) // Overflow-Next-Year-Logic
		{
			if (year == startYear && month >= courses.getCourseGroup().getStartMonth())
			{
				return true;
			}
			else if (year == endYear && month <= courses.getCourseGroup().getEndMonth())
			{
				return true;
			}
		}
		else if (courses.getCourseGroup().getStartMonth() < courses.getCourseGroup().getEndMonth()) // No-Overflow-Same-Year-Logic
		{
			if (year == startYear && year == endYear)
			{
				return (month >= courses.getCourseGroup().getStartMonth() && month <= courses.getCourseGroup().getEndMonth());
			}
		}
		
		return false;
		
	}
	
	public void setAutoId(int autoId)
	{
		this.autoId = autoId;
	}
	
	public void setCourses(ICourses courses)
	{
		this.courses = courses;
	}
	
	public void setCourseYear(String courseYear)
	{
		this.courseYear = courseYear;
	}
	
	public void setScheme(IScheme scheme)
	{
		this.scheme = scheme;
	}
	
	public void setUsers(IConsumerUser users)
	{
		this.users = users;
	}
	
}
