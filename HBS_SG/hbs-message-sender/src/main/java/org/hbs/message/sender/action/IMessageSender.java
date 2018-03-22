package org.hbs.message.sender.action;

import java.util.List;

import org.hbs.admin.model.IMessages.EMessageType;
import org.hbs.admin.model.MessagesUserMapping;
import org.hbs.util.IConstProperty;

public interface IMessageSender extends IConstProperty
{
	public EMessageType getMessageSenderType();
	
	public void sendMessageToUserByMedia(List<MessagesUserMapping> messageUserList) throws Exception;
	
}
