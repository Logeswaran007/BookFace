package org.hbs.admin.bo;

import java.io.Serializable;
import java.util.List;

import org.hbs.admin.model.ILayouts;

public interface LayoutBo extends Serializable
{
	public List<ILayouts> getResultLayouts(String layoutName);
	
	public List<ILayouts> getResultLayouts(String layoutName, String layoutSubName);
}
