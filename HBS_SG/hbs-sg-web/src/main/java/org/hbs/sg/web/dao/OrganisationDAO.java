package org.hbs.sg.web.dao;

import java.io.Serializable;

import org.hbs.sg.model.concern.Organisation;
import org.hbs.util.DataTableParam;

public interface OrganisationDAO extends Serializable
{
	public boolean saveOrUpdate(Organisation organisation);

	public DataTableParam getOrganisationList(DataTableParam dtParam, boolean isCount);

}
