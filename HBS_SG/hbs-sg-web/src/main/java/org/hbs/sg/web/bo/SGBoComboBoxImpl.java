package org.hbs.sg.web.bo;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.sg.model.Scheme;
import org.hbs.sg.web.controller.SchemeParam;
import org.hbs.sg.web.dao.SchemeDAO;
import org.hbs.util.IParam.ENamed;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class SGBoComboBoxImpl implements SGBo
{
	private static final long serialVersionUID = -4943843294677727967L;

	public SGBoComboBoxImpl()
	{
		super();
	}

	@Autowired
	protected SchemeDAO schemeDAO;

	@SuppressWarnings("unchecked")
	@Override
	public Map<String, String> getComboBoxSchemeMap(SchemeParam sParam) throws Exception
	{
		Map<String, String> hmSchemeMap = new LinkedHashMap<String, String>();
		IUsers users = EUsers.getSessionUser(sParam.request);
		ENamed.EqualTo.param_AND(sParam, "producer.producerId", users.getProducer().getProducerId());
		ENamed.EqualTo.param_AND(sParam, "status", true);

		List<Scheme> shemeList = (List<Scheme>) schemeDAO.getSchemeList(sParam).dataList;

		for (Scheme sch : shemeList)
		{
			hmSchemeMap.put(sch.getSchemeId() + "-" + sch.getSchemeCost(), sch.getSchemeName());
		}

		return hmSchemeMap;
	}
}