package org.hbs.sg.model.concern;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hbs.admin.model.CommonAddress;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

@Entity
@Table(name = "organisationaddress")
public class OrganisationAddress extends CommonAddress implements IOrganisationAddress
{
	
	private static final long	serialVersionUID	= 3385036848599195929L;
	
	protected IOrganisation		organisation;
	
	protected Long				phoneNo1;
	
	protected String			website;
	
	public OrganisationAddress()
	{
		super();
		this.addressId = getBusinessKey();
	}
	
	public OrganisationAddress(AddressType addressType)
	{
		super();
		this.addressId = getBusinessKey();
		this.addressType = addressType.name();
	}
	
	public OrganisationAddress(IOrganisation organisation)
	{
		super();
		this.addressId = getBusinessKey();
		this.organisation = organisation;
	}
	
	public OrganisationAddress(IOrganisation organisation, Long phoneNo1, String website)
	{
		super();
		this.organisation = organisation;
		this.phoneNo1 = phoneNo1;
		this.website = website;
	}
	
	@Transient
	public String getBusinessKey(String... combination)
	{
		return EKey.Auto("OADD");
	}
	
	@ManyToOne(targetEntity = Organisation.class)
	@JoinColumn(name = "organisationId", nullable = false)
	@JsonDeserialize(as = Organisation.class)
	public IOrganisation getOrganisation()
	{
		return organisation;
	}
	
	@Column(name = "phoneNo1")
	public Long getPhoneNo1()
	{
		return phoneNo1;
	}
	
	@Column(name = "website")
	public String getWebsite()
	{
		return website;
	}
	
	public void setOrganisation(IOrganisation organisation)
	{
		this.organisation = organisation;
	}
	
	public void setPhoneNo1(Long phoneNo1)
	{
		this.phoneNo1 = phoneNo1;
	}
	
	public void setWebsite(String website)
	{
		this.website = website;
	}
}
