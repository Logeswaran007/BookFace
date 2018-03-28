package org.hbs.admin.transformer;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.model.CommonFileUploadBase;
import org.hbs.admin.model.IImage.EImage;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.util.CommonValidator;
import org.hbs.util.IConstProperty;
import org.hbs.util.model.ICommonLayout;
import org.hbs.util.transformer.Transformer;

public class AttachmentTransformer extends Transformer implements IConstProperty
{
	private static final long serialVersionUID = 4611161905219190996L;
	
	public AttachmentTransformer(HttpServletRequest request, String currentColumn, List<? extends ICommonLayout> elementList, Object[] colsObject)
	{
		super(request, currentColumn, elementList, colsObject);
	}
	
	public String getVirtualURL()
	{
		try
		{
			if (CommonValidator.isNotNullNotEmpty(valueHM.get("folder")) && CommonValidator.isNotNullNotEmpty(valueHM.get("fileName")))
			{
				String folder = valueHM.get("folder").toString();
				String fileName = valueHM.get("fileName").toString();
				String resource = valueHM.get("resource").toString();
				CommonFileUploadBase cfb = new CommonFileUploadBase(folder, fileName, resource);
				EImage.ResourceHandler.getServerSessionVirtualPath(request, EUsers.getSessionUser(request).getProducer(), cfb);
				return cfb.getUploadFileVirtualURL();
			}
		}
		catch (Exception excep)
		{
			excep.printStackTrace();
		}
		return "";
	}
	
}
