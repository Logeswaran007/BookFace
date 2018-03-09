package org.hbs.sg.web.dao;

import java.io.Serializable;

import org.hbs.sg.web.controller.AssessmentForm;

public interface AssessmentDAO extends Serializable
{
	
	public boolean isPracticeNotExceeds(AssessmentForm aForm);
	
}
