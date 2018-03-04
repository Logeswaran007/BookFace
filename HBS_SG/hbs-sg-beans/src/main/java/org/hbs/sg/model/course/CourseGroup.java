package org.hbs.sg.model.course;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hbs.admin.model.IProducers;
import org.hbs.admin.model.Producers;
import org.hbs.util.EBusinessKey;
import org.hbs.util.dao.ICRUDBean;

@Entity
@Table(name = "coursegroup")
public class CourseGroup implements ICourseGroup, EBusinessKey, ICRUDBean
{
	
	private static final long	serialVersionUID	= -2819097685478891320L;
	
	protected String			calculateCourseYear;
	
	protected String			courseBatch;
	
	protected String			courseDesc;
	
	protected String			courseGroupId;
	
	protected String			courseGroupSection;
	
	private Set<ICourses>		coursesList			= new LinkedHashSet<ICourses>(0);
	
	protected int				endMonth;
	
	protected IProducers		producer;
	
	protected int				startMonth;
	
	public CourseGroup()
	{
		super();
		this.courseGroupId = getBusinessKey();
	}
	
	@Override
	public int updateCourseYear(int year, int size)
	{
		if (size > 1)
		{
			calculateCourseYear = year + "_" + (year + 1);
			return year + 1;
		}
		else
		{
			if (startMonth <= endMonth)
			{
				calculateCourseYear = year + "_" + year;
			}
			else if (startMonth > endMonth)
			{
				calculateCourseYear = year + "_" + (year + 1);
				year = year + 1;
			}
			return year;
		}
		
	}
	
	@Transient
	public String getBusinessKey(String... combination)
	{
		return EKey.Auto("CHTR");
	}
	
	@Transient
	public String getCalculateCourseYear()
	{
		return calculateCourseYear;
	}
	
	@Column(name = "courseBatch")
	public String getCourseBatch()
	{
		return courseBatch;
	}
	
	@Column(name = "courseDesc")
	public String getCourseDesc()
	{
		return courseDesc;
	}
	
	@Id
	@Column(name = "courseGroupId")
	public String getCourseGroupId()
	{
		return courseGroupId;
	}
	
	@Column(name = "courseGroupSection")
	public String getCourseGroupSection()
	{
		return courseGroupSection;
	}
	
	@OneToMany(targetEntity = Courses.class, fetch = FetchType.EAGER, mappedBy = "courseGroup")
	public Set<ICourses> getCoursesList()
	{
		return coursesList;
	}
	
	@Column(name = "endMonth")
	public int getEndMonth()
	{
		return endMonth;
	}
	
	@ManyToOne(targetEntity = Producers.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "producerId")
	public IProducers getProducer()
	{
		return producer;
	}
	
	@Column(name = "startMonth")
	public int getStartMonth()
	{
		return startMonth;
	}
	
	public void setCalculateCourseYear(String calculateCourseYear)
	{
		this.calculateCourseYear = calculateCourseYear;
	}
	
	public void setCourseBatch(String courseBatch)
	{
		this.courseBatch = courseBatch;
	}
	
	@Override
	public void setCourseDesc(String courseDesc)
	{
		this.courseDesc = courseDesc;
	}
	
	@Override
	public void setCourseGroupId(String courseGroupId)
	{
		this.courseGroupId = courseGroupId;
	}
	
	@Override
	public void setCourseGroupSection(String courseGroupSection)
	{
		this.courseGroupSection = courseGroupSection;
	}
	
	public void setCoursesList(Set<ICourses> coursesList)
	{
		this.coursesList = coursesList;
	}
	
	public void setEndMonth(int endMonth)
	{
		this.endMonth = endMonth;
	}
	
	@Override
	public void setProducer(IProducers producer)
	{
		this.producer = producer;
	}
	
	public void setStartMonth(int startMonth)
	{
		this.startMonth = startMonth;
	}
	
}
