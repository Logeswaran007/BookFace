package org.hbs.sg.web.controller;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.sg.model.accessors.IProducersAssessment;
import org.hbs.sg.model.accessors.ProducersAssessment;
import org.hbs.sg.model.course.ICourses;
import org.hbs.sg.model.exam.Assessment;
import org.hbs.sg.model.exam.AssessmentAnswer;
import org.hbs.sg.model.exam.AssessmentCorrectAnswer;
import org.hbs.sg.model.exam.AssessmentExplanation;
import org.hbs.sg.model.exam.AssessmentInformation;
import org.hbs.sg.model.exam.AssessmentPattern;
import org.hbs.sg.model.exam.AssessmentQuestion;
import org.hbs.sg.model.exam.IAssessment;
import org.hbs.sg.model.exam.IAssessmentAnswer;
import org.hbs.sg.model.exam.IAssessmentExplanation;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableDynamicColumnDefs;
import org.hbs.util.DataTableDynamicColumns;
import org.hbs.util.DataTableObject;
import org.hbs.util.DataTableParam;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.LabelValueBean;
import org.hbs.util.LabelValueBean.ELabelValue;
import org.hbs.util.model.ILayouts;
import org.hbs.util.model.ILayouts.EDataTable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class AssessmentController extends SGControllerBaseBo implements IAdminPath, ISGPath
{

	private static final long	serialVersionUID	= 4424546955485577097L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());

	@RequestMapping(value = ADD_ASSESSMENT_QUESTIONS, method = RequestMethod.POST)
	public @ResponseBody String addAssessmentQuestion(@RequestParam("assessmentForm") String formData, HttpServletRequest request)
	{
		try
		{
			IUsers sessionUser = EUsers.getSessionUser(request);
			if (CommonValidator.isNotNullNotEmpty(sessionUser))
			{
				ObjectMapper mapper = new ObjectMapper();

				AssessmentForm assessmentForm = mapper.readValue(formData, AssessmentForm.class);

				DataTableParam dtParam = new DataTableParam(Assessment.class,"A");
				ENamed.EqualTo.param_AND(dtParam, "A.courseId", assessmentForm.courseId);

				ICourses courses = (ICourses) sgBo.getCourse(dtParam);

				Assessment assessment = new Assessment(sessionUser.getProducer());
				if (CommonValidator.isNotNullNotEmpty(courses))
				{
					assessment.setName(assessmentForm.assessmentName);
					assessment.setCreatedUser(sessionUser);
					assessment.setCreatedDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
					assessment.setCourse(courses);
					assessment.setRepoMode(assessmentForm.getAssessment().getRepoMode());

					assessment.setChapter(courses.getChapter(assessmentForm.getChapterId()));

					assessment.setPattern(new AssessmentPattern(courses.getCourseGroup().getProducer()));
					assessment.setInfo(new AssessmentInformation());

					IProducersAssessment producerAssessment = new ProducersAssessment(courses.getCourseGroup().getProducer(), assessment);

					assessment.getProducersAssessment().add(producerAssessment);

					return assessmentBo.saveOrUpdate(assessment) + "";
				}

			}
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		return "Failure";
	}

	@ModelAttribute("assessmentForm")
	public AssessmentForm createAssessmentForm()
	{
		return new AssessmentForm();
	}

	@RequestMapping(value = GET_CHAPTERS, method = RequestMethod.GET)
	public @ResponseBody String getChaptersList(HttpServletRequest request, @PathVariable String courseId)
	{
		try
		{
			List<LabelValueBean> lbBeanList = sgBo.getComboBoxChaptersList(new AssessmentParam(request, null, courseId));
			return ELabelValue.Combo.getJson(lbBeanList, "-------Select Chapter-------", "");
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}

		return null;
	}

	@RequestMapping(value = GET_COURSES, method = RequestMethod.GET)
	public @ResponseBody String getCourseList(HttpServletRequest request, @PathVariable String courseGroupId)
	{
		// This is a comment added for commit by Loges
		try
		{
			List<LabelValueBean> lbBeanList = sgBo.getComboBoxCourseList(new AssessmentParam(request, courseGroupId, null));
			return ELabelValue.Combo.getJson(lbBeanList, "-------Select Course-------", "");
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}

		return null;
	}

	@RequestMapping(value = PRE_SEARCH_ASSESSMENT_QUESTIONS, method = RequestMethod.POST)
	public ModelAndView preAssessmentQuestionSearch(HttpServletRequest request)
	{
		try
		{
			DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request);
			IUsers users = EUsers.getSessionUser(request);
			ModelAndView modelView = new ModelAndView(SEARCH_ASSESSMENT_QUESTIONS_PAGE);
			List<ILayouts> layoutList = layoutBo.getResultLayouts(AssessmentQuestion.class.getSimpleName());
			modelView.addObject("searchAssessmentQuestionUrl", users.getDomainUrl(request) + SEARCH_ASSESSMENT_QUESTIONS + "?searchCriteria=" + request.getParameter("searchCriteria"));
			modelView.addObject("columnsList", DataTableDynamicColumns.getDynamicColumns(layoutList));
			modelView.addObject("columnDefsList", DataTableDynamicColumnDefs.getDynamicColumnDefs(layoutList));
			modelView.addObject("displayOrderList", EDataTable.Cols.getOrder(layoutList));

			modelView.addObject("assessmentQuestionForm", createAssessmentQuestionForm());
			modelView.addObject("courseGroupList", sgBo.getComboBoxCourseGroupMap(new AssessmentParam(request)));
			modelView.addObject("courseList", null);
			modelView.addObject("chapterList", null);

			String assessmentId = (String) dtParam.searchValueMap.get("assessmentId");
			
			dtParam=new DataTableParam(Assessment.class,"A");
			if (CommonValidator.isNotNullNotEmpty(assessmentId))
			{
				ENamed.EqualTo.param_AND(dtParam, "A.assessmentId", assessmentId);
				modelView.addObject("assessment", assessmentBo.getAssessment(dtParam));
			}
			AssessmentQuestion assessmentQuestion = new AssessmentQuestion();
			modelView.addObject("assessmentQuestionId", assessmentQuestion.getQuestionId());

			return modelView;
		}
		catch (Exception excep)
		{
			logger.error("Error :: " + excep);
			return new ModelAndView(LOGIN);
		}

	}

	@RequestMapping(SEARCH_ASSESSMENT_QUESTIONS)
	public @ResponseBody String searchAssessmenetQuestions(HttpServletRequest request)
	{
		List<ILayouts> layoutList = layoutBo.getResultLayouts(AssessmentQuestion.class.getSimpleName());

		try
		{
			DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request, layoutList);

			String assessmentId = (String) dtParam.searchValueMap.get("assessmentId");

			if (CommonValidator.isNotNullNotEmpty(assessmentId))
			{
				dtParam.dataList.clear();
				dtParam.searchValueMap.clear();
				
				ENamed.EqualTo.param_AND(dtParam, "AQ.assessment.assessmentId", assessmentId);
				List<?> dataList = assessmentBo.getAssessmentQuestionList(dtParam, false).dataList;
				int dataListCount = (int) assessmentBo.getAssessmentQuestionList(dtParam, true).dataListCount;
				List<List<String>> mDataList = DataTableDynamicColumns.getJSONFromObjectByCols(dtParam, layoutList, dataList);
				DataTableObject dataTableObject = new DataTableObject();
				dataTableObject.setAaData(mDataList);
				dataTableObject.setiTotalDisplayRecords(dataListCount);
				dataTableObject.setiTotalRecords(dataListCount);
				Gson gson = new GsonBuilder().setPrettyPrinting().create();
				StringBuilder sb = new StringBuilder(gson.toJson(dataTableObject));
				return sb.toString();
			}

		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		return null;

	}

	@RequestMapping(PRE_SEARCH_ASSESSMENT)
	public ModelAndView preAssessmentSearch(HttpServletRequest request)
	{
		try
		{
			IUsers users = EUsers.getSessionUser(request);
			ModelAndView modelView = new ModelAndView(SEARCH_ASSESSMENT_PAGE);
			List<ILayouts> layoutList = layoutBo.getResultLayouts(Assessment.class.getSimpleName());
			modelView.addObject("searchOnlineExamUrl", users.getDomainUrl(request) + SEARCH_ASSESSMENT);
			modelView.addObject("columnsList", DataTableDynamicColumns.getDynamicColumns(layoutList));
			modelView.addObject("columnDefsList", DataTableDynamicColumnDefs.getDynamicColumnDefs(layoutList));
			modelView.addObject("displayOrderList", EDataTable.Cols.getOrder(layoutList));

			modelView.addObject("assessmentForm", createAssessmentForm());

			return modelView;
		}
		catch (Exception excep)
		{
			logger.error("Error :: " + excep);
			return new ModelAndView(LOGIN);
		}

	}

	@RequestMapping(SEARCH_ASSESSMENT)
	public @ResponseBody String searchAssessmenet(HttpServletRequest request)
	{
		List<ILayouts> layoutList = layoutBo.getResultLayouts(Assessment.class.getSimpleName());
		try
		{
			DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request, layoutList);

			List<?> dataList = assessmentBo.getAssessmentList(dtParam, false).dataList;
			int dataListCount = (int) assessmentBo.getAssessmentList(dtParam, true).dataListCount;

			List<List<String>> mDataList = DataTableDynamicColumns.getJSONFromObjectByCols(dtParam, layoutList, dataList);

			DataTableObject dataTableObject = new DataTableObject();
			dataTableObject.setAaData(mDataList);
			dataTableObject.setiTotalDisplayRecords(dataListCount);
			dataTableObject.setiTotalRecords(dataListCount);

			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			StringBuilder sb = new StringBuilder(gson.toJson(dataTableObject));
			return sb.toString();
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		return null;
	}

	@ModelAttribute("assessmentForm")
	public AssessmentQuestionForm createAssessmentQuestionForm()
	{
		return new AssessmentQuestionForm();
	}

	@RequestMapping(value = ADD_ASSESSMENT_QUSTIONS_BLOCK, method = RequestMethod.POST)
	public @ResponseBody String addAssessmentQuestionBlock(@RequestParam("assessmentQuestionForm") String formData, HttpServletRequest request)
	{

		try
		{
			IUsers sessionUser = EUsers.getSessionUser(request);
			if (CommonValidator.isNotNullNotEmpty(sessionUser))
			{
				ObjectMapper mapper = new ObjectMapper();
				AssessmentQuestionForm assessmentQuestionForm = mapper.readValue(formData, AssessmentQuestionForm.class);

				AssessmentQuestion assessmentQuestion = new AssessmentQuestion();

				assessmentQuestion.setTextQuestion(assessmentQuestionForm.getTextQuestion());

				assessmentQuestion.setCreatedUser(sessionUser);
				assessmentQuestion.setCreatedDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));

				DataTableParam dtParam = new DataTableParam(Assessment.class,"A");
				ENamed.EqualTo.param_AND(dtParam, "A.assessmentId", assessmentQuestionForm.assessmentId);
				ENamed.EqualTo.param_AND(dtParam, "A.status", true);
				IAssessment assessment = (IAssessment) assessmentBo.getAssessment(dtParam);
				if (CommonValidator.isNotNullNotEmpty(assessment))
					assessmentQuestion.setAssessment(assessment);

				IAssessmentExplanation assessmentExplaination = new AssessmentExplanation(assessmentQuestion);
				// assessmentExplaination.setAssessmentQuestion(assessmentQuestion);
				assessmentExplaination.setExplanation(assessmentQuestionForm.getTextExplanation());
				assessmentQuestion.getExplanations().add(assessmentExplaination);

				IAssessmentAnswer assessmentAnswer = new AssessmentAnswer(assessmentQuestion);
				// assessmentAnswer.setAssessmentQuestion(assessmentQuestion);
				assessmentAnswer.setTextAnswer(assessmentQuestionForm.getTextAnswer1());
				assessmentQuestion.getAnswers().add(assessmentAnswer);

				assessmentAnswer = new AssessmentAnswer(assessmentQuestion);
				// assessmentAnswer.setAssessmentQuestion(assessmentQuestion);
				assessmentAnswer.setTextAnswer(assessmentQuestionForm.getTextAnswer2());
				assessmentQuestion.getAnswers().add(assessmentAnswer);

				assessmentAnswer = new AssessmentAnswer(assessmentQuestion);
				// assessmentAnswer.setAssessmentQuestion(assessmentQuestion);
				assessmentAnswer.setTextAnswer(assessmentQuestionForm.getTextAnswer3());
				assessmentQuestion.getAnswers().add(assessmentAnswer);

				assessmentAnswer = new AssessmentAnswer(assessmentQuestion);
				// assessmentAnswer.setAssessmentQuestion(assessmentQuestion);
				assessmentAnswer.setTextAnswer(assessmentQuestionForm.getTextAnswer4());
				assessmentQuestion.getAnswers().add(assessmentAnswer);

				AssessmentCorrectAnswer assessmentCorrectAnswer = new AssessmentCorrectAnswer();
				assessmentCorrectAnswer.setCorrectAnswer1(assessmentQuestionForm.getCorrectAnswer1());
				assessmentCorrectAnswer.setCorrectAnswer2(assessmentQuestionForm.getCorrectAnswer2());
				assessmentCorrectAnswer.setCorrectAnswer3(assessmentQuestionForm.getCorrectAnswer3());
				assessmentCorrectAnswer.setCorrectAnswer4(assessmentQuestionForm.getCorrectAnswer4());
				assessmentQuestion.setCorrectAnswer(assessmentCorrectAnswer);

				return assessmentBo.saveOrUpdate(assessmentQuestion) + "";
			}
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}

		return "";
	}

}
