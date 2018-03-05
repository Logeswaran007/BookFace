package org.hbs.sg.model;

import java.util.LinkedHashMap;
import java.util.Map;

import org.hbs.admin.model.ICommonBeanFields;
import org.hbs.admin.model.IProducersBase;
import org.hbs.util.EnumInterface;
import org.hbs.util.dao.ICRUDBean;

public interface IAlertsAndNotifications extends ICommonBeanFields, IProducersBase, ICRUDBean
{
	public enum EMessageStatus implements EnumInterface
	{
		Alerts, Banner, Discussion, NewsFeed, Notifications, PopUp, UpcomingEvents;
		
		public static Map<String, String> getTypeList()
		{
			Map<String, String> hmTypeList = new LinkedHashMap<String, String>();
			
			for (EMessageStatus msg : EMessageStatus.values())
			{
				hmTypeList.put(msg.name(), msg.name());
			}
			
			return hmTypeList;
			
		}
		
	}
	
	public int getAutoId();
	
	public String getExpiryDate();
	
	public String getMessage();
	
	public String getMessageType();
	
	public String getScheduledDate();
	
	public void setAutoId(int autoId);
	
	public void setExpiryDate(String expiryDate);
	
	public void setMessage(String message);
	
	public void setMessageType(String messageType);
	
	public void setScheduledDate(String scheduledDate);
	
}