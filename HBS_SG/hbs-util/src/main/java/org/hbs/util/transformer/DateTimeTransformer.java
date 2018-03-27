package org.hbs.util.transformer;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;

import org.hbs.util.CommonUtil;
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
		if (CommonValidator.isNotNullNotEmpty(valueHM.get("countryCode")))
		{
			String countryCode = valueHM.get("countryCode").toString();
			if (CommonValidator.isNotNullNotEmpty(valueHM.get("createdDate")))
			{
				String createdDate = valueHM.get("createdDate").toString();
				DateFormat dateFormat = new SimpleDateFormat(DATE_FORMAT_DD_MMM_YYYY_HH_MM_AM_PM);
				if (CommonValidator.isNotEqual(countryCode, "00") && CommonValidator.isNotEqual(countryCode, "IN"))
				{
					Calendar calendar = new GregorianCalendar();
					calendar.setTimeInMillis(CommonUtil.getDateInFormat(createdDate, DATE_FORMAT_YYYY_MM_DD_HH_MM_SS_24).getTime());
					dateFormat.setCalendar(calendar);
					dateFormat.setTimeZone(TimeZone.getTimeZone(countryCode));
					return dateFormat != null ? dateFormat.format(calendar.getTime()) + " (" + countryCode + ")" : "";
				}
				else
				{
					return dateFormat != null ? dateFormat.format(CommonUtil.getDateInFormat(createdDate, DATE_FORMAT_YYYY_MM_DD_HH_MM_SS_24).getTime()) + " (" + countryCode + ")" : "";
				}
			}
			
		}
		return "";
	}
	
	public String getModifiedDateByTimeZone()
	{
		if (CommonValidator.isNotNullNotEmpty(valueHM.get("countryCode")))
		{
			String countryCode = valueHM.get("countryCode").toString();
			if (CommonValidator.isNotNullNotEmpty(valueHM.get("modifiedDate")))
			{
				String modifiedDate = valueHM.get("modifiedDate").toString();
				DateFormat dateFormat = new SimpleDateFormat(DATE_FORMAT_DD_MMM_YYYY_HH_MM_AM_PM);
				if (CommonValidator.isNotEqual(countryCode, "00") && CommonValidator.isNotEqual(countryCode, "IN"))
				{
					Calendar calendar = new GregorianCalendar();
					calendar.setTimeInMillis(CommonUtil.getDateInFormat(modifiedDate, DATE_FORMAT_YYYY_MM_DD_HH_MM_SS_24).getTime());
					dateFormat.setCalendar(calendar);
					dateFormat.setTimeZone(TimeZone.getTimeZone(countryCode));
					return dateFormat != null ? dateFormat.format(calendar.getTime()) + " (" + countryCode + ")" : "";
				}
				else
				{
					return dateFormat != null ? dateFormat.format(CommonUtil.getDateInFormat(modifiedDate, DATE_FORMAT_YYYY_MM_DD_HH_MM_SS_24).getTime()) + " (" + countryCode + ")" : "";
				}
			}
			
		}
		return "";
	}
}
