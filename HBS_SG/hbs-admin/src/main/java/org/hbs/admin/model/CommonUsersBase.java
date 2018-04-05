package org.hbs.admin.model;

import java.sql.Timestamp;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Transient;

import org.hbs.admin.model.IAddress.AddressType;
import org.hbs.util.CommonValidator;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.Where;

@MappedSuperclass
public abstract class CommonUsersBase extends CountryBase implements IUsers
{
	
	private static final long			serialVersionUID	= -7527216318945401365L;
	
	protected Set<IUsersAddress>		addressList			= new LinkedHashSet<IUsersAddress>(0);
	
	protected Set<IUsersAttachments>	attachmentList		= new LinkedHashSet<IUsersAttachments>(0);
	
	protected IUsersAddress				communicationAddress;
	
	protected String					usDateOfJoin;
	
	protected String					usDob;
	
	protected String					usEmployeeId;
	
	protected Set<IUserLog>				userLogs			= new LinkedHashSet<IUserLog>(0);
	
	protected Set<IUserRoles>			userRoleses			= new LinkedHashSet<IUserRoles>(0);
	
	protected String					usFatherName;
	
	protected String					usLastName;
	
	protected String					usSex;
	
	protected String					usToken;
	
	protected Timestamp					usTokenExpiryDate;
	
	protected String					usUserId;
	
	protected String					usUserImage;
	
	protected String					usUserName;
	
	protected String					usUserPwd;
	
	protected Timestamp					usUserPwdModDate;
	
	protected Boolean					usUserPwdModFlag;
	
	protected String					usUserStatus;
	
	protected String					usUsersType;
	
	protected String					usFolderToken;
	
	public CommonUsersBase()
	{
		super();
	}
	
	@Column(name = "usFolderToken")
	public String getUsFolderToken()
	{
		return usFolderToken;
	}
	
	public void setUsFolderToken(String usFolderToken)
	{
		this.usFolderToken = usFolderToken;
	}
	
	@OneToMany(targetEntity = UsersAddress.class, fetch = FetchType.LAZY, mappedBy = "users", cascade = CascadeType.ALL)
	@Fetch(FetchMode.JOIN)
	public Set<IUsersAddress> getAddressList()
	{
		return addressList;
	}
	
	@OneToMany(targetEntity = UsersAttachments.class, fetch = FetchType.LAZY, mappedBy = "users", cascade = CascadeType.ALL)
	@Fetch(FetchMode.JOIN)
	public Set<IUsersAttachments> getAttachmentList()
	{
		return attachmentList;
	}
	
	@Transient
	public IUsersAddress getCommunicationAddress()
	{
		if (communicationAddress == null && CommonValidator.isSetFirstNotEmpty(getAddressList()))
		{
			for (IUsersAddress address : getAddressList())
			{
				if (CommonValidator.isEqual(address.getAddressType(), AddressType.CommunicationAddress))
					communicationAddress = address;
			}
		}
		return communicationAddress;
	}
	
	@Column(name = "usDateOfJoin")
	public String getUsDateOfJoin()
	{
		return usDateOfJoin;
	}
	
	@Column(name = "usDob")
	public String getUsDob()
	{
		return usDob;
	}
	
	@Id
	@Column(name = "usEmployeeId")
	public String getUsEmployeeId()
	{
		return usEmployeeId;
	}
	
	@OneToMany(targetEntity = UserLog.class, fetch = FetchType.LAZY, mappedBy = "users")
	@Fetch(FetchMode.JOIN)
	@Where(clause = "ulFetchBlock = true")
	@OrderBy("ulUserLoginTime DESC")
	public Set<IUserLog> getUserLogs()
	{
		return userLogs;
	}
	
	@OneToMany(targetEntity = UserRoles.class, fetch = FetchType.LAZY, mappedBy = "users")
	@Fetch(FetchMode.JOIN)
	public Set<IUserRoles> getUserRoleses()
	{
		return userRoleses;
	}
	
