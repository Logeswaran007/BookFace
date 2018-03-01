package org.hbs.admin.model;

import java.io.Serializable;

import org.hbs.util.EBusinessKey;
import org.hbs.util.EnumInterface;

public interface IAddress extends Serializable, EBusinessKey
{
	public enum AddressType implements EnumInterface
	{
		BillingAddress, CommunicationAddress, OfficialAddress, PermanentAddress, PresentAddress, ShippingAddress;
	}

	public String getAddressId();

	public String getAddressLine1();

	public String getAddressLine2();

	public String getAddressLine3();

	public String getAddressType();

	public Long getAlternateMobileNo();

	public String getCity();

	public Country getCountry();

	public String getEmail();

	public String getLandmark();

	public Long getMobileNo();

	public Integer getPincode();

	public Long getPrimaryPhoneNo();

	public State getState();

	public Long getWhatsAppMobileNo();

	public void setAddressId(String addressId);

	public void setAddressLine1(String addressLine1);

	public void setAddressLine2(String addressLine2);

	public void setAddressLine3(String addressLine3);

	public void setAddressType(String addressType);

	public void setAlternateMobileNo(Long alternateMobileNo);

	public void setCity(String city);

	public void setCountry(Country country);

	public void setEmail(String email);

	public void setLandmark(String landmark);

	public void setMobileNo(Long mobileNo);

	public void setPincode(Integer pincode);

	public void setPrimaryPhoneNo(Long primaryPhoneNo);

	public void setState(State state);

	public void setWhatsAppMobileNo(Long whatsAppMobileNo);
}