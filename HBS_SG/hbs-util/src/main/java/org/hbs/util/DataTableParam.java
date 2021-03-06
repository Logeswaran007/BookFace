package org.hbs.util;

import java.io.IOException;
import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.binary.Base64;
import org.hbs.util.model.ICommonLayout;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class DataTableParam extends Param implements Serializable, IDataTableParam
{
	private static final long	serialVersionUID	= 763667035218149349L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());
	
	public static DataTableParam getDataTableParamsFromRequest(HttpServletRequest request)
	{
		DataTableParam dtParam = new DataTableParam(request);
		initDataTableParam(request, dtParam);
		return dtParam;
	}
	
	public static DataTableParam getDataTableParamsFromRequest(HttpServletRequest request, List<? extends ICommonLayout> layoutList) throws CustomException
	{
		DataTableParam dtParam = new DataTableParam(request);
		initDataTableParam(request, dtParam);
		String columnName = null;
		
		for (ICommonLayout iCL : layoutList)
		{
			columnName = iCL.getLayoutElements().getDisplayProperty();
			
			if (CommonValidator.isNotNullNotEmpty(columnName))
			{
				dtParam.searchColumns += iCL.getLayoutElements().getDisplayPropertyAlias() + DOT + columnName + COMMA_SPACE;
				// if (iCL.getLayoutElements().isEmbeddedClass() == false && columnName.indexOf(DOT)
				// > 0)
				// {
				// columnName = columnName.substring(0, columnName.lastIndexOf(DOT));
				// // Don't REMOVE. Will be done in future implementation
				// // dtParam.fetch(columnName + SPACE +
				// // iCL.getLayoutElements().getDisplayPropertyAlias());
				// }
			}
			else
				dtParam.searchColumns += "''" + COMMA_SPACE;
			
		}
		
		if (dtParam.searchColumns.endsWith(COMMA_SPACE))
		{
			dtParam.searchColumns = dtParam.searchColumns.substring(0, dtParam.searchColumns.lastIndexOf(COMMA_SPACE));
		}
		return dtParam;
		
	}
	
	public static void initDataTableParam(HttpServletRequest request, IDataTableParam dtParam)
	{
		if (CommonValidator.isNotNullNotEmpty(request.getParameter("draw")))
			dtParam.setDraw(Integer.parseInt(request.getParameter("draw")));
		
		if (CommonValidator.isNotNullNotEmpty(request.getParameter("search[value]")))
		{
			dtParam.setsSearch(request.getParameter("search[value]"));
			// dtParam.getMapFromJSONSearchCriteria(dtParam.sSearch);
		}
		
		if (CommonValidator.isNotNullNotEmpty(request.getParameter("searchCriteria")))
		{
			String param = request.getParameter("searchCriteria");
			param = new String(Base64.decodeBase64(param));
			dtParam.getMapFromJSONSearchCriteria(param);
		}
		
		else if (CommonValidator.isNotNullNotEmpty(request.getParameter("columns[0][search][value]")))
			dtParam.setsSearch(request.getParameter("columns[0][search][value]"));
		dtParam.setsColumns(request.getParameter("sColumns"));
		
		if (CommonValidator.isNotNullNotEmpty(request.getParameter("start")))
			dtParam.setiDisplayStart(Integer.parseInt(request.getParameter("start")));
		
		if (CommonValidator.isNotNullNotEmpty(request.getParameter("length")))
			dtParam.setiDisplayLength(Integer.parseInt(request.getParameter("length")));
		
		if (CommonValidator.isNotNullNotEmpty(request.getParameter("iColumns")))
			dtParam.setiColumns(Integer.parseInt(request.getParameter("iColumns")));
		
		if (CommonValidator.isNotNullNotEmpty(request.getParameter("iSortingCols")))
			dtParam.setiSortingCols(Integer.parseInt(request.getParameter("iSortingCols")));
		
		if (CommonValidator.isNotNullNotEmpty(request.getParameter("order[0][column]")))
			dtParam.setiSortColumnIndex(Integer.parseInt(request.getParameter("order[0][column]")));
		
		if (CommonValidator.isNotNullNotEmpty(request.getParameter("order[0][dir]")))
			dtParam.setsSortDirection(request.getParameter("order[0][dir]"));
	}
	
	public String							sEcho;
	public String							sSearch;
	public String							sColumns;
	public int								iDisplayStart		= 0;
	public int								iDisplayLength		= 10;
	public int								iColumns;
	public int								iSortingCols		= 0;
	public int								iSortColumnIndex	= 0;
	public String							sSortDirection		= "asc";
	public int								draw;
	
	public List<? extends ICommonLayout>	layoutList;
	
	public DataTableParam()
	{
		
	}
	
	public DataTableParam(Class<?> clazz, String aliasName)
	{
		this.searchBeanClass.add(new ClassAndAlias(clazz, aliasName));
	}
	
	public DataTableParam(HttpServletRequest request)
	{
		this.request = request;
	}
	
	public DataTableParam(int iDisplayLength)
	{
		this.iDisplayLength = iDisplayLength;
	}
	
	public List<?> getDataList()
	{
		return dataList;
	}
	
	public long getDataListCount()
	{
		return dataListCount;
	}
	
	public int getDraw()
	{
		return draw;
	}
	
	public int getiColumns()
	{
		return iColumns;
	}
	
	public int getiDisplayLength()
	{
		return iDisplayLength;
	}
	
	public int getiDisplayStart()
	{
		return iDisplayStart;
	}
	
	public int getiSortColumnIndex()
	{
		return iSortColumnIndex;
	}
	
	public int getiSortingCols()
	{
		return iSortingCols;
	}
	
	public List<? extends ICommonLayout> getLayoutList()
	{
		return layoutList;
	}
	
	public void getMapFromJSONSearchCriteria(String searchParam)
	{
		searchValueMap = new LinkedHashMap<String, Object>();
		ObjectMapper mapper = new ObjectMapper();
		try
		{
			searchValueMap = mapper.readValue(searchParam, new TypeReference<Map<String, Object>>() {
			});
		}
		catch (JsonGenerationException excep)
		{
			logger.error(excep);
			
		}
		catch (JsonMappingException excep)
		{
			logger.error(excep);
			
		}
		catch (IOException excep)
		{
			logger.error(excep);
			
		}
	}
	
	@Override
	public HttpServletRequest getRequest()
	{
		return request;
	}
	
	public String getsColumns()
	{
		return sColumns;
	}
	
	public String getsEcho()
	{
		return sEcho;
	}
	
	public String getsSearch()
	{
		return sSearch;
	}
	
	public String getsSortDirection()
	{
		return sSortDirection;
	}
	
	public void setDataList(List<?> dataList)
	{
		this.dataList = dataList;
	}
	
	public void setDataListCount(long dataListCount)
	{
		this.dataListCount = dataListCount;
	}
	
	public void setDraw(int draw)
	{
		this.draw = draw;
	}
	
	public void setiColumns(int iColumns)
	{
		this.iColumns = iColumns;
	}
	
	public void setiDisplayLength(int iDisplayLength)
	{
		this.iDisplayLength = iDisplayLength;
	}
	
	public void setiDisplayStart(int iDisplayStart)
	{
		this.iDisplayStart = iDisplayStart;
	}
	
	public void setiSortColumnIndex(int iSortColumnIndex)
	{
		this.iSortColumnIndex = iSortColumnIndex;
	}
	
	public void setiSortingCols(int iSortingCols)
	{
		this.iSortingCols = iSortingCols;
	}
	
	public void setLayoutList(List<? extends ICommonLayout> layoutList)
	{
		this.layoutList = layoutList;
	}
	
	@Override
	public void setRequest(HttpServletRequest request)
	{
		this.request = request;
	}
	
	public void setsColumns(String sColumns)
	{
		this.sColumns = sColumns;
	}
	
	public void setsEcho(String sEcho)
	{
		this.sEcho = sEcho;
	}
	
	public void setsSearch(String sSearch)
	{
		this.sSearch = sSearch;
	}
	
	public void setsSortDirection(String sSortDirection)
	{
		this.sSortDirection = sSortDirection;
	}
	
}
