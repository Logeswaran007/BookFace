package org.hbs.sg.web.dao;

import org.hbs.sg.model.Scheme;
import org.hbs.sg.web.controller.SchemeParam;
import org.hbs.util.CommonHibernateSessionFactorySupport;
import org.hbs.util.CommonValidator;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;

@Component
public class SchemeDAOImpl extends CommonHibernateSessionFactorySupport implements SchemeDAO
{

	private static final long serialVersionUID = -2130357734907019423L;

	@Override
	public SchemeParam getSchemeList(SchemeParam sParam)
	{

		Session session = getSessionFactory().openSession();
		try
		{
			Query<?> query = null;

			StringBuffer sbSelectQry = new StringBuffer();

			if (CommonValidator.isNotNullNotEmpty(sParam.searchColumns))
				sbSelectQry.append(SELECT + sParam.searchColumns);

			sbSelectQry.append(FROM + Scheme.class.getCanonicalName() + WHERE_1_1);

			for (String condKey : sParam.searchCondtionMap.keySet())
			{
				sbSelectQry.append(sParam.searchCondtionMap.get(condKey));
			}
			sbSelectQry.append(sParam._OrderBy);
			query = session.createQuery((sbSelectQry.toString()));

			_SetNamedParameterValueFromSearchValueMap(sParam, query);

			sParam.dataList = query.list();
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
		return sParam;

	}

}
