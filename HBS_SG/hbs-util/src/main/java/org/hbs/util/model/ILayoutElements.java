package org.hbs.util.model;

/**
 * @author Ananth Balasubramanian
 */
public interface ILayoutElements extends java.io.Serializable
{
	public String getBeanName();

	public String getColumnType();

	public String getComboSearchProperty();

	public String getDataType();

	public String getDisplayName();

	public String getDisplayProperty();

	public String getDisplayPropertyGetter();

	public String getElementId();

	public String getRender();

	public void setBeanName(String beanName);

	public void setColumnType(String columnType);

	public void setComboSearchProperty(String comboSearchProperty);

	public void setDataType(String dataType);

	public void setDisplayName(String displayName);

	public void setDisplayProperty(String displayProperty);

	public void setDisplayPropertyGetter(String displayPropertyGetter);

	public void setElementId(String elementId);

	public void setRender(String render);

}
