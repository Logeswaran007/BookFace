package org.hbs.admin.model;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

public interface IUploadImageOrDocuments extends java.io.Serializable
{
	public String getUploadDocumentForType();

	public Timestamp getUploadFileDate();

	public String getUploadFileFolderURL();

	public Timestamp getUploadFileLastModifiedDate();

	public String getUploadFileName();

	public long getUploadFileSize();

	public MultipartFile getUploadMultiPartFile();

	public void setUploadDocumentForType(String uploadDocumentForType);

	public void setUploadFileDate(Timestamp uploadFileDate);

	public void setUploadFileFolderURL(String uploadFileFolderURL);

	public void setUploadFileLastModifiedDate(Timestamp uploadFileLastModifiedDate);

	public void setUploadFileName(String uploadFileName);

	public void setUploadFileSize(long uploadFileSize);

	public void setUploadMultiPartFile(MultipartFile uploadMultiPartFile);

	public String getUploadFileVirtualURL();

	public void setUploadFileVirtualURL(String uploadFileVirtualURL);

	public String getUploadSubFolderPath();

	public void setUploadSubFolderPath(String uploadSubFolderPath);

	public String getUploadFileNameForDisplay();

	public void setUploadFileNameForDisplay(String uploadFileNameForDisplay);
}
