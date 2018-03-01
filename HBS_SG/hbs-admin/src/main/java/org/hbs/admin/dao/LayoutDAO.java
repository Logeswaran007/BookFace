package org.hbs.admin.dao;

import java.util.List;

import org.hbs.admin.model.ILayouts;
import org.hbs.util.dao.LayoutComboDAO;

public interface LayoutDAO extends LayoutComboDAO
{
	public List<ILayouts> getLayouts(String layoutName);

	public List<ILayouts> getLayouts(String layoutName, String layoutSubName);
}
