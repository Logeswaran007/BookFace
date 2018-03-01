package org.hbs.util.dao;

import java.util.List;

import org.hbs.util.CommonHibernateSessionFactorySupport;
import org.hbs.util.model.ILayoutElements;
import org.hibernate.Session;
import org.springframework.stereotype.Component;

@Component
public class LayoutComboDAOImpl extends CommonHibernateSessionFactorySupport implements LayoutComboDAO
{
	private static final long serialVersionUID = 8542900865290328854L;

	public LayoutComboDAOImpl()
	{
		super();
	}

	@Override
	public List<?> getSearchComboLayout(ILayoutElements iLayoutElement)
	{
		Session session = getSessionFactory().openSession();
		try
		{

			// if (CommonValidator.isSetFirstNotEmpty(iLayoutElement.getLayoutCombo()))
			// {
			// LayoutCombo layoutCombo = iLayoutElement.getLayoutCombo().iterator().next();
			// StringBuffer sbSelectQry = new StringBuffer(" Select ");
			// sbSelectQry.append(layoutCombo.getComboKey() + COMMA_SPACE);
			// sbSelectQry.append(layoutCombo.getComboText() + FROM);
			// sbSelectQry.append(layoutCombo.getComboBean());
			// if (CommonValidator.isNotNullNotEmpty(layoutCombo.getComboWhereClause()))
			// sbSelectQry.append(" Where " + layoutCombo.getComboWhereClause());
			//
			// return session.createQuery((sbSelectQry.toString())).list();
			// }
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
		return null;
	}
}
