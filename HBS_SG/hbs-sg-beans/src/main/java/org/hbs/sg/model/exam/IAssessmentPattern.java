package org.hbs.sg.model.exam;

import java.util.Set;

import org.hbs.admin.model.ICommonBeanFields;
import org.hbs.admin.model.IProducers;

public interface IAssessmentPattern extends ICommonBeanFields
{
	public String getPatternId();

	public String getPatternName();

	public void setPatternId(String patternId);

	public void setPatternName(String patternName);

	public IProducers getProducer();

	public void setProducer(IProducers producer);

	public Set<IAssessmentPatternInfo> getPatternInfoSet();

	public void setPatternInfoSet(Set<IAssessmentPatternInfo> patternInfoSet);

}