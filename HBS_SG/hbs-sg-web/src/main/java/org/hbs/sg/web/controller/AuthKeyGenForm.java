package org.hbs.sg.web.controller;

import java.io.Serializable;

import org.hbs.admin.model.Users;
import org.hbs.edutel.model.AuthKeyGen;
import org.hbs.sg.model.Scheme;

public class AuthKeyGenForm implements Serializable
{

	private static final long	serialVersionUID	= 3562150613128442151L;

	private AuthKeyGen			authKey				= new AuthKeyGen();
	private Integer				noOfKeys			= 0;
	private Double				totalSellingCost	= 0.0;

	public AuthKeyGenForm()
	{
		super();
		this.authKey.setUsers(new Users());
		this.authKey.setScheme(new Scheme());
	}

	public AuthKeyGenForm(AuthKeyGen authKey, Integer noOfKeys, Double totalSellingCost)
	{
		super();
		this.authKey = authKey;
		this.noOfKeys = noOfKeys;
		this.totalSellingCost = totalSellingCost;
	}

	public AuthKeyGen getAuthKey()
	{
		return authKey;
	}

	public void setAuthKey(AuthKeyGen authKey)
	{
		this.authKey = authKey;
	}

	public Integer getNoOfKeys()
	{
		return noOfKeys;
	}

	public void setNoOfKeys(Integer noOfKeys)
	{
		this.noOfKeys = noOfKeys;
	}

	public Double getTotalSellingCost()
	{
		return totalSellingCost;
	}

	public void setTotalSellingCost(Double totalSellingCost)
	{
		this.totalSellingCost = totalSellingCost;
	}

}
