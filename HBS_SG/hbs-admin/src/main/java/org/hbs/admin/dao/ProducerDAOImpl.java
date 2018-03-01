package org.hbs.admin.dao;

import org.hbs.admin.controller.param.ProducerParam;
import org.hbs.admin.model.Producers;
import org.hbs.util.CommonHibernateSessionFactorySupport;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;

@Component
public class ProducerDAOImpl extends CommonHibernateSessionFactorySupport implements ProducerDAO
{
	private static final long	serialVersionUID	= -7281091455670284516L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());

	@Override
	public Producers getProducers(ProducerParam producerParam)
	{

		Session session = getSessionFactory().openSession();
		try
		{
			StringBuffer sbSelectQry = new StringBuffer();

			sbSelectQry.append(FROM + Producers.class.getCanonicalName() + WHERE_1_1);

			for (String condKey : producerParam.searchCondtionMap.keySet())
			{
				sbSelectQry.append(producerParam.searchCondtionMap.get(condKey));
			}
			sbSelectQry.append(producerParam._OrderBy);

			Query<?> query = session.createQuery((sbSelectQry.toString()));

			_SetNamedParameterValueFromSearchValueMap(producerParam, query);

			producerParam.dataList = query.list();

			if (CommonValidator.isListFirstNotEmpty(producerParam.dataList))
				return (Producers) producerParam.dataList.iterator().next();
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
		return null;
	}
}
