package org.hbs.sg.web.dao;

import java.util.ArrayList;
import java.util.List;

import org.hbs.sg.model.accessors.ConsumerAssessment;
import org.hbs.sg.model.accessors.ConsumerAssessmentGroup;
import org.hbs.sg.model.course.Chapters;
import org.hbs.sg.model.exam.AssessmentQuestion;
import org.hbs.sg.model.exam.IAssessmentPattern;
import org.hbs.sg.model.exam.IAssessmentPatternInfo;
import org.hbs.sg.model.exam.QuestionCalibrate;
import org.hbs.sg.web.controller.AssessmentForm;
import org.hbs.util.CommonHibernateSessionFactorySupport;
import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableParam;
import org.hbs.util.PropertyEnumUtil.EWrap;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;

@Component
public class AssessmentDAOImpl extends CommonHibernateSessionFactorySupport implements AssessmentDAO
{
	
	private static final long	serialVersionUID	= 7917003150149719297L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());
	
	@Override
	public boolean isPracticeNotExceeds(AssessmentForm aForm)
	{
		Session session = getSessionFactory().openSession();
		try
		{
			Query<?> query = null;
			
			StringBuffer sbSelectQry = new StringBuffer("Select Count(CA.*) From ");
			
			sbSelectQry.append(ConsumerAssessment.class.getCanonicalName() + " CA, ");
			sbSelectQry.append(Chapters.class.getCanonicalName() + " CPT " + WHERE_1_1);
			sbSelectQry.append("AND CA.assessment.course.courseId = " + EWrap.Quote.enclose(aForm.getCourseId()));
			sbSelectQry.append("AND CPT.course.courseId = " + EWrap.Quote.enclose(aForm.getCourseId()));
			sbSelectQry.append("AND CPT.chapterId In " + EWrap.Quote.enclose(aForm.getChapterIds()));
			
			query = session.createQuery((sbSelectQry.toString()));
			return ((Long) query.uniqueResult()).longValue() < 10;
			
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		finally
		{
			if (session != null)
			{
				session.clear();
				session.close();
			}
		}
		return false;
		
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<String> getSelectedAssessmentQuestions(DataTableParam dtParam)
	{
		// Object[0] = ConsumerAssessment;
		// Object[1] = AssessmentPattern;
		// Object[2] = assessmentId;
		
		Object[] objects = (Object[]) dtParam.dataList.iterator().next();
		
		IAssessmentPattern pattern = (IAssessmentPattern) objects[1];
		
		calculateAssessmentBasedQuestionsCountByPattern(pattern, dtParam);
		
		Session session = getSessionFactory().openSession();
		String consumerExamId = (String) dtParam.searchValueMap.get("consumerExamId");
		
		List<String> assessmentIdList = new ArrayList<String>();
		
		try
		{
			
			StringBuffer sbSelectQry = new StringBuffer("Select Q.questionId From ");
			sbSelectQry.append(AssessmentQuestion.class.getCanonicalName() + " Q " + COMMA_SPACE);
			sbSelectQry.append(ConsumerAssessmentGroup.class.getCanonicalName() + " CAG " + WHERE_1_1);
			sbSelectQry.append(" AND CAG.assessment.assessmentId = Q.assessment.assessmentId");
			sbSelectQry.append(" AND CAG.consumerAssessment.consumerExamId = " + EWrap.Quote.enclose(consumerExamId));
			sbSelectQry.append(" AND CAG.assessment.status = true");
			
			StringBuffer sbSubSelectQry = new StringBuffer();
			
			// Balance Shift To Other Weight-Age Logic
			int balance = 0;
			for (String assessmentId : pattern.getCalibrateHM().keySet())
			{
				for (String weightAge : pattern.getCalibrateHM().get(assessmentId).keySet())
				{
					QuestionCalibrate _QC = pattern.getCalibrateHM().get(assessmentId).get(weightAge);
					
					sbSubSelectQry = new StringBuffer();
					sbSubSelectQry.append(" AND CAG.assessment.assessmentId = " + EWrap.Quote.enclose(assessmentId));
					sbSubSelectQry.append(" AND Q.weightage = " + EWrap.Quote.enclose(weightAge));
					sbSubSelectQry.append(" AND Q.status = true");
					sbSubSelectQry.append(" Order By rand()");
					
					_QC.setRequiredCount(_QC.getRequiredCount() + balance);
					
					List<String> qList = session.createQuery(sbSelectQry.toString() + sbSubSelectQry.toString()).setMaxResults(_QC.getRequiredCount()).setFirstResult(0).list();
					
					_QC.setAvailCount(qList.size());
					balance = _QC.getBalance();
					System.out.println(sbSelectQry.toString() + sbSubSelectQry.toString() + " >RQ> " + _QC.getRequiredCount() + " >AC> " + _QC.getAvailCount() + " >BL> " + _QC.getBalance());
					assessmentIdList.addAll(qList);
				}
				
			}
			
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		finally
		{
			if (session != null)
			{
				session.clear();
				session.close();
			}
		}
		
		return assessmentIdList;
		
	}
	
	private void calculateAssessmentBasedQuestionsCountByPattern(IAssessmentPattern pattern, DataTableParam dtParam)
	{
		
		String assessmentId = null;
		int noOfQuestions = Integer.parseInt((String) dtParam.searchValueMap.get("noOfQuestions"));
		int noOfQtsP = Math.round(noOfQuestions / dtParam.dataList.size());
		
		int i = 0;
		int soFarCount = 0;
		
		for (Object object : dtParam.dataList)
		{
			assessmentId = (String) ((Object[]) object)[2];
			i = 0;
			soFarCount = 0;
			
			for (IAssessmentPatternInfo info : pattern.getPatternInfoSet())
			{
				if (i++ < pattern.getPatternInfoSet().size() - 1)
				{
					soFarCount += info.trackQuestionCalibrate(assessmentId, noOfQtsP);
				}
				else
				{
					info.initialise(assessmentId).setRequiredCount(noOfQtsP - soFarCount);
				}
			}
		}
		
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Object[]> getAssessmentDataList(DataTableParam dtParam)
	{
		Session session = getSessionFactory().openSession();
		String consumerExamId = (String) dtParam.searchValueMap.get("consumerExamId");
		
		try
		{
			StringBuffer sbSelectQry = new StringBuffer("Select CAG.consumerAssessment, CAG.assessment.pattern, CAG.assessment.assessmentId  From ");
			sbSelectQry.append(ConsumerAssessmentGroup.class.getCanonicalName() + " CAG " + WHERE_1_1);
			sbSelectQry.append(" AND CAG.consumerAssessment.consumerExamId = " + EWrap.Quote.enclose(consumerExamId));
			sbSelectQry.append(" AND CAG.assessment.status = true");
			
			return session.createQuery((sbSelectQry.toString())).list();
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		finally
		{
			if (session != null)
			{
				session.clear();
				session.close();
			}
		}
		
		return null;
	}
}
