package org.hbs.sg.web.dao;

import org.hbs.sg.model.course.CourseAttachments;
import org.hbs.sg.model.course.CourseGroup;
import org.hbs.sg.model.course.Courses;
import org.hbs.sg.web.controller.AssessmentParam;
import org.hbs.util.CommonHibernateSessionFactorySupport;
import org.hbs.util.CommonValidator;
import org.hbs.util.DataTableParam;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;

@Component
public class CoursesDAOImpl extends CommonHibernateSessionFactorySupport implements CoursesDAO
{

	private static final long	serialVersionUID	= 7917003150149719297L;

	@Override
	public DataTableParam getCourseAttachmentList(DataTableParam dtParam, boolean isCount)
	{
		Session session = getSessionFactory().openSession();
		try
		{
			Query<?> query = null;

			StringBuffer sbSelectQry = new StringBuffer();

			sbSelectQry.append(isCount ? "Select Count(*)" : "");

			if (CommonValidator.isNotNullNotEmpty(dtParam.searchColumns))
				sbSelectQry.append(SELECT + dtParam.searchColumns);

			sbSelectQry.append(FROM + CourseAttachments.class.getCanonicalName() + WHERE_1_1);

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
	public boolean saveOrUpdate(Courses courses)
	{
		Transaction _Txn = null;
		Session session = null;
		try
		{
			session = getSessionFactory().openSession();
			_Txn = session.beginTransaction();
			session.saveOrUpdate("Courses", courses);
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

	@Override
	public AssessmentParam getCourseGroupList(AssessmentParam assessmentParam)
	{
		Session session = getSessionFactory().openSession();
		try
		{
			Query<?> query = null;

			StringBuffer sbSelectQry = new StringBuffer();

			if (CommonValidator.isNotNullNotEmpty(assessmentParam.searchColumns))
				sbSelectQry.append(SELECT + assessmentParam.searchColumns);

			sbSelectQry.append(FROM + CourseGroup.class.getCanonicalName() + WHERE_1_1);

			for (String condKey : assessmentParam.searchCondtionMap.keySet())
			{
				sbSelectQry.append(assessmentParam.searchCondtionMap.get(condKey));
			}
			sbSelectQry.append(assessmentParam._OrderBy);
			query = session.createQuery((sbSelectQry.toString()));

			_SetNamedParameterValueFromSearchValueMap(assessmentParam, query);

			assessmentParam.dataList = query.list();
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
		return assessmentParam;

	}

	@Override
	public AssessmentParam getCoursesList(AssessmentParam assessmentParam)
	{
		Session session = getSessionFactory().openSession();
		try
		{
			Query<?> query = null;

			StringBuffer sbSelectQry = new StringBuffer();

			if (CommonValidator.isNotNullNotEmpty(assessmentParam.searchColumns))
				sbSelectQry.append(SELECT + assessmentParam.searchColumns);

			sbSelectQry.append(FROM + Courses.class.getCanonicalName() + WHERE_1_1);

			for (String condKey : assessmentParam.searchCondtionMap.keySet())
			{
				sbSelectQry.append(assessmentParam.searchCondtionMap.get(condKey));
			}
			sbSelectQry.append(assessmentParam._OrderBy);
			query = session.createQuery((sbSelectQry.toString()));

			_SetNamedParameterValueFromSearchValueMap(assessmentParam, query);

			assessmentParam.dataList = query.list();
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
		return assessmentParam;

	}

}
