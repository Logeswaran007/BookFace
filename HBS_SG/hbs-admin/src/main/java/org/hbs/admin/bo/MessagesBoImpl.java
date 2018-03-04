package org.hbs.admin.bo;

import org.hbs.admin.model.IMessages;
import org.hbs.admin.model.Messages;
import org.hbs.admin.model.MessagesUserMapping;
import org.hbs.util.CommonValidator;
import org.hbs.util.DataTableParam;
import org.hbs.util.EnumInterface;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.dao.IBaseDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MessagesBoImpl implements MessagesBo
{
	@Autowired
	protected IBaseDAO iBaseDAO;
	
	@Override
	public IMessages getMessage(EnumInterface enumInterface)
	{
		
		DataTableParam dtParam = new DataTableParam();
		
		dtParam.searchBeanClass = Messages.class;
		
		ENamed.EqualTo.param_AND(dtParam, "messageId", enumInterface.name());
		ENamed.EqualTo.param_AND(dtParam, "status", true);
		
		iBaseDAO.getDataList(dtParam);
		
		if (CommonValidator.isListFirstNotEmpty(dtParam.dataList))
			return (IMessages) dtParam.dataList.iterator().next();
		
		return null;
	}
	
	@Override
	public DataTableParam getMessagesList(DataTableParam dtParam, boolean isCount)
	{
		dtParam.searchBeanClass = Messages.class;
		
		ENamed.EqualTo.param_AND(dtParam, "status", true);
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	@Override
	public DataTableParam getMessagesUserList(DataTableParam dtParam, boolean isCount)
	{
		dtParam.searchBeanClass = MessagesUserMapping.class;
		
		ENamed.EqualTo.param_AND(dtParam, "status", true);
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	@Override
	public boolean saveOrUpdate(Messages message)
	{
		return iBaseDAO.saveOrUpdate("Messages", message);
	}
	
	@Override
	public boolean saveOrUpdateMessageUserMapping(MessagesUserMapping... _MUMList)
	{
		return iBaseDAO.saveOrUpdate("MessagesUserMapping", _MUMList);
	}
	
}
