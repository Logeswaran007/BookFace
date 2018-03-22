package org.hbs.admin.document;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.model.IProducers;
import org.hbs.admin.model.IUploadImageOrDocuments;

public interface DocumentDownload
{
	public void downloadFileFromRepository(HttpServletRequest request, Set<? extends IUploadImageOrDocuments> iDocs) throws Exception;
	
	public IProducers getProducer();
	
	public void setProducer(IProducers producer);
}