	@Column(name = "usFatherName")
	public String getUsFatherName()
	{
		return usFatherName;
	}
	
	@Column(name = "usLastName")
	public String getUsLastName()
	{
		return usLastName;
	}
	
	@Column(name = "usSex")
	public String getUsSex()
	{
		return usSex;
	}
	
	@Column(name = "usToken")
	public String getUsToken()
	{
		return usToken;
	}
	
	@Column(name = "usTokenExpiryDate")
	public Timestamp getUsTokenExpiryDate()
	{
		return usTokenExpiryDate;
	}
	
	@Column(name = "usUserId")
	public String getUsUserId()
	{
		return usUserId;
	}
	
	@Transient
	public String getUsUserImage()
	{
		return usUserImage;
	}
	
	@Column(name = "usUserName")
	public String getUsUserName()
	{
		return usUserName;
	}
	
	@Column(name = "usUserPwd")
	public String getUsUserPwd()
	{
		return usUserPwd;
	}
	
	@Column(name = "usUserPwdModDate")
	public Timestamp getUsUserPwdModDate()
	{
		return usUserPwdModDate;
	}
	
	@Column(name = "usUserPwdModFlag")
	public Boolean getUsUserPwdModFlag()
	{
		return usUserPwdModFlag;
	}
	
	@Column(name = "usUserStatus")
	public String getUsUserStatus()
	{
		return usUserStatus;
	}
	
	@Column(name = "usUsersType", insertable = false, updatable = false)
	public String getUsUsersType()
	{
		return usUsersType;
	}
	
	public void setAddressList(Set<IUsersAddress> addressList)
	{
		this.addressList = addressList;
	}
	
	public void setAttachmentList(Set<IUsersAttachments> attachmentList)
	{
		this.attachmentList = attachmentList;
	}
	
	public void setCommunicationAddress(IUsersAddress communicationAddress)
	{
		this.communicationAddress = communicationAddress;
	}
	
	public void setUsDateOfJoin(String usDateOfJoin)
	{
		this.usDateOfJoin = usDateOfJoin;
	}
	
	public void setUsDob(String usDob)
	{
		this.usDob = usDob;
	}
	
	public void setUsEmployeeId(String usEmployeeId)
	{
		this.usEmployeeId = usEmployeeId;
	}
	
	public void setUserLogs(Set<IUserLog> userLogs)
	{
		this.userLogs = userLogs;
	}
	
	public void setUserRoleses(Set<IUserRoles> userRoleses)
	{
		this.userRoleses = userRoleses;
	}
	
	public void setUsFatherName(String usFatherName)
	{
		this.usFatherName = usFatherName;
	}
	
	public void setUsLastName(String usLastName)
	{
		this.usLastName = usLastName;
	}
	
	public void setUsSex(String usSex)
	{
		this.usSex = usSex;
	}
	
	public void setUsToken(String usToken)
	{
		this.usToken = usToken;
	}
	
	public void setUsTokenExpiryDate(Timestamp usTokenExpiryDate)
	{
		this.usTokenExpiryDate = usTokenExpiryDate;
	}
	
	public void setUsUserId(String usUserId)
	{
		this.usUserId = usUserId;
	}
	
	public void setUsUserImage(String usUserImage)
	{
		this.usUserImage = usUserImage;
	}
	
	public void setUsUserName(String usUserName)
	{
		this.usUserName = usUserName;
	}
	
	public void setUsUserPwd(String usUserPwd)
	{
		this.usUserPwd = usUserPwd;
	}
	
	public void setUsUserPwdModDate(Timestamp usUserPwdModDate)
	{
		this.usUserPwdModDate = usUserPwdModDate;
	}
	
	public void setUsUserPwdModFlag(Boolean usUserPwdModFlag)
	{
		this.usUserPwdModFlag = usUserPwdModFlag;
	}
	
	public void setUsUserStatus(String usUserStatus)
	{
		this.usUserStatus = usUserStatus;
	}
	
	public void setUsUsersType(String usUsersType)
	{
		this.usUsersType = usUsersType;
	}
	
}