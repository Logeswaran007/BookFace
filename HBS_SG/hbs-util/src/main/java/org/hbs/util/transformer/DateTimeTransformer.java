package org.hbs.util.transformer;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hbs.util.CommonValidator;
import org.hbs.util.IConstProperty;
import org.hbs.util.model.ICommonLayout;

public class DateTimeTransformer extends Transformer implements IConstProperty
{
	private static final long serialVersionUID = 4611161905219190996L;
	
	public DateTimeTransformer(HttpServletRequest request, String currentColumn, List<? extends ICommonLayout> elementList, Object[] colsObject)
	{
		super(request, currentColumn, elementList, colsObject);
	}
	
	public String getCreatedDateByTimeZone()
	{
		if (CommonValidator.isNotNullNotEmpty(valueHM.get("countryCode"), valueHM.get("createdDate")))
		{
			String createdDate = valueHM.get("createdDate").toString();
			String countryCode = valueHM.get("countryCode").toString();
			
			return EDate.DD_MMM_YYYY_HH_MM_SS_AM_PM.byTimeZone(createdDate, countryCode, EDate.YYYY_MM_DD_HH_MM_SS_24) + " (" + countryCode + ")";
			
		}
		return "";
	}
	
	public String getModifiedDateByTimeZone()
	{
		if (CommonValidator.isNotNullNotEmpty(valueHM.get("countryCode"), valueHM.get("modifiedDate")))
		{
			String createdDate = valueHM.get("modifiedDate").toString();
			String countryCode = valueHM.get("countryCode").toString();
			
			return EDate.DD_MMM_YYYY_HH_MM_SS_AM_PM.byTimeZone(createdDate, countryCode, EDate.YYYY_MM_DD_HH_MM_SS_24) + " (" + countryCode + ")";
			
		}
		return "";
	}
}
