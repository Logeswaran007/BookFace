package org.hbs.util;

import java.io.Serializable;

public class Response implements Serializable
{
	private static final long	serialVersionUID	= 6301069008366104559L;
	
	public static String		OK					= "OK";
	public static String		ERROR				= "ERROR";
	private Object				data;
	private String				status;
	private boolean				valid;
	
	public Response()
	{
		
	}
	
	public Response(String status, Object data)
	{
		this.status = status;
		this.data = data;
	}
	
	public Response(boolean valid, Object data)
	{
		this.valid = valid;
		this.data = data;
		
	}
	
	public Response(boolean valid, String status, Object data)
	{
		this.status = status;
		this.data = data;
		this.valid = valid;
	}
	
	public Object getData()
	{
		return data;
	}
	
	public String getStatus()
	{
		return status;
	}
	
	public void setData(Object data)
	{
		this.data = data;
	}
	
	public void setStatus(String status)
	{
		this.status = status;
	}
	
	public boolean isValid()
	{
		return valid;
	}
	
	public void setValid(boolean valid)
	{
		this.valid = valid;
	}
}