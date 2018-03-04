package org.hbs.admin.model;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hbs.util.EBusinessKey;
import org.hbs.util.dao.ICRUDBean;

@Entity
@Table(name = "roles")
public class Roles extends CommonBeanFields implements IRoles, EBusinessKey, ICRUDBean
{
	
	private static final long	serialVersionUID	= 515193003553697834L;
	
	private String				enumKey;
	
	private Boolean				isAdminRole;
	
	private Set<MaMenuRole>		menuRoles			= new LinkedHashSet<MaMenuRole>(0);
	
	private String				rlRoleDescription;
	
	private String				rlRoleId;
	
	private String				rlRoleLongName;
	
	private String				rlRoleName;
	
	private String				rlRoleShortName;
	
	private String				rlRoleType;
	
	public Roles()
	{
		super();
		this.rlRoleId = getBusinessKey();
	}
	
	public Roles(String rlRoleId)
	{
		super();
		this.rlRoleId = getBusinessKey();
	}
	
	@Override
	public String getBusinessKey(String... combination)
	{
		return EKey.Auto("RL");
	}
	
	@Column(name = "enumKey")
	public String getEnumKey()
	{
		return enumKey;
	}
	
	@Column(name = "isAdminRole")
	public Boolean getIsAdminRole()
	{
		return isAdminRole;
	}
	
	@OneToMany(targetEntity = MaMenuRole.class, fetch = FetchType.EAGER, mappedBy = "rlRoles")
	public Set<MaMenuRole> getMenuRoles()
	{
		return menuRoles;
	}
	
	@Column(name = "rlRoleDescription")
	public String getRlRoleDescription()
	{
		return rlRoleDescription;
	}
	
	@Id
	@Column(name = "rlRoleId")
	public String getRlRoleId()
	{
		return rlRoleId;
	}
	
	@Column(name = "rlRoleLongName")
	public String getRlRoleLongName()
	{
		return rlRoleLongName;
	}
	
	@Column(name = "rlRoleName")
	public String getRlRoleName()
	{
		return rlRoleName;
	}
	
	@Column(name = "rlRoleShortName")
	public String getRlRoleShortName()
	{
		return rlRoleShortName;
	}
	
	@Column(name = "rlRoleType")
	public String getRlRoleType()
	{
		return rlRoleType;
	}
	
	public void setEnumKey(String enumKey)
	{
		this.enumKey = enumKey;
	}
	
	public void setIsAdminRole(Boolean isAdminRole)
	{
		this.isAdminRole = isAdminRole;
	}
	
	public void setMenuRoles(Set<MaMenuRole> menuRoles)
	{
		this.menuRoles = menuRoles;
	}
	
	public void setRlRoleDescription(String rlRoleDescription)
	{
		this.rlRoleDescription = rlRoleDescription;
	}
	
	public void setRlRoleId(String rlRoleId)
	{
		this.rlRoleId = rlRoleId;
	}
	
	public void setRlRoleLongName(String rlRoleLongName)
	{
		this.rlRoleLongName = rlRoleLongName;
	}
	
	public void setRlRoleName(String rlRoleName)
	{
		this.rlRoleName = rlRoleName;
	}
	
	public void setRlRoleShortName(String rlRoleShortName)
	{
		this.rlRoleShortName = rlRoleShortName;
	}
	
	public void setRlRoleType(String rlRoleType)
	{
		this.rlRoleType = rlRoleType;
	}
	
}