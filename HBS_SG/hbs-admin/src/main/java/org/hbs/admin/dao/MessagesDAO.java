package org.hbs.admin.dao;

import org.hbs.admin.model.IMessages;
import org.hbs.admin.model.MessagesUserMapping;
import org.hbs.util.DataTableParam;

public interface MessagesDAO
{
	public DataTableParam getMessagesList(DataTableParam dtParam, boolean isCount);

	public boolean saveOrUpdateMessages(IMessages message);

	public boolean saveOrUpdateMessageUserMapping(MessagesUserMapping... messagesUserMapping);

	public DataTableParam getMessagesUserList(DataTableParam dtParam, boolean isCount);
}
