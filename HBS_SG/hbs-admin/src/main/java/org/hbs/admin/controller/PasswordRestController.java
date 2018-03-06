package org.hbs.admin.controller;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath;
import org.hbs.admin.controller.param.UserParam;
import org.hbs.admin.model.IMessages.EAddress;
import org.hbs.admin.model.IUsers.EUserStatus;
import org.hbs.sender.VTLEmailFactory;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PasswordRestController extends PasswordControllerBase implements IAdminPath
{
	private static final long	serialVersionUID	= 4736497573908842185L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());
	
	@RequestMapping(value = FORGET_PASSWORD, method = RequestMethod.POST)
	public @ResponseBody Response forgotPassword(HttpServletRequest request, @RequestParam("email") String email)
	{
		UserParam userParam = new UserParam();
		userParam.userId = email;
		userParam.eUserStatus = EUserStatus.Default;
		
		try
		{
			userBo.getUser(userParam);
			if (CommonValidator.isNotNullNotEmpty(userParam.user))
			{
				switch ( Security.Token.isPasswordResetRecently(userParam.user) )
				{
					case Default :
					{
						StringBuffer tokenURL = new StringBuffer();
						tokenURL.append(userParam.user.getProducer().getVirtualBasePath());
						tokenURL.append(RESET_PASSWORD + "/" + Security.Token.generate(userBo, userParam.user, true));
						Map<String, Object> dataMap = new LinkedHashMap<String, Object>(0);
						dataMap.put("user", userParam.user);
						dataMap.put("tokenURL", tokenURL);
						
						EAddress.To.append(userParam.user.getCommunicationAddress());
						EAddress.Cc.append(userParam.user.getProducer().getUsers().getCommunicationAddress());
						
						VTLEmailFactory.getInstance().sendEmail(userParam.user.getProducer(), EUserTemplate.User_Reset_Password, dataMap, EAddress.To, EAddress.Cc);
						return new Response("Done", "Email has been sent to your registered email id.");
					}
					case RecentToken :
					{
						return new Response("Error",
								"You had recently request password reset.<br>Please check your registered email.<br>If you didn't receive password reset email, contact administrator.");
					}
					case RecentPassword :
					{
						return new Response("Error", "You had recently changed password.<br>Please contact administrator for further queries.");
					}
					default :
						return new Response("Error", "Email id is incorrect or invalid.");
				}
			}
			else
			{
				return new Response("Error", "Email id is incorrect or invalid.");
			}
		}
		catch (Exception excep)
		{
			logger.error(excep);
			return new Response("Error", "Application Error.Please contact administrator.");
		}
	}
	
}
