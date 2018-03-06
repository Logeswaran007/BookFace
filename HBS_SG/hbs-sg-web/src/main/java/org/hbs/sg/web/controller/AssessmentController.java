package org.hbs.sg.web.controller;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath;
import org.hbs.admin.model.ILayouts;
import org.hbs.admin.model.ILayouts.EDataTable;
import org.hbs.admin.model.IProducers;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.sg.model.accessors.IProducersAssessment;
import org.hbs.sg.model.accessors.ProducersAssessment;
import org.hbs.sg.model.course.IChapters;
import org.hbs.sg.model.course.ICourses;
import org.hbs.sg.model.exam.Assessment;
import org.hbs.sg.model.exam.AssessmentInformation;
import org.hbs.sg.model.exam.IAssessment;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableDynamicColumnDefs;
import org.hbs.util.DataTableDynamicColumns;
import org.hbs.util.DataTableObject;
import org.hbs.util.DataTableParam;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.model.LabelValueBean;
import org.hbs.util.model.LabelValueBean.ELabelValue;
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

				AssessmentParam assessmentParam = new AssessmentParam();
				ENamed.EqualTo.param_AND(assessmentParam, "courseId", assessmentForm.courseId);
				ENamed.EqualTo.param_AND(assessmentParam, "status", true);
				ICourses courses = (ICourses) sgBo.getCoursesByCourseId(assessmentParam);
				Assessment assessment = new Assessment();
				if (CommonValidator.isNotNullNotEmpty(courses))
				{
					assessment.setAssessmentId(assessmentForm.assessment.getBusinessKey());
					assessment.setCreatedUser(sessionUser);
					assessment.setCreatedDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
					assessment.setCourse(courses);
					assessment.setRepoMode(assessmentForm.getAssessment().getRepoMode());

					for (IChapters chapter : courses.getChapters())
					{
						if (CommonValidator.isEqual(assessmentForm.getChapterId(), chapter.getChapterId()))
							assessment.setChapter(chapter);
					}

					assessment.setPattern(assessmentForm.getAssessment().getPattern());

					assessment.setInfo(new AssessmentInformation());
					
					

					IProducersAssessment producerAssessment =new ProducersAssessment(sessionUser.getProducer(),assessment);
					
					//producerAssessment.setAssessment(assessment);
					//producerAssessment.setProducer(sessionUser.getProducer());
					
					assessment.getProducers().add(producerAssessment);

					return sgBo.saveOrUpdate(assessment) + "";
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
			IUsers users = EUsers.getSessionUser(request);
			ModelAndView modelView = new ModelAndView(SEARCH_ASSESSMENT_QUESTIONS_PAGE);
			List<ILayouts> layoutList = layoutBo.getResultLayouts(Assessment.class.getSimpleName());
			modelView.addObject("searchOnlineExamUrl", users.getDomainUrl(request) + SEARCH_ASSESSMENT);
			modelView.addObject("columnsList", DataTableDynamicColumns.getDynamicColumns(layoutList));
			modelView.addObject("columnDefsList", DataTableDynamicColumnDefs.getDynamicColumnDefs(layoutList));
			modelView.addObject("displayOrderList", EDataTable.Cols.getOrder(layoutList));

			modelView.addObject("assessmentForm", createAssessmentForm());
			modelView.addObject("courseGroupList", sgBo.getComboBoxCourseGroupMap(new AssessmentParam(request)));
			modelView.addObject("courseList", null);
			modelView.addObject("chapterList", null);

			return modelView;
		}
		catch (Exception excep)
		{
			logger.error("Error :: " + excep);
			return new ModelAndView(LOGIN);
		}

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

			return modelView;
		}
		catch (Exception excep)
		{
			logger.error("Error :: " + excep);
			return new ModelAndView(LOGIN);
		}

	}

	@SuppressWarnings("unchecked")
	@RequestMapping(SEARCH_ASSESSMENT)
	public @ResponseBody String searchAssessmenet(HttpServletRequest request)
	{
		List<ILayouts> layoutList = layoutBo.getResultLayouts(Assessment.class.getSimpleName());

		DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request);

		List<IAssessment> dataList = (List<IAssessment>) sgBo.getAssessmentList(dtParam, false).dataList;
		int dataListCount = (int) sgBo.getAssessmentList(dtParam, true).dataListCount;

		List<List<String>> mDataList = DataTableDynamicColumns.getJSONFromObject(dtParam, layoutList, dataList.toArray(new Object[dataList.size()]));

		DataTableObject dataTableObject = new DataTableObject();
		dataTableObject.setAaData(mDataList);
		dataTableObject.setiTotalDisplayRecords(dataListCount);
		dataTableObject.setiTotalRecords(dataListCount);

		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		StringBuilder sb = new StringBuilder(gson.toJson(dataTableObject));
		return sb.toString();
	}

	@ModelAttribute("assessmentForm")
	public AssessmentForm createAssessmentQuestionForm()
	{
		return new AssessmentForm();
	}

}
