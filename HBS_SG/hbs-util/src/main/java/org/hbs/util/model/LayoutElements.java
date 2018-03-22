package org.hbs.util.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hbs.util.EBusinessKey;

@Entity
@Table(name = "layoutelements")
public class LayoutElements implements ILayoutElements, EBusinessKey
{
	private static final long	serialVersionUID	= -8827883952227378070L;

	private String				beanName;
	private String				columnType;
	private String				comboSearchProperty;
	private String				dataType;
	private String				displayName;
	private String				displayProperty;
	private String				displayPropertyGetter;
	private String				elementId;
	private String				render;

	public LayoutElements()
	{
		super();
	}

	public LayoutElements(String beanName, String columnType, String comboSearchProperty, String dataType, String displayName, String displayProperty, String displayPropertyGetter, String elementId,
			String render)
	{
		super();
		this.beanName = beanName;
		this.columnType = columnType;
		this.comboSearchProperty = comboSearchProperty;
		this.dataType = dataType;
		this.displayName = displayName;
		this.displayProperty = displayProperty;
		this.displayPropertyGetter = displayPropertyGetter;
		this.elementId = elementId;
		this.render = render;
	}

	@Column(name = "beanName")
	public String getBeanName()
	{
		return beanName;
	}

	@Transient
	public String getBusinessKey(String... combination)
	{
		return EKey.Auto("LET");
	}

	@Column(name = "columnType")
	public String getColumnType()
	{
		return columnType;
	}

	@Column(name = "comboSearchProperty")
	public String getComboSearchProperty()
	{
		return comboSearchProperty;
	}

	@Column(name = "dataType")
	public String getDataType()
	{
		return dataType;
	}

	@Column(name = "displayName")
	public String getDisplayName()
	{
		return displayName;
	}

	@Column(name = "displayProperty")
	public String getDisplayProperty()
	{
		return displayProperty;
	}

	@Column(name = "displayPropertyGetter")
	public String getDisplayPropertyGetter()
	{
		return displayPropertyGetter;
	}

	@Id
	@Column(name = "elementId")
	public String getElementId()
	{
		return elementId;
	}

	@Column(name = "render")
	public String getRender()
	{
		return render;
	}

	public void setBeanName(String beanName)
	{
		this.beanName = beanName;
	}

	public void setColumnType(String columnType)
	{
		this.columnType = columnType;
	}

	public void setComboSearchProperty(String comboSearchProperty)
	{
		this.comboSearchProperty = comboSearchProperty;
	}

	public void setDataType(String dataType)
	{
		this.dataType = dataType;
	}

	public void setDisplayName(String displayName)
	{
		this.displayName = displayName;
	}

	public void setDisplayProperty(String displayProperty)
	{
		this.displayProperty = displayProperty;
	}

	public void setDisplayPropertyGetter(String displayPropertyGetter)
	{
		this.displayPropertyGetter = displayPropertyGetter;
	}

	public void setElementId(String elementId)
	{
		this.elementId = elementId;
	}

	public void setRender(String render)
	{
		this.render = render;
	}
}
