package org.hbs.admin.controller;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.hbs.admin.IAdminPath;
import org.hbs.admin.controller.param.UserParam;
import org.hbs.admin.model.IAddress;
import org.hbs.admin.model.IImage.EImage;
import org.hbs.admin.model.IImage.EUploadType;
import org.hbs.admin.model.IUploadImageOrDocuments;
import org.hbs.admin.model.IUsers;
import org.hbs.util.CommonValidator;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PasswordController extends PasswordControllerBase implements IAdminPath
{
	private static final long serialVersionUID = 4736497573908842185L;
	
	@RequestMapping(value = CHANGE_PASSWORD, method = RequestMethod.GET)
	public ModelAndView changePassword(HttpServletRequest request)
	{
		Object object = request.getSession().getAttribute(EBean.User.name());
		if (CommonValidator.isNotNullNotEmpty(object))
		{
			IUsers users = (IUsers) object;
			IAddress address = users.getCommunicationAddress();
			ModelAndView modelView = new ModelAndView(CHANGE_PASSWORD_PAGE);
			modelView.addObject("userParam", new UserParam());
			modelView.addObject("loginUserName", users.getUsUserName());
			modelView.addObject("email", address.getEmail().substring(0, 3) + "XXXXXXX" + address.getEmail().substring(address.getEmail().indexOf("@")));
			modelView.addObject("mobileNo", users.getCommunicationAddress().getMobileNo().toString().substring(0, 4) + "XXXXXX");
			modelView.addObject("lastLoginTime", users.getLastLoginTime());
			modelView.addObject("loginUserImage", users.getUsUserImage());
			modelView.addObject("status", "Reset");
			return modelView;
		}
		return new ModelAndView(LOGIN_PAGE);
	}
	
	@RequestMapping(value = RESET_PASSWORD + "/{usToken}", method = RequestMethod.GET)
	public String resetPassword(HttpServletRequest request, @PathVariable("usToken") String usToken)
	{
		try
		{
			UserParam userParam = Security.Token.validate(userBo, usToken);
			if (CommonValidator.isNotNullNotEmpty(userParam))
			{
				Authentication auth = new UsernamePasswordAuthenticationToken(userParam.user, null, userDetailsService.loadUserByUsername(userParam.userId).getAuthorities());
				SecurityContextHolder.getContext().setAuthentication(auth);
				
				IUploadImageOrDocuments iDoc = userParam.user.getAttachment(EUploadType.UserImage);
				EImage.Attachment.getServerSessionVirtualPath(request, userParam.user.getProducer(), iDoc);
				userParam.user.setUsUserImage(iDoc.getUploadFileVirtualURL());
				
				request.getSession().setAttribute(EBean.User.name(), userParam.user);
				return REDIRECT + CHANGE_PASSWORD;
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return REDIRECT + INDEX;
	}
	
	@RequestMapping(value = UPDATE_PASSWORD, method = RequestMethod.POST)
	public ModelAndView updatePassword(HttpServletRequest request, @Valid UserParam userParam)
	{
		Object object = request.getSession().getAttribute(EBean.User.name());
		if (CommonValidator.isNotNullNotEmpty(object))
		{
			IUsers users = (IUsers) object;
			
			String usUserPwd = new BCryptPasswordEncoder().encode(userParam.newPassword);
			users.setUsUserPwd(usUserPwd);
			users.setUsUserPwdModDate(new Timestamp(System.currentTimeMillis()));
			users.setUsUserPwdModFlag(true);
			ModelAndView modelView = new ModelAndView(CHANGE_PASSWORD_PAGE);
			modelView.addObject("status", String.valueOf(userBo.saveOrUpdate(users)));
			return modelView;
		}
		return new ModelAndView(INDEX);
	}
	
}
