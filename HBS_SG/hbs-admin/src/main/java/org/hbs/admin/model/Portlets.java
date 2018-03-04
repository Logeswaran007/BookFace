package org.hbs.admin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hbs.util.EBusinessKey;
import org.hbs.util.dao.ICRUDBean;

@Entity
@Table(name = "portlets")
public class Portlets extends CommonBeanFields implements IPortlets, EBusinessKey, ICRUDBean
{
	
	private static final long	serialVersionUID	= 515193003553697834L;
	
	private String				portletBeanName;
	
	private String				portletId;
	
	private String				portletName;
	
	private String				portletTemplatePath;
	
	public Portlets()
	{
		super();
		this.portletId = getBusinessKey();
	}
	
	public Portlets(String rlRoleId)
	{
		super();
		this.portletId = getBusinessKey();
	}
	
	@Override
	public String getBusinessKey(String... combination)
	{
		return EKey.Auto("PT");
	}
	
	@Column(name = "portletBeanName")
	public String getPortletBeanName()
	{
		return portletBeanName;
	}
	
	@Id
	@Column(name = "portletId")
	public String getPortletId()
	{
		return portletId;
	}
	
	@Column(name = "portletName")
	public String getPortletName()
	{
		return portletName;
	}
	
	@Column(name = "portletTemplatePath")
	public String getPortletTemplatePath()
	{
		return portletTemplatePath;
	}
	
	public void setPortletBeanName(String portletBeanName)
	{
		this.portletBeanName = portletBeanName;
	}
	
	public void setPortletId(String portletId)
	{
		this.portletId = portletId;
	}
	
	public void setPortletName(String portletName)
	{
		this.portletName = portletName;
	}
	
	public void setPortletTemplatePath(String portletTemplatePath)
	{
		this.portletTemplatePath = portletTemplatePath;
	}
}