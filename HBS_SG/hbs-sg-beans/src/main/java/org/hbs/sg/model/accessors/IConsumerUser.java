package org.hbs.sg.model.accessors;

import java.util.List;
import java.util.Set;

import org.hbs.admin.model.IUsers;
import org.hbs.sg.model.concern.IOrganisation;
import org.hbs.sg.model.course.ICourses;

public interface IConsumerUser extends IUsers
{
	public Set<IConsumerAssessment> getConsumerAssessments();
	
	public Set<IConsumerCourses> getConsumerCourses();
	
	public List<ICourses> getCoursesList();
	
	public IOrganisation getOrganisation();
	
	public Set<IOrganisation> getOrganisations();
	
	public void setConsumerAssessments(Set<IConsumerAssessment> consumerAssessments);
	
	public void setConsumerCourses(Set<IConsumerCourses> courses);
	
	public void setOrganisations(Set<IOrganisation> organisations);
}