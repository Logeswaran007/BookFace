package org.hbs.admin.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public abstract class CommonFileUpload extends CommonFileUploadBase implements ICommonFileUpload
{
	
	private static final long	serialVersionUID	= 3565525018590664829L;
	protected int				autoId;
	
	public CommonFileUpload()
	{
		super();
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "autoId")
	public int getAutoId()
	{
		return autoId;
	}
	
	public void setAutoId(int autoId)
	{
		this.autoId = autoId;
	}
	
}