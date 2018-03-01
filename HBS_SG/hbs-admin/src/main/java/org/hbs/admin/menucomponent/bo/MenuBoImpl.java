package org.hbs.admin.menucomponent.bo;

import java.util.ArrayList;
import java.util.List;

import org.hbs.admin.menucomponent.MaMenuParam;
import org.hbs.admin.menucomponent.dao.MenuDAO;
import org.hbs.admin.model.IUserRoles;
import org.hbs.admin.model.MaMenu;
import org.hbs.util.IParam.ENamed;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MenuBoImpl implements MenuBo
{
	@Autowired
	private MenuDAO			menuDAO;

	private StringBuilder	sbHTML	= new StringBuilder();

	public MenuDAO getMenuDAO()
	{
		return menuDAO;
	}

	public String getMenusByRoleHTML(MaMenuParam menuParam)
	{

		List<String> rolesList = new ArrayList<String>(0);
		for (IUserRoles userRole : menuParam.users.getUserRoleses())
		{
			rolesList.add(userRole.getRoles().getRlRoleId());
		}

		ENamed.EqualTo.param_AND(menuParam, "MM.producer.producerId", menuParam.users.getProducer().getProducerId());
		ENamed.In.param_AND(menuParam, "MM.rlRoles.rlRoleId", rolesList);

		List<MaMenu> maMenuList = menuDAO.getMenusByRole(menuParam);
		Document doc = Jsoup.parse("<div></div>");
		Element parent = doc.select("div").first();
		MaMenu menu = null;
		for (int i = 0; i < maMenuList.size(); i++)
		{
			menu = maMenuList.get(i);
			menu._getMenuHTML(parent, (i == 0 ? "start active" : (i == maMenuList.size() - 1) ? "last " : ""));
		}
		return parent.html().replaceAll("\n", "");
	}

	public StringBuilder getSbHTML()
	{
		return sbHTML;
	}

	public void setMenuDAO(MenuDAO menuDAO)
	{
		this.menuDAO = menuDAO;
	}

	public void setSbHTML(StringBuilder sbHTML)
	{
		this.sbHTML = sbHTML;
	}

}
