package org.hbs.admin.dao;

import java.util.ArrayList;
import java.util.List;

import org.hbs.admin.model.ILayouts;
import org.hbs.admin.model.Layouts;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.hbs.util.PropertyEnumUtil.EWrap;
import org.hbs.util.dao.LayoutComboDAOImpl;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;

@Component
public class LayoutDAOImpl extends LayoutComboDAOImpl implements LayoutDAO
{
	private static final long	serialVersionUID	= 3921319829606376197L;

	private final CustomLogger	logger				= new CustomLogger(this.getClass());

	public LayoutDAOImpl()
	{
		super();
	}

	public List<ILayouts> getLayouts(String layoutName, String layoutSubName)
	{
		return getLayoutsList(layoutName, layoutSubName);
	}

	public List<ILayouts> getLayouts(String layoutName)
	{
		return getLayoutsList(layoutName, null);
	}

	@SuppressWarnings("unchecked")
	public List<ILayouts> getLayoutsList(String layoutName, String layoutSubName)
	{
		Session session = getSessionFactory().openSession();
		try
		{
			StringBuffer sbSelectQry = new StringBuffer();
			sbSelectQry.append(FROM + Layouts.class.getCanonicalName() + WHERE_1_1);
			sbSelectQry.append(" AND layoutName = " + EWrap.Quote.enclose(layoutName));
			if (CommonValidator.isNotNullNotEmpty(layoutSubName))
				sbSelectQry.append(" AND layoutSubName = " + EWrap.Quote.enclose(layoutSubName));
			sbSelectQry.append(" AND displayOrder > 0 Order By displayOrder");
			Query<ILayouts> querySelect = session.createQuery((sbSelectQry.toString()));

			return querySelect.list();
		}
		catch (Exception excep)
		{
			excep.printStackTrace();
			logger.error("Error :: getLayouts" + excep);
		}
		finally
		{
			if (session != null)
			{
				session.clear();
				session.close();
			}
		}
		return new ArrayList<ILayouts>(0);
	}
}
