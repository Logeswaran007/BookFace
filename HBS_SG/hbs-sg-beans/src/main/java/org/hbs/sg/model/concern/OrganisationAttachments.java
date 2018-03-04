package org.hbs.sg.model.concern;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hbs.admin.model.CommonFileUpload;
import org.hbs.util.dao.ICRUDBean;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "organisationattachments")
public class OrganisationAttachments extends CommonFileUpload implements IOrganisationAttachments, ICRUDBean
{
	private static final long	serialVersionUID	= 6482306497562118535L;
	
	protected IOrganisation		organisation;
	
	public OrganisationAttachments()
	{
		super();
	}
	
	public OrganisationAttachments(MultipartFile uploadMultiPartFile, String uploadSubFolderPath, String uploadDocumentForType)
	{
		super();
		this.uploadMultiPartFile = uploadMultiPartFile;
		this.uploadSubFolderPath = uploadSubFolderPath;
		this.uploadDocumentForType = uploadDocumentForType;
	}
	
	@ManyToOne(targetEntity = Organisation.class, fetch = FetchType.LAZY)
	@JoinColumn(name = "organisationId")
	public IOrganisation getOrganisation()
	{
		return organisation;
	}
	
	public void setOrganisation(IOrganisation organisation)
	{
		this.organisation = organisation;
	}
	
}
