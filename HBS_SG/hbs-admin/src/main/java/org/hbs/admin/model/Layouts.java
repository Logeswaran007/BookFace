package org.hbs.admin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hbs.util.model.CommonLayout;

@Entity
@Table(name = "layouts")
public class Layouts extends CommonLayout implements ILayouts
{

	private static final long	serialVersionUID	= 8034319004711829771L;

	protected String			searchName;
	
	protected String			searchSubName;

	protected int				searchOrder;

	protected String			baseBeanNameWithFullPackage;

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
