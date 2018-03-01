package org.hbs.sg.portlet.dao;

import org.hbs.util.CommonHibernateSessionFactorySupport;
import org.hbs.util.CommonValidator;
import org.hbs.util.DataTableParam;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;

@Component
public class PortletDAOImpl extends CommonHibernateSessionFactorySupport implements PortletDAO
{

	private static final long serialVersionUID = -830336512531348002L;

	@Override
	public DataTableParam getSearchList(DataTableParam dtParam, boolean isCount)
	{
		Session session = getSessionFactory().openSession();
		try
		{
			Query<?> query = null;
			StringBuffer sbSelectQry = new StringBuffer();

			if (isCount)
			{
				sbSelectQry.append(isCount ? "Select Count(*)" : "");
			}
			else
			{
				if (CommonValidator.isNotNullNotEmpty(dtParam.searchColumns))
				{
					sbSelectQry.append(SELECT_DISTINCT + dtParam.searchColumns);
				}
			}
			sbSelectQry.append(FROM + dtParam.searchBeanClass.getCanonicalName() + WHERE_1_1);

			for (String condKey : dtParam.searchCondtionMap.keySet())
			{
				sbSelectQry.append(dtParam.searchCondtionMap.get(condKey));
			}
			if (isCount)
			{
				query = session.createQuery((sbSelectQry.toString()));
			}
			else
			{
				sbSelectQry.append(dtParam._OrderBy);
				if (dtParam.iDisplayLength != 0)
				{
					query = session.createQuery((sbSelectQry.toString())).setMaxResults(dtParam.iDisplayLength).setFirstResult(dtParam.iDisplayStart);
				}
				else
				{
					query = session.createQuery((sbSelectQry.toString()));
				}
			}

			_SetNamedParameterValueFromSearchValueMap(dtParam, query);

			if (isCount)
				dtParam.dataListCount = ((Long) query.uniqueResult()).longValue();
			else
				dtParam.dataList = query.list();
		}
		catch (Exception excep)
		{
		}
		finally
		{
			if (session != null)
			{
				session.clear();
				session.close();
			}
		}
		return dtParam;
	}

}
