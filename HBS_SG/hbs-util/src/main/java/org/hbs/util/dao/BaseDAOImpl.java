package org.hbs.util.dao;

import org.hbs.util.CommonHibernateSessionFactorySupport;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableParam;
import org.hbs.util.IParam;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;

@Component
public class BaseDAOImpl extends CommonHibernateSessionFactorySupport implements IBaseDAO
{
	
	private static final long	serialVersionUID	= -4146239461295369929L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());
	
	@Override
	public IParam getDataList(IParam param)
	{
		Session session = getSessionFactory().openSession();
		try
		{
			Query<?> query = null;
			
			StringBuffer sbSelectQry = new StringBuffer();
			
			if (CommonValidator.isNotNullNotEmpty(param.getSearchColumns()))
				sbSelectQry.append(SELECT_DISTINCT + param.getSearchColumns());
			
			sbSelectQry.append(FROM + param.getSearchBeanClass().getCanonicalName() + WHERE_1_1);
			
			for (String condKey : param.getSearchCondtionMap().keySet())
			{
				sbSelectQry.append(param.getSearchCondtionMap().get(condKey));
			}
			sbSelectQry.append(param.get_OrderBy());
			
			if (param.getMaxResults() != 0)
			{
				query = session.createQuery(sbSelectQry.toString()).setMaxResults(param.getMaxResults()).setFirstResult(param.getMinResults());
			}
			else
			{
				query = session.createQuery((sbSelectQry.toString()));
			}
			
			_SetNamedParameterValueFromSearchValueMap(param, query);
			
			param.setDataList(query.list());
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
		return param;
		
	}
	
	@Override
	public DataTableParam getDataTableList(DataTableParam dtParam, boolean isCount)
	{
		Session session = getSessionFactory().openSession();
		try
		{
			Query<?> query = null;
			
			StringBuffer sbSelectQry = new StringBuffer();
			
			sbSelectQry.append(isCount ? "Select Count(*)" : "");
			
			if (CommonValidator.isNotNullNotEmpty(dtParam.searchColumns))
				sbSelectQry.append(SELECT + dtParam.searchColumns);
			
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
		return dtParam;
	}
	
	@Override
	public boolean saveOrUpdate(String beanName, ICRUDBean... beans)
	{
		Transaction _Txn = null;
		Session session = null;
		try
		{
			session = getSessionFactory().openSession();
			_Txn = session.beginTransaction();
			
			for (ICRUDBean bean : beans)
			{
				session.saveOrUpdate(beanName, bean);
			}
			
			_Txn.commit();
			
			return true;
		}
		catch (Exception excep)
		{
			logger.error(excep);
			if (_Txn != null && _Txn.isActive())
			{
				try
				{
					_Txn.rollback();
				}
				catch (HibernateException hibExcep)
				{
					logger.error(hibExcep);
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
