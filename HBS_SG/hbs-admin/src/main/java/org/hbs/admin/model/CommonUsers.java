package org.hbs.admin.model;

import java.util.LinkedHashSet;

import javax.persistence.MappedSuperclass;
import javax.persistence.Transient;
import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.PasswordEncrypt;
import org.hbs.admin.model.IAddress.AddressType;
import org.hbs.admin.model.IRoles.ERole;
import org.hbs.util.CommonUtil;
import org.hbs.util.CommonValidator;
import org.hbs.util.EnumInterface;
import org.hbs.util.IConstProperty;

@MappedSuperclass
public abstract class CommonUsers extends CommonUsersBase
{
	private static final long serialVersionUID = 5331946490137030437L;
	
	public static IUsers createDummyUser(IProducers producer) throws InstantiationException, IllegalAccessException
	{
		IUsers dummyUser = new Users();
		dummyUser.setUsEmployeeId(EUsers.Dummy.name());
		dummyUser.setUsUserName(EUsers.Dummy.name());
		return dummyUser;
	}
	
	public static IUsers createSuperAdminUser(IProducers producer) throws InstantiationException, IllegalAccessException
	{
		IUsers superAdminUser = new Users();
		superAdminUser.setUsEmployeeId(EUsers.SuperAdmin.name());
		superAdminUser.setUsUserName(EUsers.SuperAdmin.name());
		return superAdminUser;
	}
	
	public static IUsers createSystemUser(IProducers producer) throws InstantiationException, IllegalAccessException
	{
		IUsers systemUser = new Users();
		systemUser.setUsEmployeeId(EUsers.System.name());
		systemUser.setUsUserName(EUsers.System.name());
		return systemUser;
	}
	
	public static Users createUserInstance(Producers producer, EUserType userType) throws InstantiationException, IllegalAccessException
	{
		Users user = new Users(userType);
		user.setProducer(producer);
		user.setAddressList(new LinkedHashSet<IUsersAddress>(1));
		user.getAddressList().add(new UsersAddress(AddressType.CommunicationAddress));
		return user;
	}
	
	public CommonUsers()
	{
		super();
	}
	
	@Transient
	public IUsersAddress getAddressToDisplay(AddressType addressType)
	{
		
		if (CommonValidator.isSetFirstNotEmpty(addressList))
		{
			for (IUsersAddress address : addressList)
			{
				if (CommonValidator.isEqual(address.getAddressType(), addressType))
					return address;
			}
		}
		return null;
	}
	
	@Transient
	public IUsersAttachments getAttachment(EnumInterface documentType)
	{
		if (CommonValidator.isSetFirstNotEmpty(attachmentList))
		{
			for (IUsersAttachments attachments : attachmentList)
			{
				if (CommonValidator.isEqual(attachments.getUploadDocumentForType(), documentType))
					return attachments;
			}
		}
		return null;
	}
	
	@Override
	public String getDomainUrl(HttpServletRequest request)
	{
		if (CommonValidator.isNotNullNotEmpty(producer, producer.getDomainContext()))
			
			return producer.getDomainContext();
		
		return request.getServletContext().getContextPath();
	}
	
	@Transient
	public IUserLog getLastLoginInformation()
	{
		if (CommonValidator.isSetFirstNotEmpty(userLogs))
		{
			return userLogs.iterator().next();
		}
		return null;
	}
	
	@Transient
	public String getLastLoginTime()
	{
		IUserLog userLog = getLastLoginInformation();
		if (CommonValidator.isNotNullNotEmpty(userLog))
		{
			return CommonUtil.getDateByTimeZoneFormat(userLog.getUlUserLoginTime(), IConstProperty.DATE_FORMAT_DD_MMM_YYYY_HH_MM_AM_PM);
		}
		return "";
	}
	
	@Transient
	public boolean hasMenuRole(String pathVariable)
	{
		if (CommonValidator.isSetFirstNotEmpty(userRoleses))
		{
			for (IUserRoles userRole : userRoleses)
			{
				if (CommonValidator.isEqual(userRole.getRoles().getRlRoleId(), ERole.SuperAdminRole.name()))
					return true;
				
				for (MaMenuRole menuRole : userRole.getRoles().getMenuRoles())
				{
					if (CommonValidator.isNotNullNotEmpty(menuRole.getMaMenu()) && menuRole.getMaMenu().getActionURL().startsWith(pathVariable))
						return true;
				}
			}
		}
		
		return false;
	}
	
	@Transient
	public boolean isAdmin()
	{
		if (CommonValidator.isSetFirstNotEmpty(userRoleses))
		{
			for (IUserRoles userRole : userRoleses)
			{
				if (userRole.getRoles().getIsAdminRole())
					return true;
			}
		}
		
		return false;
	}
	
	@Transient
	public boolean isEmployee()
	{
		if (CommonValidator.isSetFirstNotEmpty(userRoleses))
		{
			for (IUserRoles usrRole : userRoleses)
			{
				if (CommonValidator.isEqual(usrRole.getRoles().getRlRoleType(), ERole.Employee.name()))
					return true;
			}
		}
		return false;
	}
	
	@Transient
	public boolean isSuperAdmin()
	{
		if (CommonValidator.isSetFirstNotEmpty(userRoleses))
		{
			for (IUserRoles userRole : userRoleses)
			{
				if (CommonValidator.isEqual(userRole.getRoles().getRlRoleId(), ERole.SuperAdminRole.name()))
					return true;
			}
		}
		return false;
	}
	
	@Transient
	public boolean isValid()
	{
		if (CommonValidator.isNotNullNotEmpty(usUserStatus))
		{
			String encryptText = new StringBuilder(usUserStatus).reverse().toString();
			encryptText = PasswordEncrypt.decryptBase64(encryptText);
			String auth[] = encryptText.split("-");
			
			if (encryptText.indexOf("-") > 0 && auth.length == 3 && CommonValidator.isEqual(auth[0], usUserName))
			{
				IAddress address = getAddressToDisplay(AddressType.CommunicationAddress);
				return (CommonValidator.isEqual(auth[1], address.getEmail()) && CommonValidator.isEqual(auth[2], address.getMobileNo().toString()));
			}
		}
		return false;
	}
}
