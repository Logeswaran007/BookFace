package org.hbs.admin.bo;

import java.util.List;

import org.hbs.admin.model.ILayouts;
import org.hbs.admin.model.Layouts;
import org.hbs.util.DataTableParam;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.dao.IBaseDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class LayoutBoImpl implements LayoutBo
{
	private static final long	serialVersionUID	= -5822168071967605124L;
	
	@Autowired
	protected IBaseDAO			iBaseDAO;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<ILayouts> getResultLayouts(String layoutName)
	{
		DataTableParam param = new DataTableParam();
		
		param.searchBeanClass = Layouts.class;
		param._OrderBy = " Order By displayOrder ASC";
		
		ENamed.EqualTo.param_AND(param, "layoutName", layoutName);
		ENamed.GreaterThan.param_AND(param, "displayOrder", 0);
		
		return (List<ILayouts>) iBaseDAO.getDataList(param).getDataList();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<ILayouts> getResultLayouts(String layoutName, String layoutSubName)
	{
		DataTableParam param = new DataTableParam();
		
		param.searchBeanClass = Layouts.class;
		
		ENamed.EqualTo.param_AND(param, "layoutName", layoutName);
		ENamed.EqualTo.param_AND(param, "layoutSubName", layoutSubName);
		ENamed.GreaterThan.param_AND(param, "displayOrder", 0);
		
		return (List<ILayouts>) iBaseDAO.getDataList(param).getDataList();
	}
	
}
