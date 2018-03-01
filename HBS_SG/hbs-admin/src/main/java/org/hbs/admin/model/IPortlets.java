package org.hbs.admin.model;

public interface IPortlets extends ICommonBeanFields
{
	public String getPortletBeanName();

	public String getPortletId();

	public String getPortletName();

	public void setPortletBeanName(String portletBeanName);

	public void setPortletId(String portletId);

	public void setPortletName(String portletName);

	public String getPortletTemplatePath();

	public void setPortletTemplatePath(String portletTemplatePath);

}
