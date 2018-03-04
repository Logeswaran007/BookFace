package org.hbs.sg.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EduTelHomeController implements IAdminPath, IEduTelPath
{
	
	private static final long serialVersionUID = 8902286848593364624L;
	
	@RequestMapping(ABOUT_US)
	public ModelAndView getAboutUs(HttpServletRequest request)
	{
		ModelAndView modelView = new ModelAndView(ABOUTUS_PAGE);
		
		return modelView;
	}
	
	@RequestMapping(CAREERS)
	public ModelAndView getCarriersPage(HttpServletRequest request)
	{
		
		ModelAndView modelView = new ModelAndView(CAREERS_PAGE);
		
		return modelView;
	}
	
	@RequestMapping(CONTACT_US)
	public ModelAndView getContactUs(HttpServletRequest request)
	{
		
		ModelAndView modelView = new ModelAndView(CONTACTUS_PAGE);
		
		return modelView;
	}
	
	@RequestMapping(GALLERY)
	public ModelAndView getGalleryPage(HttpServletRequest request)
	{
		ModelAndView modelView = new ModelAndView(GALLERY_PAGE);
		return modelView;
	}
	
	@RequestMapping(ONLINE_SUPPORT)
	public ModelAndView getOnlinesupport(HttpServletRequest request)
	{
		
		ModelAndView modelView = new ModelAndView(ONLINE_SUPPORT_PAGE);
		
		return modelView;
	}
	
	@RequestMapping(RESOURCE_TEAM)
	public ModelAndView getResourceTeam(HttpServletRequest request)
	{
		ModelAndView modelView = new ModelAndView(RESOURCE_TEAM_PAGE);
		
		return modelView;
	}
	
	@RequestMapping(TERM_CONDITION)
	public ModelAndView getTermCondition(HttpServletRequest request)
	{
		ModelAndView modelView = new ModelAndView(TERM_PAGE);
		
		return modelView;
	}
	
	@RequestMapping(WE_ARE_WITH)
	public ModelAndView getWeAreWith(HttpServletRequest request)
	{
		ModelAndView modelView = new ModelAndView(WE_ARE_WITH_PAGE);
		
		return modelView;
	}
}
