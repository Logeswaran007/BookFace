package org.hbs.sg.model.accessors;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import org.hbs.admin.model.Users;
import org.hbs.sg.model.concern.IOrganisation;
import org.hbs.sg.model.concern.Organisation;
import org.hbs.sg.model.course.ICourses;
import org.hbs.util.CommonValidator;

@MappedSuperclass
public abstract class ConsumerUsersBase extends Users implements IConsumerUser
{

	private static final long			serialVersionUID	= 6228372100028740543L;

	protected Set<IConsumerAssessment>	consumerAssessments	= new LinkedHashSet<IConsumerAssessment>(0);

	protected Set<IConsumerCourses>		consumerCourses		= new LinkedHashSet<IConsumerCourses>(0);

	protected Set<IOrganisation>		organisations		= new LinkedHashSet<IOrganisation>(0);

	public ConsumerUsersBase()
	{
		super();
	}

	@OneToMany(mappedBy = "users", targetEntity = ConsumerAssessment.class)
	public Set<IConsumerAssessment> getConsumerAssessments()
	{
		return consumerAssessments;
	}

	@OneToMany(mappedBy = "users", cascade = CascadeType.ALL, targetEntity = ConsumerCourses.class)
	public Set<IConsumerCourses> getConsumerCourses()
	{
		return consumerCourses;
	}

	@ManyToMany(cascade = { CascadeType.ALL }, targetEntity = Organisation.class)
	@JoinTable(name = "consumerorganisation", joinColumns = { @JoinColumn(name = "usEmployeeId") }, inverseJoinColumns = { @JoinColumn(name = "organisationId") })
	public Set<IOrganisation> getOrganisations()
	{
		return organisations;
	}

	@Transient
	public List<ICourses> getCoursesList()
	{
		List<ICourses> courseList = new ArrayList<ICourses>(0);

		if (CommonValidator.isSetFirstNotEmpty(consumerCourses))
		{
			for (IConsumerCourses consumerCourse : consumerCourses)
			{
				if (consumerCourse.isCourseActive())
					courseList.add(consumerCourse.getCourses());
			}
		}
		return courseList;
	}

	@Transient
	public IOrganisation getOrganisation()
	{
		if (CommonValidator.isSetFirstNotEmpty(organisations))
		{
			return organisations.iterator().next();
		}

		return null;
	}

	public void setConsumerAssessments(Set<IConsumerAssessment> consumerAssessments)
	{
		this.consumerAssessments = consumerAssessments;
	}

	public void setConsumerCourses(Set<IConsumerCourses> consumerCourses)
	{
		this.consumerCourses = consumerCourses;
	}

	public void setOrganisations(Set<IOrganisation> organisations)
	{
		this.organisations = organisations;
	}

}