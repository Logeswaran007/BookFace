package org.hbs.util.dao;

import java.io.Serializable;
import java.util.List;

import org.hbs.util.model.ConstProperty;

public interface PropertyDAO extends Serializable
{
	public List<ConstProperty> getConstPropertyList();
}
