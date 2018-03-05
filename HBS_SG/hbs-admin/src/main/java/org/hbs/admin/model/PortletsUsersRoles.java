package org.hbs.admin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "portletsusersroles")
public class PortletsUsersRoles implements IPortletsUsersRoles
{
	
	private static final long	serialVersionUID	= 101745777600744144L;
	
	protected int				order;
	
	protected IPortlets			portlets;
	
	protected int				ptAutoId;
	
	protected Boolean			status				= true;
	
	protected IUserRoles		userRoles;
	
	public PortletsUsersRoles()
	{
		super();
	}
	
	public PortletsUsersRoles(int order, IPortlets portlets, int ptAutoId, Boolean status, IUserRoles userRoles)
	{
		super();
		this.order = order;
		this.portlets = portlets;
		this.ptAutoId = ptAutoId;
		this.status = status;
		this.userRoles = userRoles;
	}
	
	@Column(name = "order")
	public int getOrder()
	{
		return order;
	}
	
	@ManyToOne(targetEntity = Portlets.class)
	@JoinColumn(name = "portletId", nullable = false)
	public IPortlets getPortlets()
	{
		return portlets;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ptAutoId")
	public int getPtAutoId()
	{
		return ptAutoId;
	}
	
	@Column(name = "status")
	public Boolean getStatus()
	{
		return status;
	}
	
	@ManyToOne(targetEntity = UserRoles.class)
	@JoinColumn(name = "urAutoId", nullable = false)
	public IUserRoles getUserRoles()
	{
		return userRoles;
	}
	
	public void setOrder(int order)
	{
		this.order = order;
	}
	
	public void setPortlets(IPortlets portlets)
	{
		this.portlets = portlets;
	}
	
	public void setPtAutoId(int ptAutoId)
	{
		this.ptAutoId = ptAutoId;
	}
	
	public void setStatus(Boolean status)
	{
		this.status = status;
	}
	
	public void setUserRoles(IUserRoles userRoles)
	{
		this.userRoles = userRoles;
	}
}
