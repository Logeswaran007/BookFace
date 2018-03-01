package org.hbs.sg.model.accessors;

import java.io.Serializable;

import org.hbs.admin.model.IProducers;
import org.hbs.sg.model.exam.IAssessment;

public interface IProducersAssessment extends Serializable
{
	public int getAutoId();

	public IProducers getProducer();

	public void setAutoId(int autoId);

	public void setProducer(IProducers producer);

	public IAssessment getAssessment();

	public void setAssessment(IAssessment assessment);
}
