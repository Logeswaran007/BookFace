package org.hbs.admin.model;

import java.sql.Timestamp;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath.EBean;
import org.hbs.admin.model.IAddress.AddressType;
import org.hbs.util.EBusinessKey;
import org.hbs.util.EnumInterface;

public interface IUsers extends ICommonBeanFields, ICountryBase, IProducersBase, EBusinessKey
{
	public enum EUsers implements EnumInterface
	{
		Dummy, SuperAdmin, System, UserImage;
		
		public static IUsers getSessionUser(HttpServletRequest request) throws Exception
		{
			Object object = request.getSession().getAttribute(EBean.User.name());
			if (object == null)
				throw new Exception();
			else
			{
				return (IUsers) object;
			}
		}
	}
	
	public enum EUserStatus implements EnumInterface
	{
		Activated, Blocked, DeActivated, Default, FirstTime, Fradulent, KYC_Incomplete, Pending, RecentPassword, RecentToken, Suspended, Validate;
	}
	
	public enum EUserType implements EnumInterface
	{
		Consumer, Employee, Producer, User;
	
	}
	
	public Set<IUsersAddress> getAddressList();
	
	public IUsersAddress getAddressToDisplay(AddressType addressType);
	
	public IUsersAttachments getAttachment(EnumInterface documentType);
	
	public Set<IUsersAttachments> getAttachmentList();
	
	public IUsersAddress getCommunicationAddress();
	
	public String getDomainUrl(HttpServletRequest request);
	
	public IUserLog getLastLoginInformation();
	
	public String getLastLoginTime();
	
	public String getUsDateOfJoin();
	
	public String getUsDob();
	
	public String getUsEmployeeId();
	
	public Set<IUserLog> getUserLogs();
	
	public Set<IUserRoles> getUserRoleses();
	
	public EUserType getUserType();
	
	public String getUsFatherName();
	
	public String getUsLastName();
	
	public String getUsSex();
	
	public String getUsToken();
	
	public Timestamp getUsTokenExpiryDate();
	
	public String getUsUserId();
	
	public String getUsUserImage();
	
	public String getUsUserName();
	
	public String getUsUserPwd();
	
	public Timestamp getUsUserPwdModDate();
	
	public Boolean getUsUserPwdModFlag();
	
	public String getUsUserStatus();
	
	public String getUsUsersType();
	
	public boolean hasMenuRole(String pathVariable);
	
	public boolean isAdmin();
	
	public boolean isEmployee();
	
	public boolean isSuperAdmin();
	
	public boolean isValid();
	
	public void setAttachmentList(Set<IUsersAttachments> attachmentList);
	
	public void setUsDateOfJoin(String usDateOfJoin);
	
	public void setUsDob(String usDob);
	
	public void setUsEmployeeId(String usEmployeeId);
	
	public void setUserLogs(Set<IUserLog> userLogs);
	
	public void setUserRoleses(Set<IUserRoles> userRoleses);
	
	public void setUsFatherName(String usFatherName);
	
	public void setUsLastName(String usLastName);
	
	public void setUsSex(String usSex);
	
	public void setUsToken(String usToken);
	
	public void setUsTokenExpiryDate(Timestamp usTokenExpiryDate);
	
	public void setUsUserId(String usUserId);
	
	public void setUsUserImage(String usUserImage);
	
	public void setUsUserName(String usUserName);
	
	public void setUsUserPwd(String usUserPwd);
	
	public void setUsUserPwdModDate(Timestamp usUserPwdModDate);
	
	public void setUsUserPwdModFlag(Boolean usUserPwdModFlag);
	
	public void setUsUserStatus(String usUserStatus);
	
	public void setUsUsersType(String usUsersType);
	
}