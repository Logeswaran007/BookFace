package org.hbs.sg.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hbs.admin.IAdminPath;
import org.hbs.admin.controller.ControllerBaseBo;
import org.hbs.admin.controller.param.UserParam;
import org.hbs.admin.model.IImage.EImage;
import org.hbs.admin.model.IImage.EUploadType;
import org.hbs.admin.model.IUploadImageOrDocuments;
import org.hbs.sg.web.controller.ISGPath;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class CustomLoginHandler extends ControllerBaseBo implements AuthenticationSuccessHandler, IAdminPath, ISGPath
{
	
	private static final long serialVersionUID = 407818492923421819L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException
	{
		User user = (User) authentication.getPrincipal();
		UserParam userParam = new UserParam();
		userParam.userId = user.getUsername();
		
		try
		{
			userBo.getUser(userParam);
			if (CommonValidator.isNotNullNotEmpty(userParam.user))
			{
				userBo.userLogAtLogin(userParam.user, request.getRemoteAddr());
				IUploadImageOrDocuments iDoc = userParam.user.getAttachment(EUploadType.UserImage);
				
				if (CommonValidator.isNotNullNotEmpty(iDoc))
				{
					EImage.Attachment.getServerSessionVirtualPath(request, userParam.user.getProducer(), iDoc);
					userParam.user.setUsUserImage(iDoc.getUploadFileVirtualURL());
				}
				
				request.getSession().setAttribute(EBean.User.name(), userParam.user);
			}
			response.setStatus(HttpServletResponse.SC_OK);
			
			response.sendRedirect(request.getServletContext().getContextPath() + DASHBOARD);
			
		}
		catch (Exception excep)
		{
			logger.error(excep);
			
		}
	}
	
}
