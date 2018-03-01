package org.hbs.admin.bo;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.controller.param.ProducerParam;
import org.hbs.admin.dao.ProducerDAO;
import org.hbs.admin.model.Producers;
import org.hbs.util.IParam.ENamed;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ProducerBoImpl implements ProducerBo
{
	@Autowired
	private ProducerDAO producerDAO;

	@Override
	public Producers getProducers(HttpServletRequest request)
	{
		ProducerParam producerParam = new ProducerParam();

		ENamed.EqualTo.param_AND(producerParam, "domainContext", request.getServletContext().getContextPath());
		ENamed.EqualTo.param_AND(producerParam, "status", true);

		return producerDAO.getProducers(producerParam);
	}

	public ProducerDAO getProducerDAO()
	{
		return producerDAO;
	}

	public void setProducerDAO(ProducerDAO producerDAO)
	{
		this.producerDAO = producerDAO;
	}

}
