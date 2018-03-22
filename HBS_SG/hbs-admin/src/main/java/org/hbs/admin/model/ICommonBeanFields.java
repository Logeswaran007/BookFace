package org.hbs.admin.model;

import java.io.Serializable;
import java.sql.Timestamp;

public interface ICommonBeanFields extends Serializable
{
	public Timestamp getCreatedDate();
	
	public String getCreatedDateByTimeZone();
	
	public IUsers getCreatedUser();
	
	public Timestamp getModifiedDate();
	
	public String getModifiedDateByTimeZone();
	
	public IUsers getModifiedUser();
	
	public Boolean getStatus();
	
	public void setCreatedDate(Timestamp createdDate);
	
	public void setCreatedUser(IUsers createdUser);
	
	public void setModifiedDate(Timestamp modifiedDate);
	
	public void setModifiedUser(IUsers modifiedUser);
	
	public void setStatus(Boolean status);
	
}
