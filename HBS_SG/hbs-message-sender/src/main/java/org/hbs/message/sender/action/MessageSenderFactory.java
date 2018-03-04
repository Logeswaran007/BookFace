package org.hbs.message.sender.action;

import java.util.ArrayList;
import java.util.List;

import org.hbs.admin.model.IMessages.EMessageType;
import org.hbs.message.media.MessageEmailSender;
import org.hbs.message.media.MessageSMSSender;

public class MessageSenderFactory
{
	private static MessageSenderFactory constFact = null;
	
	public static MessageSenderFactory getInstance()
	{
		if (constFact == null)
		{
			constFact = new MessageSenderFactory();
		}
		return constFact;
	}
	
	private MessageSenderFactory()
	{
	}
	
	public List<IMessageSender> getSenderInstance(EMessageType eMessageType)
	{
		List<IMessageSender> msgSenderList = new ArrayList<IMessageSender>(1);
		switch ( eMessageType )
		{
			case SMS :
			{
				msgSenderList.add(new MessageSMSSender());
				return msgSenderList;
			}
			case Email :
			{
				msgSenderList.add(new MessageEmailSender());
				return msgSenderList;
			}
			default :
			{
				msgSenderList.add(new MessageSMSSender());
				return msgSenderList;
			}
		}
	}
}
