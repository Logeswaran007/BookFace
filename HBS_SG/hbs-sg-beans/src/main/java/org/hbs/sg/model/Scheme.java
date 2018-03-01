package org.hbs.sg.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hbs.admin.model.ProducersBase;
import org.hbs.sg.model.course.CourseGroup;
import org.hbs.sg.model.course.ICourseGroup;

@Entity
@Table(name = "scheme")
public class Scheme extends ProducersBase implements IScheme
{

	private static final long	serialVersionUID	= 5432094430635127068L;
	private Double				schemeCost;
	private String				schemeId;
	private String				schemeName;
	private Set<ICourseGroup>	courseGroupList		= new LinkedHashSet<ICourseGroup>(0);

	public Scheme()
	{
		super();
	}

	public Scheme(Double schemeCost, String schemeId, String schemeName, Set<ICourseGroup> courseGroupList)
	{
		super();
		this.schemeCost = schemeCost;
		this.schemeId = schemeId;
		this.schemeName = schemeName;
		this.courseGroupList = courseGroupList;
	}

	@Override
	@Column(name = "schemeCost")
	public Double getSchemeCost()
	{
		return schemeCost;
	}

	@Override
	@Id
	@Column(name = "schemeId")
	public String getSchemeId()
	{
		return schemeId;
	}

	@ManyToMany(cascade = { CascadeType.ALL }, targetEntity = CourseGroup.class)
	@JoinTable(name = "schemecoursegroup", joinColumns = { @JoinColumn(name = "schemeId") }, inverseJoinColumns = { @JoinColumn(name = "courseGroupId") })
	public Set<ICourseGroup> getCourseGroupList()
	{
		int year = Integer.parseInt(new SimpleDateFormat("yyyy").format(new Date()));
		for (ICourseGroup cGrp : courseGroupList)
		{
			year = cGrp.updateCourseYear(year, courseGroupList.size());
		}

		return courseGroupList;
	}

	public void setCourseGroupList(Set<ICourseGroup> courseGroupList)
	{
		this.courseGroupList = courseGroupList;
	}

	@Override
	@Column(name = "schemeName")
	public String getSchemeName()
	{
		return schemeName;
	}

	@Override
	public void setSchemeCost(Double schemeCost)
	{
		this.schemeCost = schemeCost;
	}

	@Override
	public void setSchemeId(String schemeId)
	{
		this.schemeId = schemeId;
	}

	@Override
	public void setSchemeName(String schemeName)
	{
		this.schemeName = schemeName;
	}
}
