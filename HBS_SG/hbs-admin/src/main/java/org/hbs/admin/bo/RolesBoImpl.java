package org.hbs.admin.bo;

import java.util.List;

import org.hbs.admin.dao.RolesDAO;
import org.hbs.admin.model.IRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class RolesBoImpl implements RolesBo
{
	@Autowired
	private RolesDAO rolesDAO;
	
	public List<IRoles> getRolesList()
	{
		return rolesDAO.getRolesList();
	}
	
}
