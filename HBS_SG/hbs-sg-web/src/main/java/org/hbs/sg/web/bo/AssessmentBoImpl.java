package org.hbs.sg.web.bo;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;

import org.hbs.admin.model.IUsers;
import org.hbs.sg.model.accessors.ConsumerAssessment;
import org.hbs.sg.model.accessors.ConsumerAssessmentGroup;
import org.hbs.sg.model.accessors.IConsumerAssessment;
import org.hbs.sg.model.accessors.IConsumerUser;
import org.hbs.sg.model.exam.Assessment;
import org.hbs.sg.web.controller.AssessmentForm;
import org.hbs.sg.web.dao.AssessmentDAO;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableParam;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.Response;
import org.hbs.util.dao.IBaseDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class AssessmentBoImpl implements AssessmentBo
{
	private static final long	serialVersionUID	= 8872235843517222163L;
	final CustomLogger			logger				= new CustomLogger(this.getClass());
	
	@Autowired
	protected IBaseDAO			iBaseDAO;
	
	@Autowired
	protected AssessmentDAO		assessmentDAO;
	
	public AssessmentBoImpl()
	{
		super();
	}
	
	@Override
	public DataTableParam getAssessmentList(DataTableParam dtParam, boolean isCount)
	{
		dtParam.searchBeanClass = Assessment.class;
		
		ENamed.EqualTo.param_AND(dtParam, "status", true);
		dtParam._OrderBy = " Order By createdDate Desc";
		
		return iBaseDAO.getDataTableList(dtParam, isCount);
	}
	
	@Override
	public boolean saveOrUpdate(Assessment assessment)
	{
		return iBaseDAO.saveOrUpdate("Assessment", assessment);
	}
	
	@Override
	public Response createConsumerAssessmentForPractise(DataTableParam dtParam, AssessmentForm aForm, IUsers user)
	{
		if (assessmentDAO.isPracticeNotExceeds(aForm))
		{
			ConsumerAssessment cat = new ConsumerAssessment();
			
			updateConsumerAssessmentGroup(cat, dtParam, aForm);
			
			cat.setUsers((IConsumerUser) user);
			cat.setCreatedUser(user);
			cat.setCreatedDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
			
			if (iBaseDAO.saveOrUpdate("ConsumerAssessment", cat))
				return new Response("Success", "Practise Assessment created successfully.");
			logger.info("Problem in creating Practise assessment.");
		}
		else
			logger.info("Problem in validating Practise assessment exceeds...");
		return new Response("Failure", "Not able to create Practise Assessment.");
	}
	
	@SuppressWarnings("unchecked")
	private void updateConsumerAssessmentGroup(ConsumerAssessment cat, DataTableParam dtParam, AssessmentForm aForm)
	{
		dtParam.searchBeanClass = Assessment.class;
		dtParam.searchColumns = " assessmentId ";
		
		ENamed.EqualTo.param_AND(dtParam, "course.courseId", aForm.getCourseId());
		ENamed.In.param_AND(dtParam, "chapter.chapterId", aForm.getChapterIds());
		ENamed.EqualTo.param_AND(dtParam, "status", true);
		
		List<String> assessmentIdList = (List<String>) iBaseDAO.getDataList(dtParam).getDataList();
		
		for (String assessmentId : assessmentIdList)
		{
			cat.getAssessmentGroup().add(new ConsumerAssessmentGroup(new Assessment(assessmentId), cat));
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public IConsumerAssessment getConsumerAssessment(DataTableParam dtParam)
	{
		dtParam.searchBeanClass = ConsumerAssessment.class;
		dtParam.iDisplayLength = 1;
		
		ENamed.EqualTo.param_AND(dtParam, "status", true);
		
		List<IConsumerAssessment> dataList = (List<IConsumerAssessment>) iBaseDAO.getDataList(dtParam).getDataList();
		if (CommonValidator.isListFirstNotEmpty(dataList))
			return dataList.iterator().next();
		else
			return null;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public IConsumerAssessment getPractiseQuestions(DataTableParam dtParam)
	{
		IConsumerAssessment cat = getConsumerAssessment(dtParam);
		
		if (CommonValidator.isNotNullNotEmpty(cat))
		{
			dtParam.searchBeanClass = ConsumerAssessmentGroup.class;
			dtParam.iDisplayLength = 100;
			dtParam.searchBeanClassAlias = "CAG";
			dtParam.searchColumns = " CAG.consumerAssessment, CAG.assessment.pattern, CAG.assessment.assessmentId ";
			String consumerExamId = (String) dtParam.searchValueMap.get("consumerExamId");
			ENamed.EqualTo.param_AND(dtParam, "CAG.consumerAssessment.consumerExamId", consumerExamId);
			List<Object[]> dataList = (List<Object[]>) iBaseDAO.getDataList(dtParam).getDataList();
			if (CommonValidator.isListFirstNotEmpty(dataList))
			{
				cat = (ConsumerAssessment) dataList.iterator().next()[0];
				
				for (String iAQ : assessmentDAO.getSelectedAssessmentQuestions(dtParam))
				{
					// cat.getAllocatedQuestions().add(new AllocatedQuestions(cat, iAQ));
					System.out.println(">>iAQ>> " + iAQ);
				}
			}
		}
		return cat;
	}
	
}