package org.hbs.util.model;

import java.io.Serializable;

public interface ICommonLayout extends Serializable
{
	public String getCssClassName();

	public String getDefaultContent();

	public String getDisplayName();

	public int getDisplayOrder();

	public String getDisplayScriptColumn();

	public int getDisplayWidth();

	public ILayoutElements getLayoutElements();

	public String getLayoutSubName();

	public void setLayoutSubName(String layoutSubName);

	public String getLayoutName();

	public String getRender();

	public boolean isOrderable();

	public boolean isSearchable();

	public boolean isVisible();

	public void setCssClassName(String saCssClassName);

	public void setDefaultContent(String defaultContent);

	public void setDisplayName(String displayName);

	public void setDisplayOrder(int displayOrder);

	public void setDisplayScriptColumn(String displayScriptColumn);

	public void setDisplayWidth(int displayWidth);

	public void setLayoutElements(ILayoutElements layoutElements);

	public void setLayoutName(String layoutName);

	public void setOrderable(boolean orderable);

	public void setRender(String render);

	public void setSearchable(boolean searchable);

	public void setVisible(boolean visible);
}