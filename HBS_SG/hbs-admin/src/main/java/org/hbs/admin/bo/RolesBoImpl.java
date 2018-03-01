package org.hbs.admin.bo;

import java.util.List;

import org.hbs.admin.dao.RolesDAO;
import org.hbs.admin.model.IRoles;
import org.springframework.stereotype.Component;

@Component
public class RolesBoImpl implements RolesBo
{
	private RolesDAO rolesDAO;

	public RolesDAO getRolesDAO()
	{
		return rolesDAO;
	}

	public List<IRoles> getRolesList()
	{
		return rolesDAO.getRolesList();
	}

	public void setRolesDAO(RolesDAO rolesDAO)
	{
		this.rolesDAO = rolesDAO;
	}

}
