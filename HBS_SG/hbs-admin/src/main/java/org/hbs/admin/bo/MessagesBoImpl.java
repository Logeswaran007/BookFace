package org.hbs.admin.bo;

import org.hbs.admin.dao.MessagesDAO;
import org.hbs.admin.model.IMessages;
import org.hbs.admin.model.MessagesUserMapping;
import org.hbs.util.CommonValidator;
import org.hbs.util.DataTableParam;
import org.hbs.util.EnumInterface;
import org.hbs.util.IDataTableParam;
import org.hbs.util.IParam.ENamed;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MessagesBoImpl implements MessagesBo
{

	@Autowired
	private MessagesDAO messagesDAO;

	@Override
	public IMessages getMessage(EnumInterface enumInterface)
	{

		DataTableParam dtParam = new DataTableParam();
		ENamed.EqualTo.param_AND(dtParam, "messageId", enumInterface.name());
		ENamed.EqualTo.param_AND(dtParam, "status", true);
		dtParam = messagesDAO.getMessagesList(dtParam, false);
		if (CommonValidator.isListFirstNotEmpty(dtParam.dataList))
			return (IMessages) dtParam.dataList.iterator().next();
		return null;
	}

	@Override
	public IDataTableParam getMessagesList(DataTableParam dtParam, boolean isCount)
	{
		return messagesDAO.getMessagesList(dtParam, isCount);
	}

	@Override
	public boolean saveOrUpdateMessages(IMessages message)
	{
		return messagesDAO.saveOrUpdateMessages(message);
	}

	@Override
	public boolean saveOrUpdateMessageUserMapping(MessagesUserMapping... _MUMList)
	{
		return messagesDAO.saveOrUpdateMessageUserMapping(_MUMList);
	}

	@Override
	public DataTableParam getMessagesUserList(DataTableParam dtParam, boolean isCount)
	{
		return messagesDAO.getMessagesUserList(dtParam, isCount);
	}

}
