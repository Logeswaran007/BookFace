package org.hbs.sg.model.course;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hbs.admin.model.CommonBeanFields;

@Entity
@Table(name = "courses")
public class Courses extends CommonBeanFields implements ICourses
{
	private static final long	serialVersionUID	= 4727089353440139880L;

	protected Set<IChapters>	chapters			= new LinkedHashSet<IChapters>(0);

	protected ICourseGroup		courseGroup;

	protected String			courseId;

	public Courses()
	{
		super();
		this.courseId = getBusinessKey();
	}

	public Courses(String courseId, ICourseGroup courseGroup, String courseDesc, Set<IChapters> chapters)
	{
		super();
		this.courseId = getBusinessKey();
		this.courseGroup = courseGroup;
		this.chapters = chapters;
	}

	@Transient
	public String getBusinessKey(String... combination)
	{
		return EKey.Auto("CRS");
	}

	@OneToMany(targetEntity = Chapters.class, fetch = FetchType.EAGER, mappedBy = "courses")
	public Set<IChapters> getChapters()
	{
		return chapters;
	}

	@ManyToOne(cascade = CascadeType.ALL, targetEntity = CourseGroup.class)
	@JoinColumn(name = "courseGroupId")
	public ICourseGroup getCourseGroup()
	{
		return courseGroup;
	}

	@Id
	@Column(name = "courseId")
	public String getCourseId()
	{
		return courseId;
	}

	public void setChapters(Set<IChapters> chapters)
	{
		this.chapters = chapters;
	}

	public void setCourseGroup(ICourseGroup courseGroup)
	{
		this.courseGroup = courseGroup;
	}

	public void setCourseId(String courseId)
	{
		this.courseId = courseId;
	}
}