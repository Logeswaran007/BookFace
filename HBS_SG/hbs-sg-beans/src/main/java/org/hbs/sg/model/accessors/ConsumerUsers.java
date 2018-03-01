package org.hbs.sg.model.accessors;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Transient;

@Entity
@DiscriminatorValue("Consumer")
public class ConsumerUsers extends ConsumerUsersBase
{

	private static final long serialVersionUID = 5579565094335923590L;

	public ConsumerUsers()
	{
		super();
		this.usEmployeeId = getBusinessKey();
	}

	@Transient
	public String getBusinessKey(String... combination)
	{
		return EKey.Auto("CSR");
	}
}
