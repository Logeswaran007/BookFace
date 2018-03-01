package org.hbs.sg.model.concern;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hbs.admin.model.CountryBase;
import org.hbs.admin.model.IAddress;
import org.hbs.admin.model.IAddress.AddressType;
import org.hbs.admin.model.IImage.EUploadType;
import org.hbs.admin.model.IUploadImageOrDocuments;
import org.hbs.admin.model.IUsers;
import org.hbs.sg.model.accessors.ConsumerUsers;
import org.hbs.util.CommonValidator;

@Entity
@Table(name = "organisation")
public class Organisation extends CountryBase implements IOrganisation
{
	private static final long				serialVersionUID	= 94388478378397721L;

	protected Set<IOrganisationAddress>		addressList			= new LinkedHashSet<IOrganisationAddress>(0);

	protected Set<IOrganisationAttachments>	attachmentList		= new LinkedHashSet<IOrganisationAttachments>(0);

	protected IOrganisationAddress			communicationAddress;

	protected IUploadImageOrDocuments		profileImage;

	protected String						organisationId;

	protected String						organisationName;

	protected String						organisationType;

	protected Set<IUsers>					usersList			= new LinkedHashSet<IUsers>(0);

	public Organisation()
	{
		super();
		this.organisationId = getBusinessKey();
	}

	public Organisation(Set<IOrganisationAddress> addressList, Set<IOrganisationAttachments> attachmentList, IOrganisationAddress communicationAddress, String organisationId, String organisationName,
			String organisationType, Set<IUsers> usersList)
	{
		super();
		this.organisationId = getBusinessKey();
		this.addressList = addressList;
		this.attachmentList = attachmentList;
		this.communicationAddress = communicationAddress;
		this.organisationId = organisationId;
		this.organisationName = organisationName;
		this.organisationType = organisationType;
		this.usersList = usersList;
	}

	@OneToMany(targetEntity = OrganisationAddress.class, fetch = FetchType.EAGER, mappedBy = "organisation", cascade = CascadeType.ALL)
	public Set<IOrganisationAddress> getAddressList()
	{
		return addressList;
	}

	@Transient
	public IOrganisationAddress getAddressToDisplay(AddressType addressType)
	{

		if (CommonValidator.isSetFirstNotEmpty(addressList))
		{
			for (IAddress address : addressList)
			{
				if (CommonValidator.isEqual(address.getAddressType(), addressType))
					return (IOrganisationAddress) address;
			}
		}
		return null;
	}

	@OneToMany(targetEntity = OrganisationAttachments.class, fetch = FetchType.EAGER, mappedBy = "organisation", cascade = CascadeType.ALL)
	public Set<IOrganisationAttachments> getAttachmentList()
	{
		return attachmentList;
	}

	@Transient
	public String getBusinessKey(String... combination)
	{
		return EKey.Auto("ORG");
	}

	@Transient
	public IOrganisationAddress getCommunicationAddress()
	{
		this.communicationAddress = getAddressToDisplay(AddressType.CommunicationAddress);
		return communicationAddress;
	}

	@Id
	@Column(name = "organisationId")
	public String getOrganisationId()
	{
		return organisationId;
	}

	@Column(name = "organisationName")
	public String getOrganisationName()
	{
		return organisationName;
	}

	@Column(name = "organisationType")
	public String getOrganisationType()
	{
		return organisationType;
	}

	@ManyToMany(targetEntity = ConsumerUsers.class, mappedBy = "organisations")
	public Set<IUsers> getUsersList()
	{
		return usersList;
	}

	public void setAddressList(Set<IOrganisationAddress> addressList)
	{
		this.addressList = addressList;
	}

	public void setAttachmentList(Set<IOrganisationAttachments> attachmentList)
	{
		this.attachmentList = attachmentList;
	}

	public void setCommunicationAddress(IOrganisationAddress communicationAddress)
	{
		this.communicationAddress = communicationAddress;
	}

	public void setOrganisationId(String organisationId)
	{
		this.organisationId = organisationId;
	}

	public void setOrganisationName(String organisationName)
	{
		this.organisationName = organisationName;
	}

	public void setOrganisationType(String organisationType)
	{
		this.organisationType = organisationType;
	}

	public void setUsersList(Set<IUsers> usersList)
	{
		this.usersList = usersList;
	}

	@Transient
	public IUploadImageOrDocuments getProfileImage()
	{
		if (CommonValidator.isSetFirstNotEmpty(attachmentList))
		{
			for (IUploadImageOrDocuments document : attachmentList)
			{
				if (CommonValidator.isEqual(document.getUploadDocumentForType(), EUploadType.ProfileImage))
					return document;
			}
		}
		return null;
	}

	public void setProfileImage(IUploadImageOrDocuments profileImage)
	{
		this.profileImage = profileImage;
	}

}
