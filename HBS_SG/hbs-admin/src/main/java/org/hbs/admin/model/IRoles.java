package org.hbs.admin.model;

import java.util.Set;

import org.hbs.util.EnumInterface;
import org.hbs.util.dao.ICRUDBean;

public interface IRoles extends java.io.Serializable, ICommonBeanFields, ICRUDBean
{
	public enum ERole implements EnumInterface
	{
		Admin, Consumer, Dummy, Employee, Producer, SuperAdminRole;
	}
	
	public String getEnumKey();
	
	public Boolean getIsAdminRole();
	
	public Set<MaMenuRole> getMenuRoles();
	
	public String getRlRoleDescription();
	
	public String getRlRoleId();
	
	public String getRlRoleLongName();
	
	public String getRlRoleName();
	
	public String getRlRoleShortName();
	
	public String getRlRoleType();
	
	public void setEnumKey(String enumKey);
	
	public void setIsAdminRole(Boolean isAdminRole);
	
	public void setMenuRoles(Set<MaMenuRole> menuRoles);
	
	public void setRlRoleDescription(String rlRoleDescription);
	
	public void setRlRoleId(String rlRoleId);
	
	public void setRlRoleLongName(String rlRoleLongName);
	
	public void setRlRoleName(String rlRoleName);
	
	public void setRlRoleShortName(String rlRoleShortName);
	
	public void setRlRoleType(String rlRoleType);
	
}