package org.hbs.admin.bo;

import java.util.List;

import org.hbs.admin.model.ILayouts;
import org.hbs.util.bo.LayoutComboBo;

public interface LayoutBo extends LayoutComboBo
{
	public List<ILayouts> getResultLayouts(String layoutName);

	public List<ILayouts> getResultLayouts(String layoutName, String layoutSubName);
}
