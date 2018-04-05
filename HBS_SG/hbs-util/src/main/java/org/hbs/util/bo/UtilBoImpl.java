package org.hbs.util.bo;

import java.util.List;

import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableParam;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.dao.IBaseDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UtilBoImpl implements UtilBo
{
	private final CustomLogger	logger	= new CustomLogger(this.getClass());
	
	@Autowired
	private IBaseDAO			iBaseDAO;
	
	@SuppressWarnings("unchecked")
	public List<Object[]> getContextDocBasePathList()
	{
		DataTableParam dtParam = new DataTableParam();
		try
		{
			dtParam.addBean(Class.forName("org.hbs.admin.model.ProducersProperty"), "PP");
			dtParam.searchColumns = "PP.property, PP.value";
			
			ENamed.EqualTo.param_AND(dtParam, "PP.group", "ResourceHandler");
			ENamed.EqualTo.param_AND(dtParam, "PP.status", true);
			
			return (List<Object[]>) iBaseDAO.getDataList(dtParam).getDataList();
			
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		
		return null;
	}
	
}
