package org.hbs.admin.controller;

import org.hbs.admin.bo.UserBo;
import org.hbs.util.IConstProperty;
import org.hbs.util.bo.LayoutBo;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class ControllerBaseBo implements IConstProperty
{
	private static final long	serialVersionUID	= -6835191712772232799L;
	
	@Autowired
	public LayoutBo				layoutBo;
	
	@Autowired
	public UserBo				userBo;
	
}
