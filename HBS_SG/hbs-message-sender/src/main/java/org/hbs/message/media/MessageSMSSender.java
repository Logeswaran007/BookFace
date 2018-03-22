package org.hbs.message.media;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.hbs.admin.model.IMessages.EMessageType;
import org.hbs.admin.model.MessagesUserMapping;
import org.hbs.message.sender.action.IMessageSender;
import org.hbs.sender.VTLSMSFactory;
import org.hbs.util.CommonValidator;

public class MessageSMSSender implements IMessageSender
{
	private static final long serialVersionUID = 5378031148500056351L;
	
	@Override
	public EMessageType getMessageSenderType()
	{
		return EMessageType.SMS;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public void sendMessageToUserByMedia(List<MessagesUserMapping> messageUserList) throws IOException, InterruptedException, ClassNotFoundException, SQLException
	{
		Map<String, Object> dataMap = null;
		
		for (final MessagesUserMapping _MUM : messageUserList)
		{
			if (CommonValidator.isNotNullNotEmpty(_MUM.getDataObject()))
				dataMap = (Map<String, Object>) _MUM.deserialize(_MUM.getDataObject());
			
			if (CommonValidator.isNotNullNotEmpty(_MUM.getReceiptantAddress()))
			{
				VTLSMSFactory.getInstance().sendSMS(_MUM, dataMap);
			}
			Thread.sleep(1000);
		}
	}
}
