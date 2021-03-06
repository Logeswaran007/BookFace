package org.hbs.admin.model;

import java.io.IOException;

import org.hbs.util.ICRUDBean;

import com.fasterxml.jackson.core.JsonProcessingException;

public interface IUserActivity extends ICommonBeanFields, ICRUDBean
{
	
	public String findDifference() throws JsonProcessingException, IOException;
	
	public String getAction();
	
	public String getAfter();
	
	public int getAutoId();
	
	public String getBefore();
	
	public String getClassName();
	
	public String getGroup();
	
	public void setAction(String action);
	
	public void setAfter(String after);
	
	public void setAutoId(int autoId);
	
	public void setBefore(String before);
	
	public void setClassName(String className);
	
	public void setGroup(String group);
	
}