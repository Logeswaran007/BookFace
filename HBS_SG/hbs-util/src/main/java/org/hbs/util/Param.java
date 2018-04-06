package org.hbs.util;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hbs.util.model.ICommonLayout;
import org.hbs.util.model.ILayoutElements;

public abstract class Param implements IParam, IConstProperty
{
	private static final long				serialVersionUID	= -7820466140069794475L;
	public EnumInterface					_AddEntityBean;
	public String							_OrderBy			= "";
	public String							_ProcedureName		= "";
	public List<?>							dataList			= new ArrayList<>(0);
	public long								dataListCount		= 0L;
	public int								maxResults			= 0;
	public int								minResults			= 0;
	public HttpServletRequest				request;
	public HttpServletResponse				response;
	public Set<ClassAndAlias>				searchBeanClass		= new LinkedHashSet<ClassAndAlias>(1);
	public String							searchColumns		= "";
	public LinkedHashMap<String, Object>	searchCondtionMap	= new LinkedHashMap<String, Object>(0);
	public LinkedHashMap<String, Object>	searchValueMap		= new LinkedHashMap<String, Object>(0);
	public LinkedHashSet<String>			searchJoinSet		= new LinkedHashSet<String>(0);
	public LinkedHashSet<String>			searchFetchSet		= new LinkedHashSet<String>(0);
	
	public IParam addBean(Class<?> clazz, String aliasName)
	{
		this.searchBeanClass.add(new ClassAndAlias(clazz, aliasName));
		return this;
	}
	
	public IParam equal(String lhs, String rhs)
	{
		this.searchJoinSet.add(IWrap.AND.prepend(lhs + EQUALTO + rhs));
		return this;
	}
	
	public IParam leftJoin(String left)
	{
		this.searchFetchSet.add(IWrap.LEFT.prepend(left));
		return this;
	}
	
	public IParam join(String join)
	{
		this.searchFetchSet.add(IWrap.JOIN.prepend(join));
		return this;
	}
	
	public IParam fetch(String fetch)
	{
		this.searchFetchSet.add(IWrap.FETCH.prepend(fetch));
		return this;
	}
	
	public EnumInterface get_AddEntityBean()
	{
		return _AddEntityBean;
	}
	
	public String get_OrderBy()
	{
		return _OrderBy;
	}
	
	public String get_ProcedureName()
	{
		return _ProcedureName;
	}
	
	public List<?> getDataList()
	{
		return dataList;
	}
	
	public long getDataListCount()
	{
		return dataListCount;
	}
	
	public List<ILayoutElements> getLayoutElements(List<? extends ICommonLayout> iCLList)
	{
		List<ILayoutElements> eltList = new ArrayList<ILayoutElements>(iCLList.size());
		for (ICommonLayout iCL : iCLList)
		{
			eltList.add(iCL.getLayoutElements());
		}
		return eltList;
	}
	
	public int getMaxResults()
	{
		return maxResults;
	}
	
	public int getMinResults()
	{
		return minResults;
	}
	
	public HttpServletRequest getRequest()
	{
		return request;
	}
	
	public HttpServletResponse getResponse()
	{
		return response;
	}
	
	public Set<ClassAndAlias> getSearchBeanClass()
	{
		return searchBeanClass;
	}
	
	public String getSearchColumns()
	{
		return searchColumns;
	}
	
	public LinkedHashMap<String, Object> getSearchCondtionMap()
	{
		return searchCondtionMap;
	}
	
	public LinkedHashMap<String, Object> getSearchValueMap()
	{
		return searchValueMap;
	}
	
	public void set_AddEntityBean(EnumInterface _AddEntityBean)
	{
		this._AddEntityBean = _AddEntityBean;
	}
	
	public void set_OrderBy(String _OrderBy)
	{
		this._OrderBy = _OrderBy;
	}
	
	public void set_ProcedureName(String _ProcedureName)
	{
		this._ProcedureName = _ProcedureName;
	}
	
	public void setConditionAndValueParamsForAutoComplete(List<? extends ILayoutElements> ieList, String autoCompleteCriteriaValue)
	{
		searchCondtionMap = new LinkedHashMap<String, Object>();
		searchValueMap = new LinkedHashMap<String, Object>();
		int i = 0;
		for (ILayoutElements iLE : ieList)
		{
			if (ieList.size() == 1)
			{
				ENamed.Like.param_AND(this, iLE.getDisplayProperty(), autoCompleteCriteriaValue);
			}
			else
			{
				if (i++ == 0)
				{
					ENamed.Like.param_AND(this, iLE.getDisplayProperty(), autoCompleteCriteriaValue, IWrap.ST_BRACE1);
				}
				else
				{
					if (i == ieList.size())
						ENamed.Like.param_OR(this, iLE.getDisplayProperty(), autoCompleteCriteriaValue, IWrap.ED_BRACE1);
					else
						ENamed.Like.param_OR(this, iLE.getDisplayProperty(), autoCompleteCriteriaValue);
				}
			}
			
		}
	}
	
	public void setDataList(List<?> dataList)
	{
		this.dataList = dataList;
	}
	
	public void setDataListCount(long dataListCount)
	{
		this.dataListCount = dataListCount;
	}
	
	public void setMaxResults(int maxResults)
	{
		this.maxResults = maxResults;
	}
	
	public void setMinResults(int minResults)
	{
		this.minResults = minResults;
	}
	
	public void setRequest(HttpServletRequest request)
	{
		this.request = request;
	}
	
	public void setResponse(HttpServletResponse response)
	{
		this.response = response;
	}
	
	public void setSearchBeanClass(Set<ClassAndAlias> searchBeanClass)
	{
		this.searchBeanClass = searchBeanClass;
	}
	
	public void setSearchColumns(String searchColumns)
	{
		this.searchColumns = searchColumns;
	}
	
	public void setSearchCondtionMap(LinkedHashMap<String, Object> searchCondtionMap)
	{
		this.searchCondtionMap = searchCondtionMap;
	}
	
	public void setSearchValueMap(LinkedHashMap<String, Object> searchValueMap)
	{
		this.searchValueMap = searchValueMap;
	}
	
	public LinkedHashSet<String> getSearchJoinSet()
	{
		return searchJoinSet;
	}
	
	public LinkedHashSet<String> getSearchFetchSet()
	{
		return searchFetchSet;
	}
	
}
