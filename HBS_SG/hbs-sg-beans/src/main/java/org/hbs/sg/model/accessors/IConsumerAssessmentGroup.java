package org.hbs.sg.model.accessors;

import org.hbs.sg.model.exam.IAssessment;
import org.hbs.util.ICRUDBean;

public interface IConsumerAssessmentGroup extends ICRUDBean
{
	public int getAutoId();
	
	public void setAutoId(int autoId);
	
	public IAssessment getAssessment();
	
	public void setAssessment(IAssessment assessment);
	
	public IConsumerAssessment getConsumerAssessment();
	
	public void setConsumerAssessment(IConsumerAssessment consumerAssessment);
}
