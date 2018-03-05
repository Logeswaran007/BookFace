package org.hbs.sg.model.exam;

import java.util.Set;

import org.hbs.admin.model.ICommonBeanFields;
import org.hbs.admin.model.IProducers;
import org.hbs.util.dao.ICRUDBean;

public interface IAssessmentPattern extends ICommonBeanFields, ICRUDBean
{
	public String getPatternId();
	
	public Set<IAssessmentPatternInfo> getPatternInfoSet();
	
	public String getPatternName();
	
	public IProducers getProducer();
	
	public void setPatternId(String patternId);
	
	public void setPatternInfoSet(Set<IAssessmentPatternInfo> patternInfoSet);
	
	public void setPatternName(String patternName);
	
	public void setProducer(IProducers producer);
	
}