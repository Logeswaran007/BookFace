package org.hbs.sender;

import org.hbs.admin.bo.MessagesBo;
import org.hbs.admin.model.IAddress;
import org.hbs.admin.model.IMessages;
import org.hbs.admin.model.IMessages.EAddress;
import org.hbs.admin.model.UsersAddress;
import org.springframework.beans.factory.annotation.Autowired;

public class SampleDataMapTemplateImpl implements DataMapTemplate
{
	@Autowired
	MessagesBo messageBo;
	
	@Override
	public void updateDataMap(IMessages message, EAddress... addresses)
	{
		
		for (EAddress add : addresses)
		{
			if (add == EAddress.To)
			{
				for (IAddress address : add.getAddressList())
				{
					if (address instanceof UsersAddress)
					{
						UsersAddress uAdd = (UsersAddress) address;
						message.getDataMap().put("lastLoginTime", uAdd.getUsers().getLastLoginInformation());
					}
				}
			}
		}
	}
}
