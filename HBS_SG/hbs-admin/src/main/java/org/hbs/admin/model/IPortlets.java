package org.hbs.admin.model;

import org.hbs.util.ICRUDBean;

public interface IPortlets extends ICommonBeanFields, ICRUDBean
{
	public String getPortletBeanName();
	
	public String getPortletId();
	
	public String getPortletName();
	
	public String getPortletTemplatePath();
	
	public void setPortletBeanName(String portletBeanName);
	
	public void setPortletId(String portletId);
	
	public void setPortletName(String portletName);
	
	public void setPortletTemplatePath(String portletTemplatePath);
	
}
