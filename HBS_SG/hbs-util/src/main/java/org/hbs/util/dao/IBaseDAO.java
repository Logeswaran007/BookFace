package org.hbs.util.dao;

import java.io.Serializable;

import org.hbs.util.DataTableParam;
import org.hbs.util.IParam;

public interface IBaseDAO extends Serializable
{
	public IParam getDataList(IParam param);
	
	public DataTableParam getDataTableList(DataTableParam dtParam, boolean isCount);
	
	public boolean saveOrUpdate(String beanName, ICRUDBean... beans);
	
}