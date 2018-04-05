package org.hbs.util.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;

/**
 * @author ananth
 */
@MappedSuperclass
public abstract class CommonLayout implements ICommonLayout
{
	protected static final long	serialVersionUID	= 4330030866270635106L;
	
	protected int				autoId;
	
	protected String			cssClassName;
	
	protected String			defaultContent;
	
	protected String			displayName;
	
	protected int				displayOrder;
	
	protected String			displayScriptColumn;
	
	protected int				displayWidth;
	
	protected ILayoutElements	layoutElements;
	
	protected String			layoutName;
	
	protected String			layoutSubName;
	
	protected boolean			orderable			= true;
	
	protected String			render				= null;
	
	protected boolean			searchable			= true;
	
	protected boolean			visible				= true;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "autoId")
	public int getAutoId()
	{
		return autoId;
	}
	
	@Column(name = "layoutSubName")
	public String getLayoutSubName()
	{
		return layoutSubName;
	}
	
	public void setLayoutSubName(String layoutSubName)
	{
		this.layoutSubName = layoutSubName;
	}
	
	@Column(name = "cssClassName")
	public String getCssClassName()
	{
		return cssClassName;
	}
	
	@Column(name = "defaultContent")
	public String getDefaultContent()
	{
		return defaultContent;
	}
	
	@Column(name = "displayName")
	public String getDisplayName()
	{
		return displayName;
	}
	
	@Column(name = "displayOrder")
	public int getDisplayOrder()
	{
		return displayOrder;
	}
	
	@Column(name = "displayScriptColumn")
	public String getDisplayScriptColumn()
	{
		return displayScriptColumn;
	}
	
	@Column(name = "displayWidth")
	public int getDisplayWidth()
	{
		return displayWidth;
	}
	
	@ManyToOne(targetEntity = LayoutElements.class)
	@JoinColumn(name = "elementId", nullable = false)
	public ILayoutElements getLayoutElements()
	{
		return layoutElements;
	}
	
	@Column(name = "layoutName")
	public String getLayoutName()
	{
		return layoutName;
	}
	
	@Column(name = "render")
	public String getRender()
	{
		return render;
	}
	
	@Column(name = "orderable")
	public boolean isOrderable()
	{
		return orderable;
	}
	
	@Column(name = "searchable")
	public boolean isSearchable()
	{
		return searchable;
	}
	
	@Column(name = "visible")
	public boolean isVisible()
	{
		return visible;
	}
	
	public void setAutoId(int autoId)
	{
		this.autoId = autoId;
	}
	
	public void setCssClassName(String cssClassName)
	{
		this.cssClassName = cssClassName;
	}
	
	public void setDefaultContent(String defaultContent)
	{
		this.defaultContent = defaultContent;
	}
	
	public void setDisplayName(String displayName)
	{
		this.displayName = displayName;
	}
	
	public void setDisplayOrder(int displayOrder)
	{
		this.displayOrder = displayOrder;
	}
	
	public void setDisplayScriptColumn(String displayScriptColumn)
	{
		this.displayScriptColumn = displayScriptColumn;
	}
	
	public void setDisplayWidth(int displayWidth)
	{
		this.displayWidth = displayWidth;
	}
	
	public void setLayoutElements(ILayoutElements layoutElements)
	{
		this.layoutElements = layoutElements;
	}
	
	public void setLayoutName(String layoutName)
	{
		this.layoutName = layoutName;
	}
	
	public void setOrderable(boolean orderable)
	{
		this.orderable = orderable;
	}
	
	public void setRender(String render)
	{
		this.render = render;
	}
	
	public void setSearchable(boolean searchable)
	{
		this.searchable = searchable;
	}
	
	public void setVisible(boolean visible)
	{
		this.visible = visible;
	}
	
}
