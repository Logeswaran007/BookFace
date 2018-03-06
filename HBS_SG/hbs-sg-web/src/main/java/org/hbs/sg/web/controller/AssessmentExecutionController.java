package org.hbs.sg.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath;
import org.hbs.util.CustomLogger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

public class AssessmentExecutionController extends SGControllerBaseBo implements IAdminPath, ISGPath
{
	
	private static final long	serialVersionUID	= 3264657455975968436L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());
	
	@RequestMapping(value = PRE_PRACTISE_ASSESSMENT_QUESTIONS, method = RequestMethod.POST)
	public @ResponseBody String addAssessmentQuestion(@RequestParam("assessmentForm") String formData, HttpServletRequest request)
	{
		return formData;
		
	}
	
}
