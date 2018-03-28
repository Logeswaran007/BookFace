package org.hbs.admin.bo;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.LinkedHashSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.controller.param.UserParam;
import org.hbs.admin.dao.UserDAO;
import org.hbs.admin.model.IAddress.AddressType;
import org.hbs.admin.model.IRoles;
import org.hbs.admin.model.IUserRoles;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUserStatus;
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
		DataTableParam param = new DataTableParam();
		
		param.searchBeanClass = Producers.class;
		
		ENamed.EqualTo.param_AND(param, "domainContext", request.getServletContext().getContextPath());
		ENamed.EqualTo.param_AND(param, "status", true);
		
		iBaseDAO.getDataList(param);
		
		if (CommonValidator.isListFirstNotEmpty(param.getDataList()))
			return (Producers) param.dataList.iterator().next();
		else
			return null;
	}
	
	public void getUser(UserParam userParam) throws Exception
	{
		if (userParam.userId.indexOf("@") > 0)
		{
			userParam.searchBeanClass = UsersAddress.class;
			
			ENamed.EqualTo.param_AND(userParam, "email", userParam.userId);
			ENamed.EqualTo.param_AND(userParam, "addressType", AddressType.CommunicationAddress.name());
		}
		else if (userParam.userId.matches("[0-9]+") && userParam.userId.length() == 10)
		{
			userParam.searchBeanClass = UsersAddress.class;
			ENamed.EqualTo.param_AND(userParam, "mobileNo", Long.parseLong(userParam.userId));
			ENamed.EqualTo.param_AND(userParam, "addressType", AddressType.CommunicationAddress.name());
		}
		else
		{
			userParam.searchBeanClass = Users.class;
			ENamed.EqualTo.param_AND(userParam, "usUserId", userParam.userId);
		}
		
		iBaseDAO.getDataList(userParam);
		
		if (CommonValidator.isListFirstNotEmpty(userParam.dataList))
		{
			if (CommonValidator.isEqual(userParam.searchBeanClass.getCanonicalName(), UsersAddress.class.getCanonicalName()))
			{
				userParam.user = ((UsersAddress) userParam.dataList.iterator().next()).getUsers();
			}
			else
			{
				userParam.user = (Users) userParam.dataList.iterator().next();
			}
		}
		
		if (userParam.eUserStatus == EUserStatus.Validate)
			validateAuthenticate(userParam);
		
	}
	
	public IUsers getUserByEmailOrMobileNo(UserParam param)
	{
		param.searchBeanClass = UsersAddress.class;
		iBaseDAO.getDataList(param);
		return ((UsersAddress) param.dataList.iterator().next()).getUsers();
	}
	
	@Override
	public DataTableParam getUsersList(DataTableParam dtParam, boolean isCount)
	{
		dtParam.searchBeanClass = UsersAddress.class;
		
		if (CommonValidator.isNotNullNotEmpty(dtParam.sSearch) && isCount == false)
		{
			ENamed.Like.param_AND(dtParam, "users.usEmployeeId", dtParam.sSearch, IWrap.ST_BRACE1);
			ENamed.Like.param_OR(dtParam, "users.usUserId", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "users.usUserName", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "users.usLastName", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "users.usDob", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "users.usSex", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "users.usUsersType", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "users.usDob", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "users.usSex", dtParam.sSearch);
			ENamed.Like.param_OR(dtParam, "users.usUsersType", dtParam.sSearch, IWrap.ED_BRACE1);
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
	
	@Override
	public boolean saveUserActivity(UserActivity userActivity)
	{
		return iBaseDAO.saveOrUpdate("UserActivity", userActivity);
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
	
	@SuppressWarnings("unchecked")
	public String getMenusByRoleHTML(UserParam userParam)
	{
		
		List<String> rolesList = new ArrayList<String>(0);
		for (IUserRoles userRole : userParam.user.getUserRoleses())
		{
			rolesList.add(userRole.getRoles().getRlRoleId());
		}
		
		userParam.searchBeanClass = MaMenuRole.class;
		userParam.searchBeanClassAlias = "MM";
		userParam.searchColumns = "MM.maMenu";
		userParam._OrderBy = " Order By MM.maMenu.level";
		
		ENamed.EqualTo.param_AND(userParam, "MM.producer.producerId", userParam.user.getProducer().getProducerId());
		ENamed.In.param_AND(userParam, "MM.rlRoles.rlRoleId", rolesList);
		
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
}
