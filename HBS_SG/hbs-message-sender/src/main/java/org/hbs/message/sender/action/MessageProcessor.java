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
import org.hbs.util.CommonUtil;
import org.hbs.util.DataTableParam;
import org.hbs.util.IConstProperty;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.PropertyEnumUtil.EGeneral;
import org.hbs.util.factory.PropFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MessageProcessor implements IConstProperty
{
	private static final long	serialVersionUID	= 8417933923448309697L;

	@Autowired
	protected MessagesBo		messagesBo;

	@SuppressWarnings("unchecked")
	public Map<String, List<MessagesUserMapping>> getScheduledMessageMapList()
	{
		Timestamp deliveryDateTime = CommonUtil.getTimeZoneDateInFormat(new Date(), DATE_FORMAT_YYYY_MM_DD_HH_MM_SS_24, PropFactory.getInstance().getProperty(EGeneral.Display_Time_Zone));
		ArrayList<String> msgStatuses = new ArrayList<String>(0);
		msgStatuses.add(EMessage.Pending.name());
		msgStatuses.add(EMessage.Retry.name());

		DataTableParam param = new DataTableParam();

		ENamed.EqualTo.param_AND(param, "status", true);
		ENamed.In.param_AND(param, "messageStatus", msgStatuses);
		ENamed.LessThan.param_AND(param, "retryCount", MessagesUserMapping.MAX_RETRY_COUNT);
		ENamed.LessThanEqualTo.param_AND(param, "deliveryDate", deliveryDateTime);

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
				_MUM.setMessageStatus(EMessage.InComplete.name());
			}
		}
		return hmMsgUserMap;
	}
}
