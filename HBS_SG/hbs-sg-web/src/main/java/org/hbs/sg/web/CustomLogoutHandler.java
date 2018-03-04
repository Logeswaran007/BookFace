package org.hbs.sg.web;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.hbs.admin.IAdminPath;
import org.hbs.admin.controller.ControllerBaseBo;
import org.hbs.admin.controller.param.UserParam;
import org.hbs.admin.model.IImage.EImage;
import org.hbs.admin.model.Users;
import org.hbs.util.CommonValidator;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.stereotype.Component;

@Component
public class CustomLogoutHandler extends ControllerBaseBo implements LogoutHandler, IAdminPath
{
	
	private static final long serialVersionUID = 407818492923421819L;
	
	@Override
	public void logout(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
	{
		try
		{
			Users user = (Users) request.getSession().getAttribute(EBean.User.name());
			
			if (CommonValidator.isNotNullNotEmpty(user) && CommonValidator.isNotNullNotEmpty(authentication, authentication.getDetails()))
			{
				userBo.userLogAtLogOut(new UserParam(user));
				
				String sessionFolder = EImage.Attachment.getServerSessionPhysicalPath(request.getSession());
				if (CommonValidator.isNotNullNotEmpty(sessionFolder))
				{
					System.out.println("Session Folder Cleaning... " + sessionFolder);
					FileUtils.cleanDirectory(new File(sessionFolder));
					FileUtils.deleteDirectory(new File(sessionFolder));
					System.out.println("Session Folder Cleaned.");
				}
				
				request.getSession().invalidate();
				
			}
			
			response.setStatus(HttpServletResponse.SC_OK);
			response.sendRedirect(request.getServletContext().getContextPath() + INDEX);
		}
		catch (Exception e)
		{
			e.printStackTrace();
			try
			{
				response.sendRedirect(request.getServletContext().getContextPath() + INDEX);
			}
			catch (IOException e1)
			{
				e1.printStackTrace();
			}
		}
	}
	
}
