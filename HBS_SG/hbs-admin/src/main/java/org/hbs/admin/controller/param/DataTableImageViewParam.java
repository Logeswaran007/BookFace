package org.hbs.admin.controller.param;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.model.IImage.EImage;
import org.hbs.admin.model.IProducers;
import org.hbs.admin.model.IUploadImageOrDocuments;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.util.CommonValidator;
import org.hbs.util.DataTableParam;

public class DataTableImageViewParam extends DataTableParam
{
	private static final long	serialVersionUID	= 1245226336128546290L;
	private IProducers			producer;

	public DataTableImageViewParam(HttpServletRequest request, IProducers producer)
	{
		this.request = request;
		this.producer = producer;
	}

	public static DataTableImageViewParam getDataTableParamsFromRequest(HttpServletRequest request)
	{
		DataTableImageViewParam dtParam = null;

		try
		{
			IUsers users = EUsers.getSessionUser(request);
			dtParam = new DataTableImageViewParam(request, users.getProducer());
			initDataTableParam(request, dtParam);
			return dtParam;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}

		return dtParam;
	}

	@Override
	public String getImageVirtualUrl(Object traverseObject)
	{
		if (CommonValidator.isNotNullNotEmpty(traverseObject) && traverseObject instanceof IUploadImageOrDocuments)
		{
			IUploadImageOrDocuments iUpload = (IUploadImageOrDocuments) traverseObject;
			EImage.Attachment.getServerSessionVirtualPath(request, producer, iUpload);
			return iUpload.getUploadFileVirtualURL();
		}
		return request.getServletContext().getContextPath() + "/common/images/no-image.png";
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
