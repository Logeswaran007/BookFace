package org.hbs.util.factory;

import org.hbs.util.EnumInterface;
import org.hbs.util.bo.PropertyBo;
import org.springframework.beans.factory.annotation.Autowired;

public class PropFactory
{
	private static PropFactory propUtil = null;

	public static PropFactory getInstance()
	{
		if (propUtil == null)
		{
			propUtil = new PropFactory();
		}
		return propUtil;
	}

	@Autowired
	private PropertyBo propertyBo;

	private PropFactory()
	{
	}

	public String getProperty(EnumInterface enumKey)
	{
		return propertyBo.obtainProperty(enumKey.name());
	}

	public String[] getProperty(EnumInterface enumKey, String delimiter)
	{
		return propertyBo.obtainProperty(enumKey.name()).split(delimiter);
	}

	public PropertyBo getPropertyBo()
	{
		return propertyBo;
	}

	public void setPropertyBo(PropertyBo propertyBo)
	{
		this.propertyBo = propertyBo;
	}
}
