package org.hbs.sg.model.accessors;

import java.beans.Transient;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

import org.hbs.admin.model.Users;

@Entity
@DiscriminatorValue("Employee")
public class EmployeeUsers extends Users
{
	
	private static final long serialVersionUID = -7728137016247845127L;
	
	public EmployeeUsers()
	{
		super();
		this.usEmployeeId = getBusinessKey();
	}
	
	@Transient
	public String getBusinessKey(String... combination)
	{
		return EKey.Auto("EMP");
	}
}
