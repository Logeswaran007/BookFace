package org.hbs.sg.web.controller;

import java.io.Serializable;

import org.hbs.admin.controller.ControllerBaseBo;
import org.hbs.sg.web.bo.SGBo;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class SGControllerBaseBo extends ControllerBaseBo implements Serializable
{
	private static final long	serialVersionUID	= -6039133443179071395L;

	@Autowired
	protected SGBo				sgBo;

	public SGControllerBaseBo()
	{
		super();
	}

}