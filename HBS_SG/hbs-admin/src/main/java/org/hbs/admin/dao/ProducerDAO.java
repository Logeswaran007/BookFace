package org.hbs.admin.dao;

import org.hbs.admin.controller.param.ProducerParam;
import org.hbs.admin.model.Producers;

public interface ProducerDAO
{

	public Producers getProducers(ProducerParam producerParam);

}
