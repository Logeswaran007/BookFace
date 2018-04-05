package org.hbs.util.model;

/**
 * @author Ananth Balasubramanian
 */
public interface ILayoutElements extends java.io.Serializable
{
	public String getDisplayPropertyAlias();
	
	public void setDisplayPropertyAlias(String displayPropertyAlias);
	
	public boolean isEmbeddedClass();
	
	public void setEmbeddedClass(boolean isEmbeddedClass);
	
	public String getTransformerBeanName();
	
	public String getColumnType();
	
	public String getDataType();
	
	public String getDisplayName();
	
	public String getDisplayProperty();
	
	public String getDisplayPropertyGetter();
	
	public String getElementId();
	
	public String getRender();
	
	public void setTransformerBeanName(String transformerBeanName);
	
	public void setColumnType(String columnType);
	
	public void setDataType(String dataType);
	
	public void setDisplayName(String displayName);
	
	public void setDisplayProperty(String displayProperty);
	
	public void setDisplayPropertyGetter(String displayPropertyGetter);
	
	public void setElementId(String elementId);
	
	public void setRender(String render);
	
}
