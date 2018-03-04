package org.hbs.admin.menucomponent.dao;

import java.util.ArrayList;
import java.util.List;

import org.hbs.admin.menucomponent.MaMenuParam;
import org.hbs.admin.model.MaMenu;
import org.hbs.util.CommonHibernateSessionFactorySupport;
import org.hbs.util.IConstProperty;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

@Repository
public class MenuDAOImpl extends CommonHibernateSessionFactorySupport implements MenuDAO, IConstProperty
{
	private static final long serialVersionUID = -1506618682884270152L;
	
	public MenuDAOImpl()
	{
		super();
	}
	
	@SuppressWarnings("unchecked")
	public List<MaMenu> getMenusByRole(MaMenuParam menuParam)
	{
		Session session = getSessionFactory().openSession();
		
		try
		{
			StringBuffer sbSelectQry = new StringBuffer();
			sbSelectQry.append("Select Distinct MM.maMenu From MaMenuRole MM" + WHERE_1_1);
			for (String condKey : menuParam.searchCondtionMap.keySet())
			{
				sbSelectQry.append(menuParam.searchCondtionMap.get(condKey));
			}
			sbSelectQry.append(" Order By MM.maMenu.level");
			
			Query<MaMenu> query = session.createQuery((sbSelectQry.toString()));
			
			_SetNamedParameterValueFromSearchValueMap(menuParam, query);
			
			return query.list();
		}
		catch (Exception excep)
		{
			return new ArrayList<MaMenu>(0);
		}
		finally
		{
			if (session != null)
			{
				session.clear();
				session.close();
			}
		}
	}
}
