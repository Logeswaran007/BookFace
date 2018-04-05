package org.hbs.util.bo;

import java.io.Serializable;
import java.util.List;

import org.hbs.util.model.ILayouts;

public interface LayoutBo extends Serializable
{
	public List<ILayouts> getResultLayouts(String layoutName);
	
	public List<ILayouts> getResultLayouts(String layoutName, String layoutSubName);
}
