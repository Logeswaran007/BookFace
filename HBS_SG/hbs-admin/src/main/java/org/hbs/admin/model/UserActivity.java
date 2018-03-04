package org.hbs.admin.model;

import java.io.IOException;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hbs.util.EnumInterface;
import org.hbs.util.dao.ICRUDBean;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.flipkart.zjsonpatch.JsonDiff;

@Entity
@Table(name = "useractivity")
public class UserActivity extends CommonBeanFields implements IUserActivity, ICRUDBean
{
	public enum Activity implements EnumInterface
	{
		Password, PasswordByAdmin, Save, Update
	}
	
	private static final long	serialVersionUID	= -8681657293532683320L;
	
	private String				action;
	
	private String				after;
	
	private int					autoId;
	
	private String				before;
	
	private String				className;
	
	private String				group;
	
	public UserActivity()
	{
	}
	
	public UserActivity(int autoId, String action, String className, String before, String after, String group)
	{
		super();
		this.autoId = autoId;
		this.action = action;
		this.className = className;
		this.before = before;
		this.after = after;
		this.group = group;
	}
	
	public String findDifference() throws JsonProcessingException, IOException
	{
		ObjectMapper jackson = new ObjectMapper();
		JsonNode beforeNode = jackson.readTree(before);
		JsonNode afterNode = jackson.readTree(after);
		JsonNode patchNode = JsonDiff.asJson(beforeNode, afterNode);
		return patchNode.toString();
	}
	
	@Column(name = "action")
	public String getAction()
	{
		return action;
	}
	
	@Column(name = "after")
	public String getAfter()
	{
		return after;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "autoId")
	public int getAutoId()
	{
		return autoId;
	}
	
	@Column(name = "before")
	public String getBefore()
	{
		return before;
	}
	
	@Column(name = "className")
	public String getClassName()
	{
		return className;
	}
	
	@Column(name = "group")
	public String getGroup()
	{
		return group;
	}
	
	public void setAction(String action)
	{
		this.action = action;
	}
	
	public void setAfter(String after)
	{
		this.after = after;
	}
	
	public void setAutoId(int autoId)
	{
		this.autoId = autoId;
	}
	
	public void setBefore(String before)
	{
		this.before = before;
	}
	
	public void setClassName(String className)
	{
		this.className = className;
	}
	
	public void setGroup(String group)
	{
		this.group = group;
	}
	
}
