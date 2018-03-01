package org.hbs.edutel.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hbs.admin.model.CommonBeanFields;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.Users;
import org.hbs.sg.model.IScheme;
import org.hbs.sg.model.Scheme;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

@Entity
@Table(name = "authkeygen")
public class AuthKeyGen extends CommonBeanFields implements IAuthKeyGen
{
	private static final long	serialVersionUID	= -931081870112263503L;

	protected IScheme			scheme;

	protected Double			sellingPrice;

	protected String			serialKey;

	protected String			serialKeyStatus		= EKeyGen.Not_Sold.getStatus();

	protected IUsers			users;

	public AuthKeyGen()
	{
		super();
		this.serialKey = EKeyGen.generateKey();
	}

	public AuthKeyGen(IScheme scheme, Double sellingPrice, String serialKey, String serialKeyStatus, IUsers users)
	{
		super();
		this.serialKey = EKeyGen.generateKey();
		this.scheme = scheme;
		this.sellingPrice = sellingPrice;
		this.serialKey = serialKey;
		this.serialKeyStatus = serialKeyStatus;
		this.users = users;
	}

	@ManyToOne(targetEntity = Scheme.class)
	@JoinColumn(name = "schemeId", nullable = true)
	@JsonDeserialize(as = Scheme.class)
	public IScheme getScheme()
	{
		return scheme;
	}

	@Id
	@Column(name = "serialKey")
	public String getSerialKey()
	{
		return serialKey;
	}

	@Column(name = "sellingPrice")
	public Double getSellingPrice()
	{
		return sellingPrice;
	}

	public void setSellingPrice(Double sellingPrice)
	{
		this.sellingPrice = sellingPrice;
	}

	@Column(name = "serialKeyStatus")
	public String getSerialKeyStatus()
	{
		return serialKeyStatus;
	}

	@ManyToOne(targetEntity = Users.class)
	@JoinColumn(name = "usEmployeeId", nullable = true)
	@JsonDeserialize(as = Users.class)
	public IUsers getUsers()
	{
		return users;
	}

	public void setScheme(IScheme scheme)
	{
		this.scheme = scheme;
	}

	@Override
	public void setSerialKey(String serialKey)
	{
		this.serialKey = serialKey;
	}

	@Override
	public void setSerialKeyStatus(String serialKeyStatus)
	{
		this.serialKeyStatus = serialKeyStatus;
	}

	public void setUsers(IUsers users)
	{
		this.users = users;
	}

	public void updateSerialKey()
	{
		// TODO Auto-generated method stub

	}

}
