package org.hbs.sg.web.dao;

import java.io.Serializable;
import java.util.List;

import org.hbs.edutel.model.AuthKeyGen;
import org.hbs.util.DataTableParam;

public interface KeyGenDAO extends Serializable
{

	public DataTableParam getAuthKeyGenList(DataTableParam dtParam, boolean isCount);

	public boolean saveOrUpdate(List<AuthKeyGen> authKeyList);

}
