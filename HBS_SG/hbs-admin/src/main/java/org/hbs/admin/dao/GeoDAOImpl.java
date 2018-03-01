package org.hbs.admin.dao;

import org.hbs.admin.model.Country;
import org.hbs.admin.model.State;
import org.hbs.util.CommonHibernateSessionFactorySupport;
import org.hbs.util.DataTableParam;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;

@Component
public class GeoDAOImpl extends CommonHibernateSessionFactorySupport implements GeoDAO
{

	private static final long serialVersionUID = -1861687319732272276L;

	@Override
	public DataTableParam getStateList(DataTableParam dtParam)
	{
		Session session = getSessionFactory().openSession();
		try
		{
			StringBuffer sbSelectQry = new StringBuffer();

			sbSelectQry.append(FROM + State.class.getCanonicalName() + WHERE_1_1);

			for (String condKey : dtParam.searchCondtionMap.keySet())
			{
				sbSelectQry.append(dtParam.searchCondtionMap.get(condKey));
			}
			Query<?> query = session.createQuery((sbSelectQry.toString()));

			_SetNamedParameterValueFromSearchValueMap(dtParam, query);

			dtParam.dataList = query.list();
		}
		catch (Exception excep)
		{
			excep.printStackTrace();
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

	@Override
	public DataTableParam getCountryList(DataTableParam dtParam)
	{
		Session session = getSessionFactory().openSession();
		try
		{
			StringBuffer sbSelectQry = new StringBuffer();

			sbSelectQry.append(FROM + Country.class.getCanonicalName() + WHERE_1_1);

			for (String condKey : dtParam.searchCondtionMap.keySet())
			{
				sbSelectQry.append(dtParam.searchCondtionMap.get(condKey));
			}
			sbSelectQry.append(dtParam._OrderBy);
			Query<?> query = session.createQuery((sbSelectQry.toString()));

			_SetNamedParameterValueFromSearchValueMap(dtParam, query);

			dtParam.dataList = query.list();
		}
		catch (Exception excep)
		{
			excep.printStackTrace();
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
