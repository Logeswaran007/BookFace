package org.hbs.sg.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hbs.admin.IAdminPath;
import org.hbs.admin.controller.UserParam;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.util.CustomLogger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DashBoardController extends DashBoardControllerData implements IAdminPath, ISGPath
{
	private static final long	serialVersionUID	= 2742202215975142838L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());
	
	@RequestMapping(DASHBOARD)
	public ModelAndView getDashBoard(HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			IUsers users = EUsers.getSessionUser(request);
			ModelAndView modelView = new ModelAndView(DASHBOARD_PAGE);
			modelView.addObject("usEmployeeId", users.getUsEmployeeId());
			modelView.addObject("usUsersType", users.getUsUsersType());
			modelView.addObject("loginUserName", users.getUsLastName() + " " + users.getUsUserName());
			modelView.addObject("lastLoginTime", users.getLastLoginTime());
			modelView.addObject("loginUserImage", users.getUsUserImage());
			modelView.addObject("leftSideMenu", userBo.getMenusByRoleHTML(new UserParam(users)));
			portletProcessor.executor(request, response, modelView, users.getUserRoleses());
			return modelView;
		}
		catch (Exception excep)
		{
			logger.error(excep);
			
			return new ModelAndView(LOGIN);
		}
	}
	
	@RequestMapping(PRE_LOAD_PAGE)
	public ModelAndView loadPrePage(HttpServletRequest request, @PathVariable String page)
	{
		return new ModelAndView("/content/" + page);
		
	}
	
}
