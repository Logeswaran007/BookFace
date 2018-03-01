package org.hbs.admin.bo;

import java.util.List;

import org.hbs.admin.dao.LayoutDAO;
import org.hbs.admin.model.ILayouts;
import org.hbs.util.bo.LayoutComboBoImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class LayoutBoImpl extends LayoutComboBoImpl implements LayoutBo
{
	@Autowired
	protected LayoutDAO layoutDAO;

	public LayoutDAO getLayoutDAO()
	{
		return layoutDAO;
	}

	@Override
	public List<ILayouts> getResultLayouts(String layoutName)
	{
		return layoutDAO.getLayouts(layoutName);
	}

	@Override
	public List<ILayouts> getResultLayouts(String layoutName, String layoutSubName)
	{
		return layoutDAO.getLayouts(layoutName, layoutSubName);
	}

	public void setLayoutDAO(LayoutDAO layoutUserDAO)
	{
		this.layoutDAO = layoutUserDAO;
	}

}
