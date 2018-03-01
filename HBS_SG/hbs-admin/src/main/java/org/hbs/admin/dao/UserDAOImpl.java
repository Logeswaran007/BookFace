package org.hbs.admin.dao;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;

import org.hbs.admin.controller.param.UserParam;
import org.hbs.admin.model.IUserActivity;
import org.hbs.admin.model.IUserLog;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsersAddress;
import org.hbs.admin.model.UserLog;
import org.hbs.admin.model.Users;
import org.hbs.admin.model.UsersAddress;
import org.hbs.util.CommonHibernateSessionFactorySupport;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableParam;
import org.hbs.util.IParam.ENamed;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;

@Component
public class UserDAOImpl extends CommonHibernateSessionFactorySupport implements UserDAO
{
	private static final long	serialVersionUID	= -6282872836045369567L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());

	@Override
	public DataTableParam getUsersList(DataTableParam dtParam, boolean isCount)
	{
		Session session = getSessionFactory().openSession();
		try
		{
			Query<?> query = null;

			StringBuffer sbSelectQry = new StringBuffer();

			sbSelectQry.append(isCount ? "Select Count(*)" : "");

			if (CommonValidator.isNotNullNotEmpty(dtParam.searchColumns))
				sbSelectQry.append(SELECT + dtParam.searchColumns);

			sbSelectQry.append(FROM + UsersAddress.class.getCanonicalName() + WHERE_1_1);

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

	@SuppressWarnings("unchecked")
	@Override
	public UserParam getUsersList(UserParam userParam)
	{

		Session session = getSessionFactory().openSession();
		try
		{
			StringBuffer sbSelectQry = new StringBuffer();

			if (CommonValidator.isNotNullNotEmpty(userParam.searchColumns))
				sbSelectQry.append(SELECT + userParam.searchColumns);

			sbSelectQry.append(FROM + Users.class.getCanonicalName() + WHERE_1_1);

			for (String condKey : userParam.searchCondtionMap.keySet())
			{
				sbSelectQry.append(userParam.searchCondtionMap.get(condKey));
			}
			sbSelectQry.append(userParam._OrderBy);

			Query<IUsers> query = session.createQuery((sbSelectQry.toString()));

			_SetNamedParameterValueFromSearchValueMap(userParam, query);

			userParam.dataList = query.list();
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
		return userParam;
	}

	@Override
	public IUsers getUser(UserParam userParam, Class<?> clazz)
	{

		Session session = getSessionFactory().openSession();
		try
		{
			StringBuffer sbSelectQry = new StringBuffer();

			sbSelectQry.append(FROM + clazz.getCanonicalName() + WHERE_1_1);

			for (String condKey : userParam.searchCondtionMap.keySet())
			{
				sbSelectQry.append(userParam.searchCondtionMap.get(condKey));
			}
			sbSelectQry.append(userParam._OrderBy);

			Query<?> query = session.createQuery((sbSelectQry.toString()));

			_SetNamedParameterValueFromSearchValueMap(userParam, query);

			userParam.dataList = query.list();
			if (CommonValidator.isListFirstNotEmpty(userParam.dataList))
			{
				if (clazz == UsersAddress.class)
					return ((IUsersAddress) userParam.dataList.iterator().next()).getUsers();
				else
					return ((IUsers) userParam.dataList.iterator().next());
			}
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

	@Override
	public boolean userLogAtLogin(IUsers user, String ipAddr)
	{
		Transaction _Txn = null;
		Session session = null;
		try
		{
			session = getSessionFactory().openSession();
			_Txn = session.beginTransaction();

			IUserLog ulog = new UserLog();
			ulog.setUsers(user);
			ulog.setUlUserLoginTime(new Timestamp(Calendar.getInstance().getTimeInMillis()));
			ulog.setUlIpaddress(ipAddr);
			session.saveOrUpdate("UserLog", ulog);
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

	@Override
	@SuppressWarnings("unchecked")
	public boolean userLogAtLogOut(UserParam userParam)
	{
		Transaction _Txn = null;
		Session session = null;
		try
		{
			session = getSessionFactory().openSession();
			StringBuffer sbSelectQry = new StringBuffer();
			sbSelectQry.append(FROM + UserLog.class.getCanonicalName() + WHERE_1_1);
			sbSelectQry.append(ENamed.EqualTo.param_AND("users.usEmployeeId"));
			sbSelectQry.append(ENamed.OrderBy.param("ulUserLoginTime") + " Desc");
			Query<?> selQry = session.createQuery(sbSelectQry.toString());
			selQry.setParameter(ENamed.create("users.usEmployeeId"), userParam.user.getUsEmployeeId());
			List<IUserLog> userLogList = (List<IUserLog>) selQry.list();

			if (CommonValidator.isListFirstNotEmpty(userLogList))
			{
				_Txn = session.beginTransaction();

				StringBuffer sbUpdateQry = new StringBuffer("Update ");
				sbUpdateQry.append(UserLog.class.getCanonicalName());
				sbUpdateQry.append(" Set ulFetchBlock = false Where ulFetchBlock = true ");
				sbUpdateQry.append(ENamed.EqualTo.param_AND("users.usEmployeeId"));

				Query<?> updateQry = session.createQuery(sbUpdateQry.toString());
				updateQry.setParameter(ENamed.create("users.usEmployeeId"), userParam.user.getUsEmployeeId());
				updateQry.executeUpdate();

				IUserLog userLog = userLogList.iterator().next();
				userLog.setUlUserLogoutTime(new Timestamp(Calendar.getInstance().getTimeInMillis()));
				userLog.setUlFetchBlock(true);
				session.saveOrUpdate("UserLog", userLog);
				_Txn.commit();
			}
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

	@Override
	public boolean userSave(IUsers users)
	{
		Transaction _Txn = null;
		Session session = null;
		try
		{
			session = getSessionFactory().openSession();
			_Txn = session.beginTransaction();
			// String password = users.getUsUserPwd();

			// PASSWORD ENCRYPTION
			// users.setUsUserPwd(PasswordEncrypt.encrypt(password, "SHA", UTF_8).trim());
			// users.setUsUserPwdModDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
			session.save("Users", users);
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
	public boolean userUpdate(IUsers users)
	{
		Transaction _Txn = null;
		Session session = null;
		try
		{
			session = getSessionFactory().openSession();
			_Txn = session.beginTransaction();
			session.saveOrUpdate("Users", users);
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

	@Override
	public boolean saveUserActivity(IUserActivity userActivity)
	{
		Transaction _Txn = null;
		Session session = null;
		try
		{
			session = getSessionFactory().openSession();
			_Txn = session.beginTransaction();
			session.saveOrUpdate("UserActivity", userActivity);
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
