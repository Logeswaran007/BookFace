package org.hbs.admin.controller;

public class Response
{
	private Object	data;
	private String	status;
	
	public Response()
	{
		
	}
	
	public Response(String status, Object data)
	{
		this.status = status;
		this.data = data;
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
}