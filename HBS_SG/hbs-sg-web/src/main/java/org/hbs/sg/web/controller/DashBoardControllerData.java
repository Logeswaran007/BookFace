package org.hbs.sg.web.controller;

import org.hbs.admin.controller.ControllerBaseBo;
import org.hbs.sg.portlet.PortletProcessor;
import org.springframework.beans.factory.annotation.Autowired;

public class DashBoardControllerData extends ControllerBaseBo
{
	
	private static final long	serialVersionUID	= -6434615666863469384L;
	
	@Autowired
	protected PortletProcessor	portletProcessor;
	
	public PortletProcessor getPortletProcessor()
	{
		return portletProcessor;
	}
	
	public void setPortletProcessor(PortletProcessor portletProcessor)
	{
		this.portletProcessor = portletProcessor;
	}
	
}