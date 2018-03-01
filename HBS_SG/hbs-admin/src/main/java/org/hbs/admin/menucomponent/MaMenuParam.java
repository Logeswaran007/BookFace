package org.hbs.admin.menucomponent;

import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.MaMenu;
import org.hbs.util.Param;

public class MaMenuParam extends Param
{
	private static final long	serialVersionUID	= -7335321670300066425L;
	public MaMenu				maMenu;
	public IUsers				users;

	public MaMenuParam(IUsers users)
	{
		super();
		this.users = users;
	}

}
