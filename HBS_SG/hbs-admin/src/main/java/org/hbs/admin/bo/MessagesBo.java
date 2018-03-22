package org.hbs.admin.bo;

import org.hbs.admin.model.IMessages;
import org.hbs.admin.model.Messages;
import org.hbs.admin.model.MessagesUserMapping;
import org.hbs.util.DataTableParam;
import org.hbs.util.EnumInterface;

public interface MessagesBo
{
	public IMessages getMessage(EnumInterface enumInterface);
	
	public DataTableParam getMessagesList(DataTableParam dtParam, boolean isCount);
	
	public DataTableParam getMessagesUserList(DataTableParam param, boolean isCount);
	
	public boolean saveOrUpdate(Messages message);
	
	public boolean saveOrUpdateMessageUserMapping(MessagesUserMapping... _MUMList);
	
}
