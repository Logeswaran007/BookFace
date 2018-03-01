package org.hbs.sg.portlet.dao;

import java.io.Serializable;

import org.hbs.util.DataTableParam;

public interface PortletDAO extends Serializable
{
	public DataTableParam getSearchList(DataTableParam dtParam, boolean isCount);

}
