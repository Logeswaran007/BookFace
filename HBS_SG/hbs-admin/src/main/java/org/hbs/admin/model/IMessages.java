package org.hbs.admin.model;

import java.io.IOException;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.hbs.util.EnumInterface;

public interface IMessages extends Serializable
{
	
	public enum EAddress implements EnumInterface
	{
		Bcc, Cc, To;
		
		Map<EAddress, List<IAddress>> addressMap = new LinkedHashMap<EAddress, List<IAddress>>();
		
		public void append(IAddress address)
		{
			List<IAddress> dataList = addressMap.get(this);
			if (dataList == null)
				addressMap.put(this, new ArrayList<IAddress>(0));
			addressMap.get(this).add(address);
			
		}
		
		public void clear()
		{
			addressMap.put(this, new ArrayList<IAddress>(0));
		}
		
		public List<String> getAddresses()
		{
			List<String> addList = new ArrayList<String>(1);
			for (IAddress address : addressMap.get(this))
			{
				addList.add(address.getEmail());
			}
			return addList;
		}
		
		public List<IAddress> getAddressList()
		{
			return addressMap.get(this);
		}
		
		public List<Long> getMobileNo()
		{
			List<Long> addList = new ArrayList<Long>(1);
			for (IAddress address : addressMap.get(this))
			{
				addList.add(address.getMobileNo());
			}
			return addList;
		}
		
	}
	
	public enum EMessage implements EnumInterface
	{
		Abort, Failed, InComplete, Pending, Processing, Ready, Retry, Send;
	}
	
	public enum EMessageType implements EnumInterface
	{
		Email, SMS;
	}
	
	public enum ESMS implements EnumInterface
	{
		Accept_Language("Accept-Language"), Message("message"), Password(
				"password"), Post("POST"), ReceiptantMobile("to"), Sender("sender"), User_Agent("User-Agent"), UserName("username"), WebsiteURL("WebsiteURL");
		
		private final String eSMS;
		
		private ESMS(String eSMS)
		{
			this.eSMS = eSMS;
		}
		
		public String getValue()
		{
			return eSMS;
		}
	}
	
	public String generateVTLMessage() throws IOException;
	
	public Map<String, Object> getDataMap();
	
	public String getDataMapTemplateName();
	
	public Timestamp getDeliveryDate();
	
	public String getDeliveryDateTime();
	
	public String getMessage();
	
	public String getMessageId();
	
	public String getMessageName();
	
	public String getMessageSubject();
	
	public String getMessageType();
	
	public Timestamp getNextDeliveryDate();
	
	public EnumInterface getTemplateName();
	
	public void setDataMap(Map<String, Object> dataMap);
	
	public void setDataMapTemplateName(String dataMapTemplateName);
	
	public void setDeliveryDate(Timestamp deliveryDate);
	
	public void setDeliveryDateTime(String deliveryDateTime);
	
	public void setMessage(String message);
	
	public void setMessageId(String messageId);
	
	public void setMessageName(String messageName);
	
	public void setMessageSubject(String messageSubject);
	
	public void setMessageType(String messageType);
	
	public void setNextDeliveryDate(Timestamp nextDeliveryDate);
	
}
