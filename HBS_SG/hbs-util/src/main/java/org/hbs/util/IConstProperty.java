package org.hbs.util;

import java.io.Serializable;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

public interface IConstProperty extends Serializable
{
	
	public String	SLASH			= "/";
	public String	FILE			= "file:";
	public String	SLASH_STARS		= SLASH + "**";
	public String	COMMA_SPACE		= ", ";
	public String	FROM			= " From ";
	public String	SELECT_DISTINCT	= " Select Distinct ";
	public String	SPACE			= " ";
	public String	EQUALTO			= " = ";
	public String	DOT				= ".";
	public String	WHERE_1_1		= " Where 1=1 ";
	public String	SELECT			= " Select ";
	
	public enum EPage implements EnumInterface
	{
		Failure, Success
	}
	
	public enum EDate implements EnumInterface
	{
		DD_MM_YYYY_HH_MM("dd-MM-yyyyHH:mm"), DD_MMM_YYYY("dd-MMM-yyyy"), DD_MMM_YYYY_SPACE("dd MMM yyyy"), DD_MMM_YYYY_HH_MM_SS_AM_PM("dd-MMM-yyyy hh:mm:ssa"), DD_MMM_YYYY_HH_MM_AM_PM(
				"dd-MMM-yyyy HH:mm a"), MM_DD_YYYY("MM-dd-yyyy"), MM_DD_YYYY_HH_MM("MM-dd-yyyy HH:mm"), MM_DD_YYYY_HH_MM_SS_AM_PM("MM-dd-yyyy hh:mm:ssa"), YYYY_MM_DD("yyyy-MM-dd"), YYYY_MM_DD_HH_MM(
						"yyyy-MM-dd hh:mm"), YYYY_MM_DD_HH_MM_24("yyyy-MM-dd HH:mm"), YYYY_MM_DD_HH_MM_SS("yyyy-MM-dd hh:mm:ss"), YYYY_MM_DD_HH_MM_SS_24(
								"yyyy-MM-dd HH:mm:ss"), YYYY_MM_DD_HH_MM_SS_SSS("yyyy-MM-dd hh:mm:ss.SSS"), YYYY_MM_DD_HH_MM_SS_SSS_24("yyyy-MM-dd HH:mm:ss.SSS"), YYYY_MMM_DD(
										"yyyy-MMM-dd"), YYYYMMDD("yyyy MM dd"), DD_MM_YYYY("dd/MM/yyyy"), DD_MM_YYYY_1("dd-MM-YYYY"), DD_MMMM_YYYY_HH_MM_AM_PM("dd MMMM yyyy-hh:mm a");
		
		String format;
		
		EDate(String format)
		{
			this.format = format;
		}
		
		public Timestamp byTimeZone(Date date, String timeZone)
		{
			DateFormat _DF = new SimpleDateFormat(format);
			if (CommonValidator.isNotNullNotEmpty(timeZone))
			{
				_DF.setTimeZone(TimeZone.getTimeZone(timeZone.toUpperCase()));
			}
			return Timestamp.valueOf(_DF != null ? _DF.format(date) : "");
		}
		
		public String byTimeZone(String date, String countryCode, EDate eDate)
		{
			if (CommonValidator.isNotNullNotEmpty(date, countryCode))
			{
				DateFormat dateFormat = new SimpleDateFormat(format);
				Calendar calendar = new GregorianCalendar();
				calendar.setTimeInMillis(eDate.formatted(date).getTime());
				dateFormat.setCalendar(calendar);
				dateFormat.setTimeZone(TimeZone.getTimeZone(countryCode));
				return dateFormat.format(calendar.getTime());
			}
			return "";
		}
		
		public String formatted(Date date)
		{
			return new SimpleDateFormat(format).format(date);
		}
		
		public Date formatted(String date)
		{
			try
			{
				return new SimpleDateFormat(format).parse(date);
			}
			catch (ParseException e)
			{
				return null;
			}
		}
	}
	
	public enum EWrap implements EnumInterface
	{
		Brace("()"), Percent("%"), Quote("'"), QuotePercent("");
		
		private String eWrap;
		
		private EWrap(String eWrap)
		{
			this.eWrap = eWrap;
		}
		
		public String enclose(Object data)
		{
			if (data != null)
			{
				String encData = String.valueOf(data);
				if (eWrap.equals(""))
				{
					return Quote.eWrap + Percent.eWrap + encData.trim() + Percent.eWrap + Quote.eWrap;
				}
				else if (eWrap.equals("()"))
				{
					return "(" + encData.trim() + ")";
				}
				else
				{
					return eWrap + encData.trim() + eWrap;
				}
			}
			else if (eWrap.equals(""))
			{
				return Quote.eWrap + Percent.eWrap + Percent.eWrap + Quote.eWrap;
			}
			
			return "";
		}
		
		public String enclose(Object[] dataArr)
		{
			String dataQt = "";
			if (CommonValidator.isNotNullNotEmpty(dataArr))
			{
				if (dataArr[0] instanceof String || dataArr[0] instanceof Integer || dataArr[0] instanceof Long || dataArr[0] instanceof Float || dataArr[0] instanceof Double
						|| dataArr[0] instanceof Boolean)
				{
					for (Object datum : dataArr)
					{
						dataQt += enclose(datum) + ", ";
					}
					if (dataQt.indexOf(", ") > 0)
					{
						dataQt = dataQt.substring(0, dataQt.lastIndexOf(", "));
					}
				}
			}
			return dataQt;
		}
	}
}
