package org.hbs.sg.portlet;

import java.io.Serializable;

import org.hbs.admin.bo.LayoutBo;
import org.hbs.sg.portlet.bo.PortletBo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BoBase implements Serializable
{
	private static final long	serialVersionUID	= 5494764296278446011L;
	
	@Autowired
	public LayoutBo				layoutBo;
	
	@Autowired
	public PortletBo			portletBo;
	
	public BoBase()
	{
		super();
	}
	
	public LayoutBo getLayoutBo()
	{
		return layoutBo;
	}
	
	public PortletBo getPortletBo()
	{
		return portletBo;
	}
	
	public void setLayoutBo(LayoutBo layoutBo)
	{
		this.layoutBo = layoutBo;
	}
	
	public void setPortletBo(PortletBo portletBo)
	{
		this.portletBo = portletBo;
	}
	
}