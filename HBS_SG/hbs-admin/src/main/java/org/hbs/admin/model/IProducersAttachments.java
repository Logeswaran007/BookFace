package org.hbs.admin.model;

import org.hbs.util.EnumInterface;
import org.hbs.util.ICRUDBean;

public interface IProducersAttachments extends ICommonFileUpload, IProducersBase, ICRUDBean
{
	public enum EDocument implements EnumInterface
	{
		Email_Verification_Failed, Fraudulent, Insufficient, Pending, Phone_Verification_Failed, Success
	}
	
	public String getDocumentDesc();
	
	public String getDocumentStatus();
	
	public void setDocumentDesc(String documentDesc);
	
	public void setDocumentStatus(String documentStatus);
	
}
