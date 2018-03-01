package org.hbs.sg.web.controller;

import java.io.Serializable;

import org.hbs.admin.model.IAddress.AddressType;
import org.hbs.sg.model.concern.Organisation;
import org.hbs.sg.model.concern.OrganisationAddress;

public class OrganisationForm implements Serializable
{

	private static final long	serialVersionUID	= -3764555162475083724L;

	Organisation				organisation		= new Organisation();
	OrganisationAddress			communication		= new OrganisationAddress(AddressType.CommunicationAddress);
	OrganisationAddress			present				= new OrganisationAddress(AddressType.PresentAddress);
	OrganisationAddress			permanent			= new OrganisationAddress(AddressType.PermanentAddress);

	public OrganisationForm()
	{
		super();
		this.communication.setAddressId(this.communication.getBusinessKey());
		this.present.setAddressId(this.present.getBusinessKey());
		this.permanent.setAddressId(this.permanent.getBusinessKey());
	}

	public OrganisationForm(Organisation organisation, OrganisationAddress communication, OrganisationAddress present, OrganisationAddress permanent)
	{
		super();
		this.organisation = organisation;
		this.communication = communication;
		this.present = present;
		this.permanent = permanent;
		this.communication.setAddressId(this.communication.getBusinessKey());
		this.present.setAddressId(this.present.getBusinessKey());
		this.permanent.setAddressId(this.permanent.getBusinessKey());
	}

	public Organisation getOrganisation()
	{
		return organisation;
	}

	public void setOrganisation(Organisation organisation)
	{
		this.organisation = organisation;
	}

	public OrganisationAddress getCommunication()
	{
		return communication;
	}

	public void setCommunication(OrganisationAddress communication)
	{
		this.communication = communication;
	}

	public OrganisationAddress getPresent()
	{
		return present;
	}

	public void setPresent(OrganisationAddress present)
	{
		this.present = present;
	}

	public OrganisationAddress getPermanent()
	{
		return permanent;
	}

	public void setPermanent(OrganisationAddress permanent)
	{
		this.permanent = permanent;
	}

}
