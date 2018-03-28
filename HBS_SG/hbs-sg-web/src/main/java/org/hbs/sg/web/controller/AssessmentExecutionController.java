package org.hbs.sg.web.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath;
import org.hbs.admin.document.DocumentFactory;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.sg.model.exam.AssessmentView;
import org.hbs.sg.model.exam.IAssessmentAnswer;
import org.hbs.sg.model.exam.IAssessmentExplanation;
import org.hbs.sg.model.exam.IAssessmentQuestion;
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
				
				Set<IAssessmentQuestion> questionSet = assessmentBo.getPractiseQuestions(DataTableParam.getDataTableParamsFromRequest(request));
				
				DocumentFactory.getInstance().forDownload(sessionUser.getProducer()).downloadFileFromRepository(request, questionSet);
				
				List<AssessmentView> viewList = new ArrayList<AssessmentView>(questionSet.size());
				List<IAssessmentAnswer> answerList = new ArrayList<IAssessmentAnswer>();
				AssessmentView aView = null;
				for (IAssessmentQuestion iAQ : questionSet)
				{
					aView = new AssessmentView(sessionUser.getUsToken(), iAQ.getQuestionId(), iAQ.isAnswerMode(), iAQ.getCorrectAnswer().getCorrectAnswer1(),
							iAQ.getCorrectAnswer().getCorrectAnswer2(), iAQ.getCorrectAnswer().getCorrectAnswer3(), iAQ.getCorrectAnswer().getCorrectAnswer4());
					
					DocumentFactory.getInstance().forDownload(sessionUser.getProducer()).downloadFileFromRepository(request, iAQ.getExplanations());
					DocumentFactory.getInstance().forDownload(sessionUser.getProducer()).downloadFileFromRepository(request, iAQ.getAnswers());
					
					if (CommonValidator.isSetFirstNotEmpty(iAQ.getExplanations()))
					{
						IAssessmentExplanation iAE = iAQ.getExplanations().iterator().next();
						aView.set_Explanation(iAE.getExplanation());
						aView.set_ExplanationImage(iAE.getUploadFileVirtualURL());
					}
					
					if (CommonValidator.isSetFirstNotEmpty(iAQ.getAnswers()))
					{
						answerList = new ArrayList<IAssessmentAnswer>(iAQ.getAnswers());
						Collections.shuffle(answerList);
						
						IAssessmentAnswer iAA = answerList.get(0);
						aView.set_Answer1Id(iAA.getAnswerId());
						aView.set_Answer1(iAA.getTextAnswer());
						aView.set_Answer1Image(iAA.getUploadFileFolderURL());
						
						if (CommonValidator.isNotNullNotEmpty(answerList.get(1)))
						{
							iAA = answerList.get(1);
							aView.set_Answer2Id(iAA.getAnswerId());
							aView.set_Answer2(iAA.getTextAnswer());
							aView.set_Answer2Image(iAA.getUploadFileFolderURL());
							
							if (CommonValidator.isNotNullNotEmpty(answerList.get(2)))
							{
								iAA = answerList.get(2);
								aView.set_Answer3Id(iAA.getAnswerId());
								aView.set_Answer3(iAA.getTextAnswer());
								aView.set_Answer3Image(iAA.getUploadFileFolderURL());
								
								if (CommonValidator.isNotNullNotEmpty(answerList.get(3)))
								{
									iAA = answerList.get(3);
									aView.set_Answer4Id(iAA.getAnswerId());
									aView.set_Answer4(iAA.getTextAnswer());
									aView.set_Answer4Image(iAA.getUploadFileFolderURL());
								}
							}
							
						}
					}
					
					viewList.add(aView);
				}
				
				modelView.addObject("questionList", viewList);
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
