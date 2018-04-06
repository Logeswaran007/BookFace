package org.hbs.util.bo;

import java.util.List;

import org.hbs.util.DataTableParam;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.dao.IBaseDAO;
import org.hbs.util.model.ILayouts;
import org.hbs.util.model.Layouts;
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
		DataTableParam param = new DataTableParam(Layouts.class, "L");
		param.fetch(" L.layoutElements ");
		param._OrderBy = " Order By L.displayOrder ASC";
		
		ENamed.EqualTo.param_AND(param, "L.layoutName", layoutName);
		ENamed.GreaterThan.param_AND(param, "L.displayOrder", 0);
		
		return (List<ILayouts>) iBaseDAO.getDataList(param).getDataList();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<ILayouts> getResultLayouts(String layoutName, String layoutSubName)
	{
		DataTableParam param = new DataTableParam(Layouts.class, "L");
		param.fetch(" L.layoutElements ");
		
		ENamed.EqualTo.param_AND(param, "L.layoutName", layoutName);
		ENamed.EqualTo.param_AND(param, "L.layoutSubName", layoutSubName);
		ENamed.GreaterThan.param_AND(param, "L.displayOrder", 0);
		
		return (List<ILayouts>) iBaseDAO.getDataList(param).getDataList();
	}
	
}
