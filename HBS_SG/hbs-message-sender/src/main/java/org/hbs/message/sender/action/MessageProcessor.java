package org.hbs.message.sender.action;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hbs.admin.bo.MessagesBo;
import org.hbs.admin.model.IMessages.EMessage;
import org.hbs.admin.model.IMessages.EMessageType;
import org.hbs.admin.model.MessagesUserMapping;
import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableParam;
import org.hbs.util.IConstProperty;
import org.hbs.util.IParam.ENamed;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MessageProcessor implements IConstProperty
{
	private static final long	serialVersionUID	= 8417933923448309697L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());
	
	@Autowired
	protected MessagesBo		messagesBo;
	
	@SuppressWarnings("unchecked")
	public Map<String, List<MessagesUserMapping>> getScheduledMessageMapList()
	{
		Timestamp deliveryDateTime = new Timestamp(new Date().getTime());
		ArrayList<String> msgStatuses = new ArrayList<String>(0);
		msgStatuses.add(EMessage.Pending.name());
		msgStatuses.add(EMessage.Retry.name());
		
		DataTableParam param = new DataTableParam(MessagesUserMapping.class, "MUM");
		
		ENamed.EqualTo.param_AND(param, "MUM.status", true);
		ENamed.In.param_AND(param, "MUM.messageStatus", msgStatuses);
		ENamed.LessThan.param_AND(param, "MUM.retryCount", MessagesUserMapping.MAX_RETRY_COUNT);
		ENamed.LessThanEqualTo.param_AND(param, "MUM.deliveryDate", deliveryDateTime);
		
		List<MessagesUserMapping> messageUserList = (List<MessagesUserMapping>) messagesBo.getMessagesUserList(param, false).dataList;
		
		List<MessagesUserMapping> messageUserListSMS = new ArrayList<MessagesUserMapping>(0);
		List<MessagesUserMapping> messageUserListEmail = new ArrayList<MessagesUserMapping>(0);
		
		Map<String, List<MessagesUserMapping>> hmMsgUserMap = new HashMap<String, List<MessagesUserMapping>>(0);
		hmMsgUserMap.put(EMessageType.SMS.name(), messageUserListSMS);
		hmMsgUserMap.put(EMessageType.Email.name(), messageUserListEmail);
		
		for (MessagesUserMapping _MUM : messageUserList)
		{
			try
			{
				switch ( EMessageType.valueOf(_MUM.getMessages().getMessageType()) )
				{
					case SMS :
						messageUserListSMS.add(_MUM);
						break;
					case Email :
						messageUserListEmail.add(_MUM);
						break;
					default :
						break;
				}
			}
			catch (Exception excep)
			{
				logger.error(excep);
				_MUM.setMessageStatus(EMessage.InComplete.name());
			}
		}
		return hmMsgUserMap;
	}
}
