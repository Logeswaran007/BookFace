package org.hbs.sg.portlet;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hbs.admin.model.IPortletsUsersRoles;
import org.hbs.admin.model.IUserRoles;
import org.hbs.util.CommonValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ModelAndView;

@Configuration
public class PortletProcessor
{
	public static PortletProcessor getInstance()
	{
		return new PortletProcessor();
	}
	
	@Autowired
	protected BoBase boBase;
	
	public void executor(HttpServletRequest request, HttpServletResponse response, ModelAndView modelView, Set<IUserRoles> userRoles)
	{
		List<String> portletList = new ArrayList<String>(4);
		if (CommonValidator.isSetFirstNotEmpty(userRoles))
		{
			IPortletExecutor executor = null;
			
			for (IUserRoles userRole : userRoles)
			{
				if (CommonValidator.isSetFirstNotEmpty(userRole.getUserRolePortlets()))
				{
					for (IPortletsUsersRoles portletUR : userRole.getUserRolePortlets())
					{
						if (portletUR.getStatus())
						{
							portletList.add(portletUR.getPortlets().getPortletTemplatePath());
							try
							{
								executor = (IPortletExecutor) Class.forName(portletUR.getPortlets().getPortletBeanName()).newInstance();
								executor.setBoBase(boBase);
								executor.execute(request, response, modelView, userRole.getUsers());
							}
							catch (ClassNotFoundException | InstantiationException | IllegalAccessException excep)
							{
								excep.printStackTrace();
							}
						}
					}
				}
			}
			
			modelView.addObject("portletList", portletList);
			
		}
	}
}
