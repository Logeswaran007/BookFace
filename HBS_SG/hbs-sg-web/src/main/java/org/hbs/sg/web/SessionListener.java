package org.hbs.sg.web;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.hbs.admin.IAdminPath.EBean;
import org.hbs.admin.controller.ControllerBaseBo;
import org.hbs.admin.controller.param.UserParam;
import org.hbs.admin.model.IImage.EImage;
import org.hbs.admin.model.Users;
import org.hbs.util.CommonValidator;
import org.springframework.context.ApplicationListener;
import org.springframework.security.web.session.HttpSessionDestroyedEvent;
import org.springframework.stereotype.Component;

@Component
public class SessionListener extends ControllerBaseBo implements ApplicationListener<HttpSessionDestroyedEvent>
{
	
	private static final long serialVersionUID = 1884717425289542411L;
	
	public void onApplicationEvent(HttpSessionDestroyedEvent evt)
	{
		try
		{
			Users user = (Users) evt.getSession().getAttribute(EBean.User.name());
			
			if (CommonValidator.isNotNullNotEmpty(user))
			{
				userBo.userLogAtLogOut(new UserParam(user));
			}
			
			String sessionFolder = EImage.Attachment.getServerSessionPhysicalPath(evt.getSession(), "");
			if (CommonValidator.isNotNullNotEmpty(sessionFolder))
			{
				FileUtils.cleanDirectory(new File(sessionFolder));
				FileUtils.deleteDirectory(new File(sessionFolder));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}