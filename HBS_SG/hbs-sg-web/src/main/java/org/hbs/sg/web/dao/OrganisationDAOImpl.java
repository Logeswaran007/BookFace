package org.hbs.sg.web.dao;

import org.hbs.sg.model.concern.Organisation;
import org.hbs.sg.model.concern.OrganisationAddress;
import org.hbs.util.CommonHibernateSessionFactorySupport;
import org.hbs.util.CommonValidator;
import org.hbs.util.DataTableParam;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;

@Component
public class OrganisationDAOImpl extends CommonHibernateSessionFactorySupport implements OrganisationDAO
{

	private static final long serialVersionUID = -1174233783494085570L;

	@Override
	public DataTableParam getOrganisationList(DataTableParam dtParam, boolean isCount)
	{
		Session session = getSessionFactory().openSession();
		try
		{
			Query<?> query = null;

			StringBuffer sbSelectQry = new StringBuffer();

			sbSelectQry.append(isCount ? "Select Count(*)" : "");

			if (CommonValidator.isNotNullNotEmpty(dtParam.searchColumns))
				sbSelectQry.append(SELECT + dtParam.searchColumns);

			sbSelectQry.append(FROM + OrganisationAddress.class.getCanonicalName() + WHERE_1_1);

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
	public boolean saveOrUpdate(Organisation organisation)
	{

		Transaction _Txn = null;
		Session session = null;
		try
		{
			session = getSessionFactory().openSession();
			_Txn = session.beginTransaction();
			session.saveOrUpdate("Organisation", organisation);
			_Txn.commit();
			return true;
		}
		catch (Exception excep)
		{
			excep.printStackTrace();
			if (_Txn != null && _Txn.isActive())
			{
				try
				{
					_Txn.rollback();
				}
				catch (HibernateException hibExcep)
				{
					hibExcep.printStackTrace();
				}
			}
		}
		finally
		{
			if (session != null)
			{
				session.clear();
				session.close();
			}
		}
		return false;

	}

}
