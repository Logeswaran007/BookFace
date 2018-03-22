package org.hbs.sender;

import java.io.IOException;
import java.util.Map;
import java.util.Timer;

import org.hbs.admin.bo.MessagesBo;
import org.hbs.admin.model.IMessages;
import org.hbs.admin.model.IMessages.EAddress;
import org.hbs.admin.model.IProducers;
import org.hbs.admin.model.MessagesUserMapping;
import org.hbs.util.EnumInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class VTLSMSFactory
{
	
	private static VTLSMSFactory	vtlFactory	= null;
	
	public static VTLSMSFactory getInstance()
	{
		if (vtlFactory == null)
		{
			vtlFactory = new VTLSMSFactory();
		}
		return vtlFactory;
	}
	
	@Autowired
	private MessagesBo				messageBo;
	
	private VTLSMSFactory()
	{
		
	}
	
	public MessagesBo getMessageBo()
	{
		return messageBo;
	}
	
	public boolean sendSMS(IProducers producer, EnumInterface enumInterface, Map<String, Object> dataMap, EAddress... eAddresses) throws IOException
	{
		IMessages message = messageBo.getMessage(enumInterface);
		message.setDataMap(dataMap);
		
		new Timer().schedule(new ScheduledSMS(producer, message, eAddresses), 0);
		
		return true;
	}
	
	public boolean sendSMS(MessagesUserMapping messagesUserMapping, Map<String, Object> dataMap) throws IOException
	{
		messagesUserMapping.getMessages().setDataMap(dataMap);
		
		new Timer().schedule(new ScheduledSMS(messagesUserMapping, messageBo), 0);
		
		return true;
	}
	
	public void setMessageBo(MessagesBo messageBo)
	{
		this.messageBo = messageBo;
	}
}
