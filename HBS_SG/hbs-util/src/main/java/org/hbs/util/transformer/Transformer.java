package org.hbs.util.transformer;

import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.hbs.util.CommonValidator;
import org.hbs.util.model.ICommonLayout;

public abstract class Transformer implements Serializable
{
	
	private static final long			serialVersionUID	= 7286286130822007191L;
	public Map<String, ICommonLayout>	layoutHM			= new LinkedHashMap<String, ICommonLayout>();
	public Map<String, Object>			valueHM				= new LinkedHashMap<String, Object>();
	public String						currentColumn;
	public Object						rowsObject;
	
	public Transformer(String currentColumn, List<? extends ICommonLayout> elementList, Object[] colsObject)
	{
		super();
		this.currentColumn = currentColumn;
		int idx = 0;
		
		String key = null;
		for (ICommonLayout iCL : elementList)
		{
			key = CommonValidator.isNotNullNotEmpty(iCL.getDisplayScriptColumn()) ? iCL.getDisplayScriptColumn() : iCL.getDisplayOrder() + "";
			layoutHM.put(key, iCL);
			valueHM.put(key, colsObject[idx]);
			idx++;
		}
	}
}