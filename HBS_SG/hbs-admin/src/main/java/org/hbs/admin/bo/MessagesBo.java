package org.hbs.admin.bo;

import org.hbs.admin.model.IMessages;
import org.hbs.admin.model.MessagesUserMapping;
import org.hbs.util.DataTableParam;
import org.hbs.util.EnumInterface;
import org.hbs.util.IDataTableParam;

public interface MessagesBo
{
	public IMessages getMessage(EnumInterface enumInterface);

	public IDataTableParam getMessagesList(DataTableParam dtParam, boolean isCount);

	public boolean saveOrUpdateMessages(IMessages message);

	public boolean saveOrUpdateMessageUserMapping(MessagesUserMapping... _MUMList);

	public DataTableParam getMessagesUserList(DataTableParam param, boolean isCount);

}
