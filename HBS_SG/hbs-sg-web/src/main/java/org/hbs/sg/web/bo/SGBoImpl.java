package org.hbs.sg.web.bo;

import java.util.List;

import org.hbs.admin.dao.GeoDAO;
import org.hbs.admin.dao.UserDAO;
import org.hbs.admin.model.IAddress.AddressType;
import org.hbs.edutel.model.AuthKeyGen;
import org.hbs.sg.model.AlertsAndNotifications;
import org.hbs.sg.model.concern.Organisation;
import org.hbs.sg.web.dao.AssessmentDAO;
import org.hbs.sg.web.dao.InfoAlertDAO;
import org.hbs.sg.web.dao.KeyGenDAO;
import org.hbs.sg.web.dao.OrganisationDAO;
import org.hbs.sg.web.dao.SchemeDAO;
import org.hbs.util.CommonValidator;
import org.hbs.util.DataTableParam;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.IParam.IWrap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class SGBoImpl extends SGBoComboBoxImpl implements SGBo
{
	private static final long serialVersionUID = -7942529344878869154L;

	@Override
	public DataTableParam getAuthKeyGenList(DataTableParam dtParam, boolean isCount)
	{
		ENamed.EqualTo.param_AND(dtParam, "status", true);
		dtParam._OrderBy = " Order By createdDate,users.status Desc";
		return keyGenDAO.getAuthKeyGenList(dtParam, isCount);
	}

	@Override
	public boolean saveOrUpdate(List<AuthKeyGen> authKeyList)
	{
		return keyGenDAO.saveOrUpdate(authKeyList);

	}

	@Override
	public boolean saveOrUpdate(AlertsAndNotifications alerts)
	{
		return infoAlertDAO.saveOrUpdate(alerts);

	}

	@Override
	public boolean saveOrUpdate(Organisation organisation)
	{
		return organisationDAO.saveOrUpdate(organisation);
	}

	@Override
	public DataTableParam getOrganisationList(DataTableParam dtParam, boolean isCount)
	{
		ENamed.EqualTo.param_AND(dtParam, "addressType", AddressType.CommunicationAddress.name());
		ENamed.EqualTo.param_AND(dtParam, "organisation.status", true);
		dtParam._OrderBy = " Order By organisation.createdDate Desc";

		return organisationDAO.getOrganisationList(dtParam, isCount);
	}

	@Override
	public DataTableParam getUserList(DataTableParam dtParam, boolean isCount)
	{
		ENamed.EqualTo.param_AND(dtParam, "users.status", true);
		dtParam._OrderBy = " Order By users.createdDate Desc";

		return userDAO.getUsersList(dtParam, isCount);
	}

	@Override
	public DataTableParam getInformationAlertList(DataTableParam dtParam, boolean isCount)
	{

		if (CommonValidator.isNotNullNotEmpty(dtParam.sSearch))
		{
			ENamed.Like.param_AND(dtParam, "message", dtParam.sSearch, IWrap.ST_BRACE1);
			ENamed.Like.param_OR(dtParam, "messageType", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "scheduledDate", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "expiryDate", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "createdUser.usUserName", dtParam.sSearch, IWrap.ED_BRACE1);
		}
		ENamed.EqualTo.param_AND(dtParam, "status", true);
		dtParam._OrderBy = " Order By createdDate Desc";

		return infoAlertDAO.getInformationAlertList(dtParam, isCount);

	}

	@Override
	public DataTableParam getAssessmentList(DataTableParam dtParam, boolean isCount)
	{

		ENamed.EqualTo.param_AND(dtParam, "status", true);
		dtParam._OrderBy = " Order By createdDate Desc";
		return assessmentDAO.getAssessmentList(dtParam, isCount);
	}

	@Autowired
	protected GeoDAO			geoDAO;

	@Autowired
	protected SchemeDAO			schemeDAO;

	@Autowired
	protected KeyGenDAO			keyGenDAO;

	@Autowired
	protected OrganisationDAO	organisationDAO;

	@Autowired
	protected UserDAO			userDAO;

	@Autowired
	protected InfoAlertDAO		infoAlertDAO;

	@Autowired
	protected AssessmentDAO		assessmentDAO;
}
