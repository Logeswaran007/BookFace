package org.hbs.sg.web.dao;

import java.io.Serializable;

import org.hbs.sg.model.AlertsAndNotifications;
import org.hbs.util.DataTableParam;

public interface InfoAlertDAO extends Serializable
{

	public DataTableParam getInformationAlertList(DataTableParam dtParam, boolean isCount);

	public boolean saveOrUpdate( AlertsAndNotifications alerts);

}
