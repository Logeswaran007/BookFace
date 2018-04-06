package org.hbs.admin.model;

import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public abstract class CountryBase extends ProducersBase implements ICountryBase
{
	
	private static final long	serialVersionUID	= 5502261511830285361L;
	protected Country			country;
	
	@Override
	@ManyToOne(targetEntity = Country.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "country", nullable = false)
	public Country getCountry()
	{
		return country;
	}
	
	@Override
	public void setCountry(Country country)
	{
		this.country = country;
	}
}
