package org.hbs.admin.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.Transient;

import org.hbs.util.CommonValidator;
import org.springframework.web.multipart.MultipartFile;

@MappedSuperclass
public abstract class CommonFileUploadBase extends CommonBeanFields implements IUploadImageOrDocuments
{

	private static final long	serialVersionUID		= 8419978751136386549L;
	protected Timestamp			uploadFileDate;
	protected String			uploadFileFolderURL;
	protected Timestamp			uploadFileLastModifiedDate;
	protected String			uploadFileName;
	protected String			uploadFileNameForDisplay;
	protected long				uploadFileSize			= 0L;
	protected MultipartFile		uploadMultiPartFile;
	protected String			uploadDocumentForType;
	protected String			uploadFileVirtualURL	= "javascript:void(0);";
	protected String			uploadSubFolderPath;

	public CommonFileUploadBase()
	{
		super();
	}

	public CommonFileUploadBase(IUsers createdUser, Timestamp createdDate, IUsers modifiedUser, Timestamp modifiedDate, Boolean status)
	{
		super(createdUser, createdDate, modifiedUser, modifiedDate, status);
	}

	public CommonFileUploadBase(Timestamp uploadFileDate, String uploadFileFolderURL, Timestamp uploadFileLastModifiedDate, String uploadFileName, String uploadFileNameForDisplay, long uploadFileSize,
			MultipartFile uploadMultiPartFile, String uploadDocumentForType, String uploadFileVirtualURL, String uploadSubFolderPath)
	{
		super();
		this.uploadFileDate = uploadFileDate;
		this.uploadFileFolderURL = uploadFileFolderURL;
		this.uploadFileLastModifiedDate = uploadFileLastModifiedDate;
		this.uploadFileName = uploadFileName;
		this.uploadFileNameForDisplay = uploadFileNameForDisplay;
		this.uploadFileSize = uploadFileSize;
		this.uploadMultiPartFile = uploadMultiPartFile;
		this.uploadDocumentForType = uploadDocumentForType;
		this.uploadFileVirtualURL = uploadFileVirtualURL;
		this.uploadSubFolderPath = uploadSubFolderPath;
	}

	@Column(name = "uploadFileNameForDisplay")
	public String getUploadFileNameForDisplay()
	{
		return uploadFileNameForDisplay;
	}

	public void setUploadFileNameForDisplay(String uploadFileNameForDisplay)
	{
		this.uploadFileNameForDisplay = uploadFileNameForDisplay;
	}

	@Transient
	public String getUploadSubFolderPath()
	{
		return uploadSubFolderPath;
	}

	public void setUploadSubFolderPath(String uploadSubFolderPath)
	{
		this.uploadSubFolderPath = uploadSubFolderPath;
	}

	@Transient
	public String getUploadFileVirtualURL()
	{
		if (CommonValidator.isNotNullNotEmpty(uploadFileVirtualURL))
		{
			uploadFileVirtualURL = uploadFileVirtualURL.replaceAll("\\\\", "/");
		}
		return uploadFileVirtualURL;
	}

	public void setUploadFileVirtualURL(String uploadFileVirtualURL)
	{
		this.uploadFileVirtualURL = uploadFileVirtualURL;
	}

	@Column(name = "uploadDocumentForType")
	public String getUploadDocumentForType()
	{
		return uploadDocumentForType;
	}

	@Column(name = "uploadFileDate")
	public Timestamp getUploadFileDate()
	{
		return uploadFileDate;
	}

	@Column(name = "uploadFileFolderURL")
	public String getUploadFileFolderURL()
	{
		return uploadFileFolderURL;
	}

	@Column(name = "uploadFileLastModifiedDate")
	public Timestamp getUploadFileLastModifiedDate()
	{
		return uploadFileLastModifiedDate;
	}

	@Column(name = "uploadFileName")
	public String getUploadFileName()
	{
		return uploadFileName;
	}

	@Column(name = "uploadFileSize")
	public long getUploadFileSize()
	{
		return uploadFileSize;
	}

	@Transient
	public MultipartFile getUploadMultiPartFile()
	{
		return uploadMultiPartFile;
	}

	public void setUploadDocumentForType(String uploadDocumentForType)
	{
		this.uploadDocumentForType = uploadDocumentForType;
	}

	public void setUploadFileDate(Timestamp uploadFileDate)
	{
		this.uploadFileDate = uploadFileDate;
	}

	public void setUploadFileFolderURL(String uploadFileFolderURL)
	{
		this.uploadFileFolderURL = uploadFileFolderURL;
	}

	public void setUploadFileLastModifiedDate(Timestamp uploadFileLastModifiedDate)
	{
		this.uploadFileLastModifiedDate = uploadFileLastModifiedDate;
	}

	public void setUploadFileName(String uploadFileName)
	{
		this.uploadFileName = uploadFileName;
	}

	public void setUploadFileSize(long uploadFileSize)
	{
		this.uploadFileSize = uploadFileSize;
	}

	public void setUploadMultiPartFile(MultipartFile uploadMultiPartFile)
	{
		this.uploadMultiPartFile = uploadMultiPartFile;
	}

}
