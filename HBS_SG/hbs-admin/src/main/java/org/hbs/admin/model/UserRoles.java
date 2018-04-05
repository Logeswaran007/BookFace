package org.hbs.admin.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.Where;

/**
 * @author ananth
 */
@Entity
@Table(name = "userroles")
public class UserRoles implements IUserRoles
{
	
	private static final long			serialVersionUID	= 8909239704346625769L;
	
	protected IRoles					roles;
	
	protected int						urAutoId;
	
	protected Set<IPortletsUsersRoles>	userRolePortlets;
	
	protected IUsers					users;
	
	public UserRoles()
	{
		super();
	}
	
	@ManyToOne(targetEntity = Roles.class)
	@JoinColumn(name = "rlRoleId", nullable = false)
	public IRoles getRoles()
	{
		return roles;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "urAutoId")
	public int getUrAutoId()
	{
		return urAutoId;
	}
	
	@OneToMany(targetEntity = PortletsUsersRoles.class, fetch = FetchType.LAZY, mappedBy = "userRoles")
	@Fetch(FetchMode.JOIN)
	@Where(clause = "status = true")
	@OrderBy("order ASC")
	public Set<IPortletsUsersRoles> getUserRolePortlets()
	{
		return userRolePortlets;
	}
	
	@ManyToOne(targetEntity = Users.class)
	@JoinColumn(name = "usEmployeeId", nullable = false)
	public IUsers getUsers()
	{
		return users;
	}
	
	public void setRoles(IRoles roles)
	{
		this.roles = roles;
	}
	
	public void setUrAutoId(int urAutoId)
	{
		this.urAutoId = urAutoId;
	}
	
	public void setUserRolePortlets(Set<IPortletsUsersRoles> userRolePortlets)
	{
		this.userRolePortlets = userRolePortlets;
	}
	
	public void setUsers(IUsers users)
	{
		this.users = users;
	}
	
}
