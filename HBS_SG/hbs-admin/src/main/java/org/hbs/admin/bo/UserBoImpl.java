package org.hbs.admin.bo;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.LinkedHashSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.controller.UserParam;
import org.hbs.admin.dao.UserDAO;
import org.hbs.admin.model.IAddress.AddressType;
import org.hbs.admin.model.IRoles;
import org.hbs.admin.model.IUserRoles;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUserStatus;
import org.hbs.admin.model.IUsers.EUserType;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.admin.model.MaMenu;
import org.hbs.admin.model.MaMenuRole;
import org.hbs.admin.model.Producers;
import org.hbs.admin.model.Roles;
import org.hbs.admin.model.UserActivity;
import org.hbs.admin.model.UserLog;
import org.hbs.admin.model.UserRoles;
import org.hbs.admin.model.Users;
import org.hbs.admin.model.UsersAddress;
import org.hbs.util.CommonValidator;
import org.hbs.util.DataTableParam;
import org.hbs.util.IConstProperty;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.IParam.IWrap;
import org.hbs.util.dao.IBaseDAO;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ansi.AnsiOutput.Enabled;
import org.springframework.stereotype.Component;

@Component
public class UserBoImpl extends UserBoComboBoxImpl implements UserBo, IConstProperty
{
	private static final long	serialVersionUID	= 2685542022188828413L;
	
	@Autowired
	protected IBaseDAO			iBaseDAO;
	
	@Autowired
	protected UserDAO			userDAO;
	
	@Override
	public Producers getProducers(HttpServletRequest request)
	{
		DataTableParam param = new DataTableParam(Producers.class, "P");
		
		ENamed.EqualTo.param_AND(param, "P.domainContext", request.getServletContext().getContextPath());
		ENamed.EqualTo.param_AND(param, "P.status", true);
		
		iBaseDAO.getDataList(param);
		
		if (CommonValidator.isListFirstNotEmpty(param.getDataList()))
			return (Producers) param.dataList.iterator().next();
		else
			return null;
	}
	
	public UserParam getLoginUser(UserParam userParam) throws Exception
	{
		if (userParam.userId.indexOf("@") > 0)
		{
			userParam.addBean(UsersAddress.class, "UA");
			userParam.searchColumns = " UA.users.usEmployeeId, UA.users.usUserPwd, UA.users.usUserStatus, UR.roles.rlRoleId ";
			userParam.join(" UA.users.userRoleses UR ");
			userParam.equal("UA.users.usEmployeeId", "UR.users.usEmployeeId");
			
			ENamed.EqualTo.param_AND(userParam, "email", userParam.userId);
			ENamed.EqualTo.param_AND(userParam, "addressType", AddressType.CommunicationAddress.name());
		}
		else if (userParam.userId.matches("[0-9]+") && userParam.userId.length() == 10)
		{
			userParam.addBean(UsersAddress.class, "UA");
			userParam.searchColumns = " UA.users.usEmployeeId, UA.users.usUserPwd, UA.users.usUserStatus, UR.roles.rlRoleId ";
			userParam.join(" UA.users.userRoleses UR ");
			userParam.equal("UA.users.usEmployeeId", "UR.users.usEmployeeId");
			
			ENamed.EqualTo.param_AND(userParam, "UA.mobileNo", Long.parseLong(userParam.userId));
			ENamed.EqualTo.param_AND(userParam, "UA.addressType", AddressType.CommunicationAddress.name());
		}
		else
		{
			userParam.addBean(Users.class, "U");
			userParam.searchColumns = " U.usEmployeeId, U.usUserPwd, U.usUserStatus, UR.roles.rlRoleId ";
			userParam.join(" U.userRoleses UR ");
			ENamed.EqualTo.param_AND(userParam, "U.usUserId", userParam.userId);
			userParam.equal("U.usEmployeeId", "UR.users.usEmployeeId");
		}
		
		iBaseDAO.getDataList(userParam);
		
		if (userParam.eUserStatus == EUserStatus.Validate)
			validateAuthenticate(userParam);
		return userParam;
	}
	
	public IUsers getUserByEmailOrMobileNo(UserParam userParam)
	{
		userParam.addBean(UsersAddress.class, "UA");
		iBaseDAO.getDataList(userParam);
		return userParam.user = ((UsersAddress) userParam.dataList.iterator().next()).getUsers();
	}
	
