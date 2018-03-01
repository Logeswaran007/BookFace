package org.hbs.sg.web.dao;

import java.io.Serializable;

import org.hbs.sg.model.exam.Assessment;
import org.hbs.util.DataTableParam;

public interface AssessmentDAO extends Serializable
{
	public DataTableParam getAssessmentList(DataTableParam dtParam, boolean isCount);

	public boolean saveOrUpdate(Assessment assessment);

}
