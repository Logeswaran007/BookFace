package org.hbs.message.media;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.hbs.admin.model.IMessages.EMessageType;
import org.hbs.admin.model.MessagesUserMapping;
import org.hbs.message.sender.action.IMessageSender;
import org.hbs.sender.VTLEmailFactory;
import org.hbs.util.CommonValidator;

public class MessageEmailSender implements IMessageSender
{
	private static final long serialVersionUID = 1301322022734860231L;
	
	public EMessageType getMessageSenderType()
	{
		return EMessageType.Email;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public void sendMessageToUserByMedia(List<MessagesUserMapping> messageUserList) throws ClassNotFoundException, IOException, SQLException
	{
		for (final MessagesUserMapping _MUM : messageUserList)
		{
			Map<String, Object> dataMap = null;
			
			if (CommonValidator.isNotNullNotEmpty(_MUM.getDataObject()))
				dataMap = (Map<String, Object>) _MUM.deserialize(_MUM.getDataObject());
			
			if (CommonValidator.isNotNullNotEmpty(_MUM.getReceiptantAddress()))
			{
				VTLEmailFactory.getInstance().sendEmail(_MUM, dataMap);
			}
		}
	}
	
}
