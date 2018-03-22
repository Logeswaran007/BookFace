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
	
	public String getUploadFileNameForDisplay();
	
	public long getUploadFileSize();
	
	public String getUploadFileVirtualURL();
	
	public MultipartFile getUploadMultiPartFile();
	
	public String getUploadSubFolderPath();
	
	public void setUploadDocumentForType(String uploadDocumentForType);
	
	public void setUploadFileDate(Timestamp uploadFileDate);
	
	public void setUploadFileFolderURL(String uploadFileFolderURL);
	
	public void setUploadFileLastModifiedDate(Timestamp uploadFileLastModifiedDate);
	
	public void setUploadFileName(String uploadFileName);
	
	public void setUploadFileNameForDisplay(String uploadFileNameForDisplay);
	
	public void setUploadFileSize(long uploadFileSize);
	
	public void setUploadFileVirtualURL(String uploadFileVirtualURL);
	
	public void setUploadMultiPartFile(MultipartFile uploadMultiPartFile);
	
	public void setUploadSubFolderPath(String uploadSubFolderPath);
}
