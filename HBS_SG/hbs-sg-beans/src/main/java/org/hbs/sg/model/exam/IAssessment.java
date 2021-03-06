package org.hbs.sg.model.exam;

import java.util.Set;

import org.hbs.admin.model.ICommonBeanFields;
import org.hbs.sg.model.accessors.IConsumerAssessmentGroup;
import org.hbs.sg.model.accessors.IProducersAssessment;
import org.hbs.sg.model.course.IChapters;
import org.hbs.sg.model.course.ICourses;
import org.hbs.util.EBusinessKey;
import org.hbs.util.ICRUDBean;

public interface IAssessment extends ICommonBeanFields, EBusinessKey, ICRUDBean
{
	
	public String getAssessmentId();
	
	public IChapters getChapter();
	
	public Set<IConsumerAssessmentGroup> getConsumerAssessmentGroups();
	
	public ICourses getCourse();
	
	public AssessmentInformation getInfo();
	
	public String getName();
	
	public IAssessmentPattern getPattern();
	
	public Set<IProducersAssessment> getProducersAssessment();
	
	public Set<IAssessmentQuestion> getQuestions();
	
	public String getRepoMode();
	
	public String getType();
	
	public void setAssessmentId(String assessmentId);
	
	public void setChapter(IChapters chapter);
	
	public void setConsumerAssessmentGroups(Set<IConsumerAssessmentGroup> consumerAssessmentGroups);
	
	public void setCourse(ICourses course);
	
	public void setInfo(AssessmentInformation info);
	
	public void setName(String assessmentName);
	
	public void setPattern(IAssessmentPattern pattern);
	
	public void setProducersAssessment(Set<IProducersAssessment> producersAssessment);
	
	public void setQuestions(Set<IAssessmentQuestion> questions);
	
	public void setRepoMode(String repoMode);
	
	public void setType(String type);
	
}