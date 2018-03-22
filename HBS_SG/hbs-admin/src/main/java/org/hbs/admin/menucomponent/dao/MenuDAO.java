package org.hbs.admin.menucomponent.dao;

import java.util.List;

import org.hbs.admin.menucomponent.MaMenuParam;
import org.hbs.admin.model.MaMenu;

public interface MenuDAO
{
	public List<MaMenu> getMenusByRole(MaMenuParam menuData);
}