	@Override
	public DataTableParam getUsersList(DataTableParam dtParam, boolean isCount)
	{
		dtParam.addBean(UsersAddress.class, "UA");
		
		if (CommonValidator.isNotNullNotEmpty(dtParam.sSearch) && isCount == false)
		{
			ENamed.Like.param_AND(dtParam, "UA.users.usEmployeeId", dtParam.sSearch, IWrap.ST_BRACE1);
			ENamed.Like.param_OR(dtParam, "UA.users.usUserId", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "UA.users.usUserName", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "UA.users.usLastName", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "UA.users.usDob", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "UA.users.usSex", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "UA.users.usUsersType", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "UA.users.usDob", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "UA.users.usSex", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "UA.users.usUsersType", dtParam.sSearch, IWrap.ED_BRACE1);
		}
		if (CommonValidator.isNotNullNotEmpty(dtParam.sSortDirection))
		{
			dtParam._OrderBy = " Order By UA.users.createdDate " + dtParam.sSortDirection;
		}
		else
		{
			dtParam._OrderBy = " Order By UA.users.createdDate Desc";
		}
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	public boolean userLogAtLogin(IUsers user, String ipAddr)
	{
		UserLog userLog = new UserLog();
		userLog.setUsers(user);
		userLog.setUlUserLoginTime(new Timestamp(Calendar.getInstance().getTimeInMillis()));
		userLog.setUlIpaddress(ipAddr);
		
		return iBaseDAO.saveOrUpdate("UserLog", userLog);
		
	}
	
	public boolean userLogAtLogOut(UserParam userParam)
	{
		return userDAO.userLogAtLogOut(userParam);
	}
	
	@Override
	public boolean saveOrUpdate(IUsers users, String... iRoles) throws InstantiationException, IllegalAccessException
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
			
			return iBaseDAO.saveOrUpdate("Users", users);
		}
		return false;
	}
	
	public boolean saveOrUpdate(IUsers users)
	{
		return iBaseDAO.saveOrUpdate("Users", users);
	}
	
	private void validateAuthenticate(UserParam userParam) throws Exception
	{
		if (CommonValidator.isListFirstNotEmpty(userParam.dataList))
		{
			Object[] userData = (Object[]) userParam.dataList.iterator().next();
			
			switch ( EUserStatus.valueOf(userData[2].toString()) )
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
		else
			throw new Exception("User Id or Password is incorrect.");
	}
	
	@SuppressWarnings("unchecked")
	public String getMenusByRoleHTML(UserParam userParam)
	{
		
		userParam.addBean(MaMenuRole.class, "MR").addBean(UserRoles.class, "UR");
		userParam.equal("MR.roles.rlRoleId", "UR.roles.rlRoleId");
		userParam.searchColumns = " MR.maMenu ";
		userParam._OrderBy = " Order By MR.maMenu.level";
		
		ENamed.EqualTo.param_AND(userParam, "UR.users.usEmployeeId", userParam.user.getUsEmployeeId());
		
		List<MaMenu> maMenuList = (List<MaMenu>) iBaseDAO.getDataList(userParam).getDataList();
		Document doc = Jsoup.parse("<div></div>");
		Element parent = doc.select("div").first();
		MaMenu menu = null;
		for (int i = 0; i < maMenuList.size(); i++)
		{
			menu = maMenuList.get(i);
			menu._getMenuHTML(parent, (i == 0 ? "start active" : (i == maMenuList.size() - 1) ? "last " : ""));
		}
		return parent.html().replaceAll("\n", "");
	}
	
	@Override
	public UserParam getUserById(UserParam userParam)
	{
		
		userParam.addBean(Users.class, "U");
		userParam.fetch(" U.producer P"); // This is working
		userParam.fetch(" U.country C");// This is working
		userParam.fetch(" U.createdUser UC");// This is working
		
		ENamed.EqualTo.param_AND(userParam, "U.usEmployeeId", userParam.userId);
		
		iBaseDAO.getDataList(userParam);
		
		if (CommonValidator.isListFirstNotEmpty(userParam.dataList))
		{
			userParam.user = (IUsers) userParam.dataList.iterator().next();
		}
		
		return userParam;
	}
	
	@Override
	public boolean saveOrUpdate(UserActivity userActivity)
	{
		return iBaseDAO.saveOrUpdate("UserActivity", userActivity);
	}

	@Override
	public DataTableParam getNumberOfUsersCount(DataTableParam dtParam, boolean isCount)
	{
		dtParam.addBean(Users.class, "U");
		ENamed.EqualTo.param_AND(dtParam, "U.status", true);
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
		
	}

	@Override
	public DataTableParam getNumberOfConsumersCount(DataTableParam dtParam, boolean isCount)
	{
		dtParam.addBean(Users.class, "U");
		ENamed.EqualTo.param_AND(dtParam,"U.usUsersType",EUserType.Consumer.name());
		ENamed.EqualTo.param_AND(dtParam, "U.status", true);
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	@Override
	public DataTableParam getNumberOfActiveUsersCount(DataTableParam dtParam, boolean isCount)
	{
		dtParam.addBean(Users.class, "U");
		ENamed.EqualTo.param_AND(dtParam,"U.usUserStatus",EUserStatus.Activated.name());
		ENamed.EqualTo.param_AND(dtParam, "U.status", true);
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}

	@Override
	public DataTableParam getNumberOfKYCUsersCount(DataTableParam dtParam, boolean isCount)
	{
		dtParam.addBean(Users.class, "U");
		ENamed.EqualTo.param_AND(dtParam,"U.usUserStatus",EUserStatus.Pending.name());
		ENamed.EqualTo.param_AND(dtParam, "U.status", true);
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	
	
}
