package org.hbs.sg.web.bo;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;

import org.hbs.admin.model.IUsers;
import org.hbs.sg.model.accessors.ConsumerAssessment;
import org.hbs.sg.model.accessors.IConsumerAssessment;
import org.hbs.sg.model.accessors.IConsumerUser;
import org.hbs.sg.model.exam.Assessment;
import org.hbs.sg.model.exam.IAssessment;
import org.hbs.sg.web.controller.AssessmentForm;
import org.hbs.sg.web.dao.AssessmentDAO;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableParam;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.Response;
import org.hbs.util.dao.IBaseDAO;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class AssessmentBoImpl implements AssessmentBo
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
			IAssessment assessment = getAssessment(dtParam, aForm);
			if (CommonValidator.isNotNullNotEmpty(assessment))
			{
				ConsumerAssessment cat = new ConsumerAssessment();
				cat.setAssessment(assessment);
				cat.setUsers((IConsumerUser) user);
				cat.setCreatedUser(user);
				cat.setCreatedDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
				if (iBaseDAO.saveOrUpdate("ConsumerAssessment", cat))
					return new Response("Success", "Practise Assessment created successfully.");
			}
			logger.info("Problem in creating Practise assessment.");
		}
		else
			logger.info("Problem in validating Practise assessment exceeds...");
		return new Response("Failure", "Not able to create Practise Assessment.");
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public IAssessment getAssessment(DataTableParam dtParam, AssessmentForm aForm)
	{
		dtParam.searchBeanClass = Assessment.class;
		dtParam.iDisplayLength = 1;
		
		ENamed.EqualTo.param_AND(dtParam, "course.courseId", aForm.getCourseId());
		ENamed.EqualTo.param_AND(dtParam, "chapter.chapterId", aForm.getChapterId());
		ENamed.EqualTo.param_AND(dtParam, "status", true);
		
		List<Assessment> dataList = (List<Assessment>) iBaseDAO.getDataList(dtParam).getDataList();
		if (CommonValidator.isListFirstNotEmpty(dataList))
			return dataList.iterator().next();
		else
			return null;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public IConsumerAssessment getConsumerAssessment(DataTableParam dtParam)
	{
		dtParam.searchBeanClass = ConsumerAssessment.class;
		dtParam.iDisplayLength = 1;
		
		ENamed.EqualTo.param_AND(dtParam, "status", true);
		
		List<ConsumerAssessment> dataList = (List<ConsumerAssessment>) iBaseDAO.getDataList(dtParam).getDataList();
		if (CommonValidator.isListFirstNotEmpty(dataList))
			return dataList.iterator().next();
		else
			return null;
	}
	
}