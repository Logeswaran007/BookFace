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
	
	private String				columnType;
	private String				dataType;
	private String				displayName;
	private String				displayProperty;
	private String				displayPropertyGetter;
	private String				elementId;
	private boolean				isEmbeddedClass		= false;
	private String				render;
	private String				transformerBeanName;
	private String				displayPropertyAlias;
	
	public LayoutElements()
	{
		super();
	}
	
	public LayoutElements(String transformerBeanName, String columnType, String dataType, String displayName, String displayProperty, String displayPropertyGetter, String elementId, String render)
	{
		super();
		this.transformerBeanName = transformerBeanName;
		this.columnType = columnType;
		this.dataType = dataType;
		this.displayName = displayName;
		this.displayProperty = displayProperty;
		this.displayPropertyGetter = displayPropertyGetter;
		this.elementId = elementId;
		this.render = render;
	}
	
	@Column(name = "displayPropertyAlias")
	public String getDisplayPropertyAlias()
	{
		return displayPropertyAlias;
	}
	
	public void setDisplayPropertyAlias(String displayPropertyAlias)
	{
		this.displayPropertyAlias = displayPropertyAlias;
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
	
	@Column(name = "transformerBeanName")
	public String getTransformerBeanName()
	{
		return transformerBeanName;
	}
	
	@Column(name = "isEmbeddedClass")
	public boolean isEmbeddedClass()
	{
		return isEmbeddedClass;
	}
	
	public void setColumnType(String columnType)
	{
		this.columnType = columnType;
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
	
	public void setEmbeddedClass(boolean isEmbeddedClass)
	{
		this.isEmbeddedClass = isEmbeddedClass;
	}
	
	public void setRender(String render)
	{
		this.render = render;
	}
	
	public void setTransformerBeanName(String transformerBeanName)
	{
		this.transformerBeanName = transformerBeanName;
	}
}
