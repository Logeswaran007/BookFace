package org.hbs.sg.model.accessors;

import org.hbs.sg.model.exam.IAssessment;
import org.hbs.util.dao.ICRUDBean;

public interface IConsumerAssessmentGroup extends ICRUDBean
{
	public IAssessment getAssessment();
	
	public void setAssessment(IAssessment assessment);
	
	public IConsumerAssessment getConsumerAssessment();
	
	public void setConsumerAssessment(IConsumerAssessment consumerAssessment);
}
