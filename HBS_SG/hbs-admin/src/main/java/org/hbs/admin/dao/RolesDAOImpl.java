package org.hbs.admin.dao;

import java.util.ArrayList;
import java.util.List;

import org.hbs.admin.model.IRoles;
import org.hbs.admin.model.Roles;
import org.hbs.util.CommonHibernateSessionFactorySupport;
import org.hbs.util.CustomLogger;
import org.hibernate.Session;
import org.springframework.stereotype.Component;

@Component
public class RolesDAOImpl extends CommonHibernateSessionFactorySupport implements RolesDAO
{
	private static final long serialVersionUID = 8686238922988371884L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());

	
	@SuppressWarnings("unchecked")
	public List<IRoles> getRolesList()
	{
		Session session = getSessionFactory().openSession();
		try
		{
			return session.createQuery(FROM + Roles.class.getCanonicalName() + " WHERE rlRoleId <> 'Dummy' AND status = true ORDER BY rlRoleId").list();
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		finally
		{
			if (session != null)
			{
				session.clear();
				session.close();
			}
		}
		return new ArrayList<IRoles>(0);
	}
	
}
