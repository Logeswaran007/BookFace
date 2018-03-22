package org.hbs.sg.web.dao;

import java.io.Serializable;
import java.util.List;

import org.hbs.sg.web.controller.AssessmentForm;
import org.hbs.util.DataTableParam;

public interface AssessmentDAO extends Serializable
{
	
	public boolean isPracticeNotExceeds(AssessmentForm aForm);
	
	public List<String> getSelectedAssessmentQuestions(DataTableParam dtParam);
	
	public List<Object[]> getAssessmentDataList(DataTableParam dtParam);
	
}
