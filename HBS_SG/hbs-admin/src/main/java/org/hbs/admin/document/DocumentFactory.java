package org.hbs.admin.document;

import java.io.Serializable;

import org.hbs.admin.model.IProducers;
import org.hbs.util.CustomLogger;

public class DocumentFactory implements Serializable
{
	
	public static DocumentFactory	documentFactory		= null;
	
	private static final long		serialVersionUID	= -3448438292700201628L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());

	
	public static DocumentFactory getInstance()
	{
		if (documentFactory == null)
		{
			documentFactory = new DocumentFactory();
		}
		return documentFactory;
	}
	
	private DocumentFactory()
	{
		
	}
	
	public DocumentDownload forDownload(IProducers producer)
	{
		DocumentDownload instance = null;
		try
		{
			instance = (DocumentDownload) Class.forName(producer.getDocumentHandlerDownloadBean()).newInstance();
			instance.setProducer(producer);
		}
		catch (InstantiationException | IllegalAccessException | ClassNotFoundException excep)
		{
			logger.error(excep);
		}
		
		return instance;
	}
	
	public DocumentUpload forUpload(IProducers producer)
	{
		DocumentUpload instance = null;
		try
		{
			instance = (DocumentUpload) Class.forName(producer.getDocumentHandlerUploadBean()).newInstance();
			instance.setProducer(producer);
		}
		catch (InstantiationException | IllegalAccessException | ClassNotFoundException excep)
		{
			logger.error(excep);
		}
		
		return instance;
	}
	
}
