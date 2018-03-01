package org.hbs.admin.dao;

import org.hbs.admin.model.IMessages;
import org.hbs.admin.model.Messages;
import org.hbs.admin.model.MessagesUserMapping;
import org.hbs.util.CommonHibernateSessionFactorySupport;
import org.hbs.util.DataTableParam;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;

@Component
public class MessagesDAOImpl extends CommonHibernateSessionFactorySupport implements MessagesDAO
{

	private static final long serialVersionUID = -580444015065895383L;

	@Override
	public DataTableParam getMessagesList(DataTableParam dtParam, boolean isCount)
	{
		Session session = getSessionFactory().openSession();
		try
		{
			Query<?> query = null;
			StringBuffer sbSelectQry = new StringBuffer();
			sbSelectQry.append(isCount ? "Select Count(*)" : "");

			sbSelectQry.append(FROM + Messages.class.getCanonicalName() + WHERE_1_1);
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
				query = session.createQuery((sbSelectQry.toString())).setMaxResults(dtParam.iDisplayLength).setFirstResult(dtParam.iDisplayStart);
			}

			_SetNamedParameterValueFromSearchValueMap(dtParam, query);

			if (isCount)
				dtParam.dataListCount = ((Long) query.uniqueResult()).longValue();
			else
				dtParam.dataList = query.list();

		}
		catch (Exception excep)
		{
			dtParam.dataListCount = 0;
			dtParam.dataList.clear();
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
	public boolean saveOrUpdateMessages(IMessages message)
	{
		Transaction _Txn = null;
		Session session = null;
		try
		{
			session = getSessionFactory().openSession();
			_Txn = session.beginTransaction();
			session.saveOrUpdate(message);
			_Txn.commit();
			return true;
		}
		catch (Exception excep)
		{
			if (_Txn != null && _Txn.isActive())
			{
				try
				{
					_Txn.rollback();
				}
				catch (HibernateException hibExcep)
				{
				}
			}
			return false;
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

	@Override
	public boolean saveOrUpdateMessageUserMapping(MessagesUserMapping... messagesUserMapping)
	{
		Transaction _Txn = null;
		Session session = null;
		try
		{
			session = getSessionFactory().openSession();
			_Txn = session.beginTransaction();
			for (MessagesUserMapping _MUM : messagesUserMapping)
				session.saveOrUpdate(_MUM);
			_Txn.commit();
			return true;
		}
		catch (Exception excep)
		{
			if (_Txn != null && _Txn.isActive())
			{
				try
				{
					_Txn.rollback();
				}
				catch (HibernateException hibExcep)
				{
				}
			}
			return false;
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

	@Override
	public DataTableParam getMessagesUserList(DataTableParam dtParam, boolean isCount)
	{
		Session session = getSessionFactory().openSession();
		try
		{
			Query<?> query = null;
			StringBuffer sbSelectQry = new StringBuffer();
			sbSelectQry.append(isCount ? "Select Count(*)" : "");

			sbSelectQry.append(FROM + MessagesUserMapping.class.getCanonicalName() + WHERE_1_1);
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
				query = session.createQuery((sbSelectQry.toString())).setMaxResults(dtParam.iDisplayLength).setFirstResult(dtParam.iDisplayStart);
			}

			_SetNamedParameterValueFromSearchValueMap(dtParam, query);

			if (isCount)
				dtParam.dataListCount = ((Long) query.uniqueResult()).longValue();
			else
				dtParam.dataList = query.list();

		}
		catch (Exception excep)
		{
			dtParam.dataListCount = 0;
			dtParam.dataList.clear();
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
