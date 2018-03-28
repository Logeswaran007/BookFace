package org.hbs.util;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManagerFactory;

import org.hbs.util.IParam.ENamed;
import org.hbs.util.model.ICommonLayout;
import org.hbs.util.model.ILayoutElements;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class CommonHibernateSessionFactorySupport implements IConstProperty
{
	private static final long	serialVersionUID	= -2515673438608913557L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());
	
	@Autowired
	EntityManagerFactory		entityManagerFactory;
	
	protected SessionFactory	sessionFactory;
	
	public void _SetNamedParameterValueFromSearchValueMap(IParam param, Query<?> query) throws Exception
	{
		if (param.getSearchCondtionMap().isEmpty() == false)
		{
			for (String condKey : param.getSearchValueMap().keySet())
			{
				String namedParam = (String) param.getSearchCondtionMap().get(condKey);
				
				if (namedParam == null || namedParam.indexOf(ENamed.OrderBy.paramCode()) < 0)
				{
					
					Object valueObject = param.getSearchValueMap().get(condKey);
					Object valueCondition = param.getSearchCondtionMap().get(condKey);
					if (valueCondition != null)
					{
						if (valueObject instanceof String || valueObject instanceof Integer || valueObject instanceof Long || valueObject instanceof Float || valueObject instanceof Double
								|| valueObject instanceof Character || valueObject instanceof Boolean || valueObject instanceof Timestamp)
						{
							if (namedParam.contains(ENamed.Like.name()))
								query.setParameter(IParam.ENamed.create(condKey), EWrap.Percent.enclose(valueObject));
							else
								query.setParameter(IParam.ENamed.create(condKey), valueObject);
						}
						else if (valueObject instanceof ArrayList)
						{
							ArrayList<?> range = (ArrayList<?>) valueObject;
							
							if (CommonValidator.isListFirstNotEmpty(range))
							{
								if (namedParam.indexOf(ENamed.Between.name()) >= 0)
								{
									query.setParameter("From_" + IParam.ENamed.create(condKey), range.get(0));
									query.setParameter("To_" + IParam.ENamed.create(condKey), range.get(1));
								}
								else
								{
									query.setParameter(IParam.ENamed.create(condKey), range);
								}
							}
						}
					}
				}
				else if (namedParam.indexOf(ENamed.OrderBy.paramCode()) >= 0)
				{
					continue;
				}
				else
				{
					throw new Exception("Illegal Condition Injected in 'Param.searchCondtionMap' Field.");
				}
			}
		}
	}
	
	public List<ILayoutElements> getLayoutElementList(List<? extends ICommonLayout> commonLayoutList)
	{
		List<ILayoutElements> iLayoutElementList = new ArrayList<ILayoutElements>(0);
		for (ICommonLayout iCL : commonLayoutList)
		{
			iLayoutElementList.add(iCL.getLayoutElements());
		}
		return iLayoutElementList;
		
	}
	
	public SessionFactory getSessionFactory()
	{
		if (sessionFactory == null)
			sessionFactory = entityManagerFactory.createEntityManager().unwrap(Session.class).getSessionFactory();
		return sessionFactory;
	}
	
	public void setSessionFactory(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}
	
}
