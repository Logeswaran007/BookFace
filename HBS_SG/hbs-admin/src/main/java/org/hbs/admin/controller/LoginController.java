package org.hbs.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController extends ControllerBaseBo implements IAdminPath
{
	private static final long serialVersionUID = 2179229061851887237L;
	
	@RequestMapping(HOME)
	public ModelAndView home()
	{
		return new ModelAndView(HOME_PAGE);
	}
	
	@RequestMapping(INDEX)
	public String index()
	{
		return WELCOME_PAGE;
	}
	
	@RequestMapping(LOCK)
	public ModelAndView lock()
	{
		return new ModelAndView(LOCK_PAGE);
	}
	
	@RequestMapping(LOGIN)
	public ModelAndView login()
	{
		return new ModelAndView(LOGIN_PAGE);
	}
	
	@RequestMapping(LOGOUT)
	public ModelAndView logout(HttpServletRequest request)
	{
		return new ModelAndView(INDEX);
	}
	
	@RequestMapping(value = { INDEX, WELCOME }, method = RequestMethod.GET)
	public String welcome()
	{
		return WELCOME_PAGE;
	}
}
