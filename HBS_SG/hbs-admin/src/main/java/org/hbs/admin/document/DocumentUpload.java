package org.hbs.admin.document;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.model.IProducers;
import org.hbs.admin.model.IUploadImageOrDocuments;

public interface DocumentUpload
{
	public void uploadFileInRepositoryAndView(HttpServletRequest request, Set<? extends IUploadImageOrDocuments> iDocs) throws Exception;

	public void uploadFileInRepository(HttpServletRequest request, Set<? extends IUploadImageOrDocuments> iDocs) throws Exception;

	public IProducers getProducer();

	public void setProducer(IProducers producer);
}
