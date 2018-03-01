package org.hbs.document.fileserver;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.document.DocumentDownload;
import org.hbs.admin.model.IImage.EImage;
import org.hbs.admin.model.IProducers;
import org.hbs.admin.model.IUploadImageOrDocuments;
import org.hbs.util.IConstProperty;

public class FileServerDownload implements DocumentDownload, IConstProperty
{
	private static final long	serialVersionUID	= 753401735863240986L;
	private IProducers			producer;

	public FileServerDownload()
	{
		super();
	}

	public FileServerDownload(IProducers producer)
	{
		super();
		this.producer = producer;
	}

	public void downloadFileFromRepository(HttpServletRequest request, Set<? extends IUploadImageOrDocuments> iDocs) throws Exception
	{
		EImage.Attachment.getServerSessionVirtualPath(request, producer, iDocs);
	}

	public IProducers getProducer()
	{
		return producer;
	}

	public void setProducer(IProducers producer)
	{
		this.producer = producer;
	}

}
