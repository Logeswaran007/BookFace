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
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class VTLEmailFactory
{
	
	private static VTLEmailFactory	vtlFactory	= null;
	
	public static VTLEmailFactory getInstance()
	{
		if (vtlFactory == null)
		{
			vtlFactory = new VTLEmailFactory();
		}
		return vtlFactory;
	}
	
	@Autowired
	private JavaMailSender			mailSender;
	
	@Autowired
	private MessagesBo				messageBo;
	
	private VTLEmailFactory()
	{
		
	}
	
	public JavaMailSender getMailSender()
	{
		return mailSender;
	}
	
	public MessagesBo getMessageBo()
	{
		return messageBo;
	}
	
	public boolean sendEmail(IProducers producer, EnumInterface enumInterface, Map<String, Object> dataMap, EAddress... eAddresses) throws IOException
	{
		IMessages message = messageBo.getMessage(enumInterface);
		message.setDataMap(dataMap);
		
		new Timer().schedule(new ScheduledEmail(mailSender, producer, message, eAddresses), 0);
		
		return true;
	}
	
	public boolean sendEmail(MessagesUserMapping messagesUserMapping, Map<String, Object> dataMap, EAddress... eAddresses) throws IOException
	{
		messagesUserMapping.getMessages().setDataMap(dataMap);
		
		new Timer().schedule(new ScheduledEmail(mailSender, messagesUserMapping, messageBo, eAddresses), 0);
		
		return true;
	}
	
	public void setMailSender(JavaMailSender mailSender)
	{
		this.mailSender = mailSender;
	}
	
	public void setMessageBo(MessagesBo messageBo)
	{
		this.messageBo = messageBo;
	}
	
}
