package org.hbs.admin.bo;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.model.Producers;

public interface ProducerBo
{
	public Producers getProducers(HttpServletRequest request);
}
