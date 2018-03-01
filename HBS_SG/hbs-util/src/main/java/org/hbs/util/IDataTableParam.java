package org.hbs.util;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hbs.util.model.ICommonLayout;

public interface IDataTableParam
{
	public List<?> getDataList();

	public long getDataListCount();

	public int getDraw();

	public int getiColumns();

	public int getiDisplayLength();

	public int getiDisplayStart();

	public int getiSortColumnIndex();

	public int getiSortingCols();

	public List<? extends ICommonLayout> getLayoutList();

	public HttpServletRequest getRequest();

	public String getsColumns();

	public String getsEcho();

	public String getsSearch();

	public String getsSortDirection();

	public void setDataList(List<?> dataList);

	public void setDataListCount(long dataListCount);

	public void setDraw(int draw);

	public void setiColumns(int iColumns);

	public void setiDisplayLength(int iDisplayLength);

	public void setiDisplayStart(int iDisplayStart);

	public void setiSortColumnIndex(int iSortColumnIndex);

	public void setiSortingCols(int iSortingCols);

	public void setLayoutList(List<? extends ICommonLayout> layoutList);

	public void setRequest(HttpServletRequest request);

	public void setsColumns(String sColumns);

	public void setsEcho(String sEcho);

	public void setsSearch(String sSearch);

	public void setsSortDirection(String sSortDirection);

	public void getMapFromJSONSearchCriteria(String param);
}