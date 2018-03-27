package org.hbs.admin.model;

public interface IProducersProperty extends IProducersBase
{
	
	public int getAutoId();
	
	public String getEnumKey();
	
	public String getGroup();
	
	public String getProperty();
	
	public String getValue();
	
	public boolean isStatus();
	
	public void setAutoId(int autoId);
	
	public void setEnumKey(String enumKey);
	
	public void setGroup(String group);
	
	public void setProperty(String property);
	
	public void setStatus(boolean status);
	
	public void setValue(String value);
	
}
