package org.hbs.sg.model.exam;

import java.util.Set;

import org.hbs.admin.model.ICommonBeanFields;
import org.hbs.sg.model.accessors.IConsumerAssessment;
import org.hbs.sg.model.accessors.IProducersAssessment;
import org.hbs.sg.model.course.IChapters;
import org.hbs.sg.model.course.ICourses;

public interface IAssessment extends ICommonBeanFields
{

	public String getAssessmentId();

	public IChapters getChapter();

	public Set<IConsumerAssessment> getConsumerAssessments();

	public ICourses getCourse();

	public IAssessmentInformation getInfo();

	public String getName();

	public IAssessmentPattern getPattern();

	public Set<IProducersAssessment> getProducers();

	public Set<IAssessmentQuestion> getQuestions();

	public String getRepoMode();

	public String getType();

	public void setAssessmentId(String assessmentId);

	public void setChapter(IChapters chapter);

	public void setConsumerAssessments(Set<IConsumerAssessment> consumerAssessments);

	public void setCourse(ICourses course);

	public void setInfo(IAssessmentInformation info);

	public void setName(String assessmentName);

	public void setPattern(IAssessmentPattern pattern);

	public void setProducers(Set<IProducersAssessment> producers);

	public void setQuestions(Set<IAssessmentQuestion> questions);

	public void setRepoMode(String repoMode);

	public void setType(String type);

}