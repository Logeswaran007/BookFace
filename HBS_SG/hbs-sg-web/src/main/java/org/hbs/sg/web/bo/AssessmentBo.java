package org.hbs.sg.web.bo;

import java.io.Serializable;
import java.util.Set;

import org.hbs.admin.model.IUsers;
import org.hbs.sg.model.exam.Assessment;
import org.hbs.sg.model.exam.IAssessmentQuestion;
import org.hbs.sg.web.controller.AssessmentForm;
import org.hbs.util.DataTableParam;
import org.hbs.util.Response;

public interface AssessmentBo extends Serializable
{
	
	public DataTableParam getAssessmentList(DataTableParam dtParam, boolean isCount);
	
	public boolean saveOrUpdate(Assessment assessment);
	
	public Response createConsumerAssessmentForPractise(DataTableParam dtParam, AssessmentForm assessmentForm, IUsers user);
	
	public Set<IAssessmentQuestion> getPractiseQuestions(DataTableParam dtParam);
	
}