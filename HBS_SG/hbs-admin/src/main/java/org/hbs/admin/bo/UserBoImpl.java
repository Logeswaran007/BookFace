package org.hbs.admin.bo;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;

import org.hbs.admin.controller.param.UserParam;
import org.hbs.admin.dao.UserDAO;
import org.hbs.admin.model.IAddress.AddressType;
import org.hbs.admin.model.IRoles;
import org.hbs.admin.model.IUserActivity;
import org.hbs.admin.model.IUserRoles;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUserStatus;
import org.hbs.admin.model.Roles;
import org.hbs.admin.model.UserRoles;
import org.hbs.admin.model.Users;
import org.hbs.admin.model.UsersAddress;
import org.hbs.util.CommonValidator;
import org.hbs.util.DataTableParam;
import org.hbs.util.IConstProperty;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.IParam.IWrap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserBoImpl extends UserBoComboBoxImpl implements UserBo, IConstProperty
{
	private static final long	serialVersionUID	= 2685542022188828413L;

	@Autowired
	protected UserDAO			userDAO;

	public IUsers getUserByEmailOrMobileNo(UserParam userParam)
	{
		return userDAO.getUser(userParam, UsersAddress.class);
	}

	public void getUser(UserParam userParam) throws Exception
	{

		if (userParam.userId.indexOf("@") > 0)
		{
			ENamed.EqualTo.param_AND(userParam, "email", userParam.userId);
			ENamed.EqualTo.param_AND(userParam, "addressType", AddressType.CommunicationAddress.name());

			userParam.user = userDAO.getUser(userParam, UsersAddress.class);
		}
		else if (userParam.userId.matches("[0-9]+") && userParam.userId.length() == 10)
		{
			ENamed.EqualTo.param_AND(userParam, "mobileNo", Long.parseLong(userParam.userId));
			ENamed.EqualTo.param_AND(userParam, "addressType", AddressType.CommunicationAddress.name());

			userParam.user = userDAO.getUser(userParam, UsersAddress.class);
		}
		else
		{
			ENamed.EqualTo.param_AND(userParam, "usUserId", userParam.userId);
			userParam.user = userDAO.getUser(userParam, Users.class);
		}

		if (userParam.eUserStatus == EUserStatus.Validate)
			validateAuthenticate(userParam);

	}

	private void validateAuthenticate(UserParam userParam) throws Exception
	{
		if (CommonValidator.isNullOrEmpty(userParam.user))
			throw new Exception("User Id or Password is incorrect.");
		else
		{
			switch ( EUserStatus.valueOf(userParam.user.getUsUserStatus()) )
			{
				case Pending :
					throw new Exception("You Account not yet activated. Please contact Administrator.");
				case Activated :
					userParam.action = EPage.Success.name();
					break;
				case DeActivated :
					throw new Exception("You Account has been deactivated. Please contact Administrator.");
				case Blocked :
					throw new Exception("You Account has been blocked. Please contact Administrator.");
				case Suspended :
					throw new Exception("You Account has been suspended. Please contact Administrator.");
				case Fradulent :
					throw new Exception("System has identified fradulent activities. You Account has been blocked. Please contact Administrator.");
				case FirstTime :
					userParam.action = EUserStatus.FirstTime.name();
				case KYC_Incomplete :
					userParam.action = EUserStatus.KYC_Incomplete.name();
				default :
					break;
			}
		}
	}

	@Override
	public DataTableParam getUsersList(DataTableParam dtParam, boolean isCount)
	{

		ENamed.EqualTo.param_AND(dtParam, "status", true);
		if (CommonValidator.isNotNullNotEmpty(dtParam.sSearch) && isCount == false)
		{
			ENamed.Like.param_AND(dtParam, "usEmployeeId", dtParam.sSearch, IWrap.ST_BRACE1);
			ENamed.Like.param_OR(dtParam, "usUserId", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "usUserName", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "usLastName", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "usDob", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "usSex", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "usUsersType", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "usDob", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "usSex", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "usUsersType", dtParam.sSearch, IWrap.ED_BRACE1);
		}
		if (CommonValidator.isNotNullNotEmpty(dtParam.sSortDirection))
		{
			dtParam._OrderBy = ENamed.OrderBy.param("createdDate") + SPACE + dtParam.sSortDirection;
		}
		else
		{
			dtParam._OrderBy = ENamed.OrderBy.param("createdDate") + DESC;
		}
		return userDAO.getUsersList(dtParam, isCount);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<IUsers> getUsersList(UserParam userParam)
	{
		userParam = userDAO.getUsersList(userParam);
		if (CommonValidator.isListFirstNotEmpty(userParam.dataList))
			return (List<IUsers>) userParam.dataList;
		return new ArrayList<IUsers>(0);

	}

	@Override
	public void saveUserActivity(IUserActivity userActivity)
	{
		userDAO.saveUserActivity(userActivity);
	}

	public void setUserDAO(UserDAO userDAO)
	{
		this.userDAO = userDAO;
	}

	public void userLogAtLogin(IUsers user, String ipAddr)
	{
		userDAO.userLogAtLogin(user, ipAddr);

	}

	public void userLogAtLogOut(UserParam userParam)
	{
		userDAO.userLogAtLogOut(userParam);
	}

	@Override
	public boolean userSave(IUsers users, String... iRoles) throws InstantiationException, IllegalAccessException
	{
		if (CommonValidator.isNotNullNotEmpty(users.getUsEmployeeId()) && CommonValidator.isArrayFirstNotNull(iRoles))
		{
			users.setUserRoleses(new LinkedHashSet<IUserRoles>(iRoles.length));

			IUserRoles iUR = null;

			IRoles iR = null;

			for (String rlRoleId : iRoles)
			{
				iUR = new UserRoles();
				iUR.setUsers(users);
				iR = new Roles();
				iR.setRlRoleId(rlRoleId);
				iUR.setRoles(iR);

				users.getUserRoleses().add(iUR);
			}
			return userDAO.userSave(users);
		}
		return false;
	}

	@Override
	public boolean userUpdate(IUsers users)
	{
		return userDAO.userUpdate(users);
	}

}
