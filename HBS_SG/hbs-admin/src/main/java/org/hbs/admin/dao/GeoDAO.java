package org.hbs.admin.dao;

import org.hbs.util.DataTableParam;

public interface GeoDAO
{
	public DataTableParam getStateList(DataTableParam dtParam);

	public DataTableParam getCountryList(DataTableParam dtParam);

}
