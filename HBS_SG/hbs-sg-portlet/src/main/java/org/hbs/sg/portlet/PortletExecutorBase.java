package org.hbs.sg.portlet;

import org.springframework.beans.factory.annotation.Autowired;

public abstract class PortletExecutorBase implements IPortletExecutor
{
	private static final long	serialVersionUID	= 324471607176987868L;

	@Autowired
	protected BoBase			boBase;

	public PortletExecutorBase()
	{
		super();
	}

	public BoBase getBoBase()
	{
		return boBase;
	}

	public void setBoBase(BoBase boBase)
	{
		this.boBase = boBase;
	}

}