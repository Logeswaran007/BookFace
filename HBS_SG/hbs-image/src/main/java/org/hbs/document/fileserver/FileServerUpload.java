package org.hbs.document.fileserver;

import java.io.File;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.document.DocumentUpload;
import org.hbs.admin.model.IImage.EImage;
import org.hbs.admin.model.IProducers;
import org.hbs.admin.model.IUploadImageOrDocuments;
import org.hbs.util.CommonValidator;
import org.hbs.util.IConstProperty;

public class FileServerUpload implements DocumentUpload, IConstProperty
{
	private static final long	serialVersionUID	= -2025957254980776052L;
	private IProducers			producer;
	
	public FileServerUpload()
	{
		super();
	}
	
	public FileServerUpload(IProducers producer)
	{
		super();
		this.producer = producer;
	}
	
	public IProducers getProducer()
	{
		return producer;
	}
	
	public void setProducer(IProducers producer)
	{
		this.producer = producer;
	}
	
	public void uploadFileInRepository(HttpServletRequest request, Set<? extends IUploadImageOrDocuments> iDocs) throws Exception
	{
		String uploadFileFolderURL = null;
		File fileToCreate = null;
		for (IUploadImageOrDocuments iDoc : iDocs)
		{
			if (CommonValidator.isNotNullNotEmpty(iDoc.getUploadMultiPartFile()))
			{
				uploadFileFolderURL = EImage.Attachment.getRepositoryPhysicalPath(producer, iDoc.getUploadSubFolderPath());
				fileToCreate = new File(uploadFileFolderURL, iDoc.getUploadMultiPartFile().getOriginalFilename());
				iDoc.getUploadMultiPartFile().transferTo(fileToCreate);
				iDoc.setUploadFileName(iDoc.getUploadMultiPartFile().getOriginalFilename());
				iDoc.setUploadFileFolderURL(iDoc.getUploadSubFolderPath());
			}
		}
	}
	
	public void uploadFileInRepositoryAndView(HttpServletRequest request, Set<? extends IUploadImageOrDocuments> iDocs) throws Exception
	{
		uploadFileInRepository(request, iDocs);
		EImage.Attachment.getServerSessionVirtualPath(request, producer, iDocs);
	}
	
}
