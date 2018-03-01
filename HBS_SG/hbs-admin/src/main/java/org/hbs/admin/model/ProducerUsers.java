package org.hbs.admin.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Transient;

@Entity
@DiscriminatorValue("Producer")
public class ProducerUsers extends Users
{

	private static final long serialVersionUID = -7077340071970448073L;

	public ProducerUsers()
	{
		super();
	}

	@Transient
	public String getBusinessKey()
	{
		return EKey.Auto("PRUR");
	}
}
