package org.hbs.edutel.model;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import org.hbs.sg.model.accessors.ConsumerUsersBase;

@Entity
@DiscriminatorValue("EduTelConsumer")
public class EduTelConsumer extends ConsumerUsersBase implements IEduTelConsumer
{
	private static final long			serialVersionUID		= 4062434025806195331L;
	
	protected Set<IAuthKeyGenConsumer>	authKeyGenConsumerList	= new LinkedHashSet<IAuthKeyGenConsumer>(0);
	
	public EduTelConsumer()
	{
		super();
	}
	
	@Override
	@OneToMany(targetEntity = AuthKeyGenConsumer.class, fetch = FetchType.EAGER, mappedBy = "users")
	public Set<IAuthKeyGenConsumer> getAuthKeyGenConsumerList()
	{
		return authKeyGenConsumerList;
	}
	
	@Transient
	public String getBusinessKey(String... combination)
	{
		return EKey.Auto("ECS");
	}
	
	@Override
	public void setAuthKeyGenConsumerList(Set<IAuthKeyGenConsumer> authKeyGenConsumerList)
	{
		this.authKeyGenConsumerList = authKeyGenConsumerList;
	}
}