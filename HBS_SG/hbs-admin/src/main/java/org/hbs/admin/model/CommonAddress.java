package org.hbs.admin.model;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public abstract class CommonAddress implements IAddress
{
	private static final long	serialVersionUID	= -2389161513595163608L;
	
	protected String			addressId;
	
	protected String			addressLine1;
	
	protected String			addressLine2;
	
	protected String			addressLine3;
	
	protected String			addressType			= AddressType.CommunicationAddress.name();
	
	protected Long				alternateMobileNo;
	
	protected String			city;
	
	protected Country			country				= new Country();
	
	protected String			email;
	
	protected String			landmark;
	
	protected Long				mobileNo;
	
	protected Integer			pincode;
	
	protected Long				primaryPhoneNo;
	
	protected State				state				= new State();
	
	protected Long				whatsAppMobileNo;
	
	public CommonAddress()
	{
		super();
	}
	
	@Id
	@Column(name = "addressId")
	public String getAddressId()
	{
		return addressId;
	}
	
	@Column(name = "addressLine1")
	public String getAddressLine1()
	{
		return addressLine1;
	}
	
	@Column(name = "addressLine2")
	public String getAddressLine2()
	{
		return addressLine2;
	}
	
	@Column(name = "addressLine3")
	public String getAddressLine3()
	{
		return addressLine3;
	}
	
	@Column(name = "addressType")
	public String getAddressType()
	{
		return addressType;
	}
	
	@Column(name = "alternateMobileNo")
	public Long getAlternateMobileNo()
	{
		return alternateMobileNo;
	}
	
	@Column(name = "city")
	public String getCity()
	{
		return city;
	}
	
	@Override
	@ManyToOne(targetEntity = Country.class, fetch = FetchType.LAZY)
	@JoinColumn(name = "country", nullable = false)
	public Country getCountry()
	{
		return country;
	}
	
	@Column(name = "email")
	public String getEmail()
	{
		return email;
	}
	
	@Column(name = "landmark")
	public String getLandmark()
	{
		return landmark;
	}
	
	@Column(name = "mobileNo")
	public Long getMobileNo()
	{
		return mobileNo;
	}
	
	@Column(name = "pincode")
	public Integer getPincode()
	{
		return pincode;
	}
	
	@Column(name = "primaryPhoneNo")
	public Long getPrimaryPhoneNo()
	{
		return primaryPhoneNo;
	}
	
	@ManyToOne(targetEntity = State.class, fetch = FetchType.LAZY)
	@JoinColumn(name = "state", nullable = false)
	public State getState()
	{
		return state;
	}
	
	@Column(name = "whatsAppMobileNo")
	public Long getWhatsAppMobileNo()
	{
		return whatsAppMobileNo;
	}
	
	public void setAddressId(String addressId)
	{
		this.addressId = addressId;
	}
	
	public void setAddressLine1(String addressLine1)
	{
		this.addressLine1 = addressLine1;
	}
	
	public void setAddressLine2(String addressLine2)
	{
		this.addressLine2 = addressLine2;
	}
	
	public void setAddressLine3(String addressLine3)
	{
		this.addressLine3 = addressLine3;
	}
	
	public void setAddressType(String addressType)
	{
		this.addressType = addressType;
	}
	
	public void setAlternateMobileNo(Long alternateMobileNo)
	{
		this.alternateMobileNo = alternateMobileNo;
	}
	
	public void setCity(String city)
	{
		this.city = city;
	}
	
	@Override
	public void setCountry(Country country)
	{
		this.country = country;
	}
	
	public void setEmail(String email)
	{
		this.email = email;
	}
	
	public void setLandmark(String landmark)
	{
		this.landmark = landmark;
	}
	
	public void setMobileNo(Long mobileNo)
	{
		this.mobileNo = mobileNo;
	}
	
	public void setPincode(Integer pincode)
	{
		this.pincode = pincode;
	}
	
	public void setPrimaryPhoneNo(Long primaryPhoneNo)
	{
		this.primaryPhoneNo = primaryPhoneNo;
	}
	
	public void setState(State state)
	{
		this.state = state;
	}
	
	public void setWhatsAppMobileNo(Long whatsAppMobileNo)
	{
		this.whatsAppMobileNo = whatsAppMobileNo;
	}
	
}