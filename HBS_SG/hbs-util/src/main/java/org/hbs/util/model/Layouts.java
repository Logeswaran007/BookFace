package org.hbs.util.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "layouts")
public class Layouts extends CommonLayout implements ILayouts
{
	
	private static final long	serialVersionUID	= 8034319004711829771L;
	
	protected String			baseBeanNameWithFullPackage;
	
	protected String			searchName;
	
	protected int				searchOrder;
	
	public Layouts()
	{
		super();
	}
	
	public Layouts(String searchName, int searchOrder, String baseBeanNameWithFullPackage)
	{
		super();
		this.searchName = searchName;
		this.searchOrder = searchOrder;
		this.baseBeanNameWithFullPackage = baseBeanNameWithFullPackage;
	}
	
	@Column(name = "baseBeanNameWithFullPackage")
	public String getBaseBeanNameWithFullPackage()
	{
		return baseBeanNameWithFullPackage;
	}
	
	@Column(name = "searchName")
	public String getSearchName()
	{
		return searchName;
	}
	
	@Column(name = "searchOrder")
	public int getSearchOrder()
	{
		return searchOrder;
	}
	
	public void setBaseBeanNameWithFullPackage(String baseBeanNameWithFullPackage)
	{
		this.baseBeanNameWithFullPackage = baseBeanNameWithFullPackage;
	}
	
	public void setSearchName(String searchName)
	{
		this.searchName = searchName;
	}
	
	public void setSearchOrder(int searchOrder)
	{
		this.searchOrder = searchOrder;
	}
	
}
