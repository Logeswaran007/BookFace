package org.hbs.sg.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.hbs.util.Param;

public class SchemeParam extends Param
{

	private static final long serialVersionUID = -4134551024794083131L;

	public SchemeParam(HttpServletRequest request)
	{
		this.request = request;
	}

}
