package org.hbs.admin.model;

import org.hbs.util.EnumInterface;

public interface IProducersAttachments extends ICommonFileUpload, IProducersBase
{
	public enum EDocument implements EnumInterface
	{
		Pending, Success, Fraudulent, Insufficient, Phone_Verification_Failed, Email_Verification_Failed
	}

	public String getDocumentDesc();

	public String getDocumentStatus();

	public void setDocumentDesc(String documentDesc);

	public void setDocumentStatus(String documentStatus);

}
