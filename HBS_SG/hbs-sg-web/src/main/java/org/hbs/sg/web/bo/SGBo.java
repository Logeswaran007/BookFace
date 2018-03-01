package org.hbs.sg.web.bo;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.hbs.edutel.model.AuthKeyGen;
import org.hbs.sg.model.AlertsAndNotifications;
import org.hbs.sg.model.concern.Organisation;
import org.hbs.sg.web.controller.SchemeParam;
import org.hbs.util.DataTableParam;

public interface SGBo extends Serializable
{

	public Map<String, String> getComboBoxSchemeMap(SchemeParam schemeParam) throws Exception;

	public DataTableParam getAuthKeyGenList(DataTableParam dtParam, boolean isCount);

	public boolean saveOrUpdate(List<AuthKeyGen> authKeyList);

	public boolean saveOrUpdate(Organisation organisation);

	public boolean saveOrUpdate(AlertsAndNotifications alerts);

	public DataTableParam getOrganisationList(DataTableParam dtParam, boolean isCount);

	public DataTableParam getUserList(DataTableParam dtParam, boolean isCount);

	public DataTableParam getInformationAlertList(DataTableParam dtParam, boolean isCount);

	public DataTableParam getAssessmentList(DataTableParam dtParam, boolean isCount);

}