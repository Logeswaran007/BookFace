package org.hbs.sg.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableParam;
import org.hbs.util.Response;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class AssessmentExecutionController extends SGControllerBaseBo implements IAdminPath, ISGPath
{
	
	private static final long	serialVersionUID	= 3264657455975968436L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());
	
	@RequestMapping(ADD_PRACTISE_ASSESSMENT)
	public @ResponseBody String createConsumerAssessmentForPractise(@RequestParam("assessmentForm") String formData, HttpServletRequest request)
	{
		try
		{
			IUsers sessionUser = EUsers.getSessionUser(request);
			if (CommonValidator.isNotNullNotEmpty(sessionUser))
			{
				ObjectMapper mapper = new ObjectMapper();
				AssessmentForm assessmentForm = mapper.readValue(formData, AssessmentForm.class);
				
				DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request);
				
				Response response = assessmentBo.createConsumerAssessmentForPractise(dtParam, assessmentForm, sessionUser);
				Gson gson = new GsonBuilder().setPrettyPrinting().create();
				StringBuilder sb = new StringBuilder(gson.toJson(response));
				return sb.toString();
				
			}
			
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		return "Failure";
	}
	
	@RequestMapping(INIT_PRACTISE_ASSESSMENT)
	public @ResponseBody ModelAndView startAndAllocateQuestionsForPractiseAssessment(HttpServletRequest request)
	{
		try
		{
			IUsers sessionUser = EUsers.getSessionUser(request);
			if (CommonValidator.isNotNullNotEmpty(sessionUser))
			{
				ModelAndView modelView = new ModelAndView(PRACTISE_ASSESSMENT_PAGE);
				
				assessmentBo.getPractiseQuestions(DataTableParam.getDataTableParamsFromRequest(request));
				
				return modelView;
			}
			
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		return new ModelAndView(ERROR_404);
	}
	
}
