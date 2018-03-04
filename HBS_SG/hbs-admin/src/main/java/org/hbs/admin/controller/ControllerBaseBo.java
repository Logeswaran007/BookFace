package org.hbs.admin.controller;

import org.hbs.admin.bo.LayoutBo;
import org.hbs.admin.bo.RolesBo;
import org.hbs.admin.bo.UserBo;
import org.hbs.admin.menucomponent.bo.MenuBo;
import org.hbs.util.IConstProperty;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class ControllerBaseBo implements IConstProperty
{
	private static final long	serialVersionUID	= -6835191712772232799L;

	@Autowired
	public MenuBo				menuBo;

	@Autowired
	public UserBo				userBo;

	@Autowired
	public RolesBo				roleBo;

	@Autowired
	public LayoutBo				layoutBo;

}
