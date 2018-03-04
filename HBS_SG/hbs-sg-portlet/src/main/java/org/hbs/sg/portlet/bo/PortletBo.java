package org.hbs.sg.portlet.bo;

import java.io.Serializable;

import org.hbs.util.DataTableParam;
import org.hbs.util.IDataTableParam;

public interface PortletBo extends Serializable
{
	
	public DataTableParam getActivityList(DataTableParam dtParam, boolean isCount);
	
	public IDataTableParam getAssessmentList(DataTableParam dtParam, boolean isCount);
	
	public IDataTableParam getPractiseExamList(DataTableParam dtParam, boolean isCount);
	
	public IDataTableParam getReportCardList(DataTableParam dtParam, boolean isCount);
	
	public DataTableParam getUserLogList(DataTableParam dtParam, boolean isCount);
	
	public IDataTableParam getUsersList(DataTableParam dtParam, boolean isCount);
	
}
