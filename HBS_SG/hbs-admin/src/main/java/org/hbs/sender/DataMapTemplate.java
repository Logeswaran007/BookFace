package org.hbs.sender;

import org.hbs.admin.model.IMessages;
import org.hbs.admin.model.IMessages.EAddress;

/**
 * 
 * @author Anandh
 *
 */
public interface DataMapTemplate
{
	public void updateDataMap(IMessages message, EAddress... addresses);
	
}
