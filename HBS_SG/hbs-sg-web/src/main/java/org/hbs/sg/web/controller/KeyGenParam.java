package org.hbs.sg.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.hbs.util.Param;

public class KeyGenParam extends Param
{
	private static final long serialVersionUID = 8717623325659420939L;

	public KeyGenParam(HttpServletRequest request)
	{
		this.request = request;
	}

}
