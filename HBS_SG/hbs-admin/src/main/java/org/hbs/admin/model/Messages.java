package org.hbs.admin.model;

import java.io.IOException;
import java.io.StringWriter;
import java.sql.Timestamp;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;
import org.hbs.util.CommonUtil;
import org.hbs.util.EnumInterface;
import org.hbs.util.IConstProperty;
import org.hbs.util.PropertyEnumUtil.EGeneral;
import org.hbs.util.dao.ICRUDBean;
import org.hbs.util.factory.PropFactory;

@Entity
@Table(name = "messages")
public class Messages extends CommonBeanFields implements IMessages, IConstProperty, ICRUDBean
{
	private static final long		serialVersionUID	= -2367543616698726280L;
	protected Map<String, Object>	dataMap				= new LinkedHashMap<String, Object>();
	protected String				dataMapTemplateName;
	protected Timestamp				deliveryDate;
	protected String				deliveryDateTime;
	protected String				message;
	protected String				messageId;
	protected String				messageName;
	protected String				messageSubject		= "System Message";
	protected String				messageType			= EMessageType.SMS.name();
	protected Timestamp				nextDeliveryDate;
	
	public Messages()
	{
		super();
	}
	
	public Messages(EnumInterface messageId, EnumInterface messageType)
	{
		super();
		this.messageId = messageId.name();
		this.messageType = messageType.name();
	}
	
	public Messages(String messageId, String messageType)
	{
		super();
		this.messageId = messageId;
		this.messageType = messageType;
	}
	
	public Messages(String messageId, String message, String messageType)
	{
		super();
		this.messageId = messageId;
		this.message = message;
		this.messageType = messageType;
	}
	
	@Transient
	public String generateVTLMessage() throws IOException
	{
		Velocity.init();
		VelocityContext context = new VelocityContext();
		
		for (String key : dataMap.keySet())
			context.put(key, dataMap.get(key));
		
		StringWriter writer = new StringWriter();
		
		Velocity.evaluate(context, writer, messageId, message);
		
		String generateMessage = writer.toString();
		
		writer.close();
		
		return generateMessage;
		
	}
	
	@Transient
	public Map<String, Object> getDataMap()
	{
		return dataMap;
	}
	
	@Column(name = "dataMapTemplateName")
	public String getDataMapTemplateName()
	{
		return dataMapTemplateName;
	}
	
	@Column(name = "deliveryDate")
	public Timestamp getDeliveryDate()
	{
		return deliveryDate;
	}
	
	@Transient
	public String getDeliveryDateTime()
	{
		return deliveryDateTime;
	}
	
	@Column(name = "message")
	public String getMessage()
	{
		return message;
	}
	
	@Id
	@Column(name = "messageId")
	public String getMessageId()
	{
		return messageId;
	}
	
	@Column(name = "messageName")
	public String getMessageName()
	{
		return messageName;
	}
	
	@Column(name = "messageSubject")
	public String getMessageSubject()
	{
		return messageSubject;
	}
	
	@Column(name = "messageType")
	public String getMessageType()
	{
		return messageType;
	}
	
	@Column(name = "nextDeliveryDate")
	public Timestamp getNextDeliveryDate()
	{
		return nextDeliveryDate;
	}
	
	@Transient
	@Override
	public EnumInterface getTemplateName()
	{
		return new EnumInterface() {
			
			@Override
			public String name()
			{
				return messageName;
			}
			
			@Override
			public int ordinal()
			{
				return 0;
			}
			
		};
	}
	
	public void setDataMap(Map<String, Object> dataMap)
	{
		this.dataMap = dataMap;
	}
	
	public void setDataMapTemplateName(String dataMapTemplateName)
	{
		this.dataMapTemplateName = dataMapTemplateName;
	}
	
	public void setDeliveryDate(Timestamp deliveryDate)
	{
		this.deliveryDate = deliveryDate;
	}
	
	public void setDeliveryDateTime(String deliveryDateTime)
	{
		this.deliveryDateTime = deliveryDateTime;
		setDeliveryDate(CommonUtil.getTimeZoneDateInFormat(deliveryDateTime, DATE_FORMAT_DD_MM_YYYY_HH_MM, DATE_FORMAT_YYYY_MM_DD_HH_MM_SS_SSS_24,
				PropFactory.getInstance().getProperty(EGeneral.Display_Time_Zone)));
	}
	
	public void setMessage(String message)
	{
		this.message = message;
	}
	
	public void setMessageId(String messageId)
	{
		this.messageId = messageId;
	}
	
	public void setMessageName(String messageName)
	{
		this.messageName = messageName;
	}
	
	public void setMessageSubject(String messageSubject)
	{
		this.messageSubject = messageSubject;
	}
	
	public void setMessageType(String messageType)
	{
		this.messageType = messageType;
	}
	
	public void setNextDeliveryDate(Timestamp nextDeliveryDate)
	{
		this.nextDeliveryDate = nextDeliveryDate;
	}
	
}
