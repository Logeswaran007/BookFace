package org.hbs.sg.web.dao;

import java.util.List;

import org.hbs.sg.model.accessors.ConsumerAssessment;
import org.hbs.sg.model.accessors.ConsumerAssessmentGroup;
import org.hbs.sg.model.course.Chapters;
import org.hbs.sg.model.exam.AssessmentQuestion;
import org.hbs.sg.model.exam.IAssessmentQuestion;
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
	public List<IAssessmentQuestion> getSelectedAssessmentQuestions(DataTableParam dtParam)
	{
		Session session = getSessionFactory().openSession();
		try
		{
			String consumerExamId = (String) dtParam.searchValueMap.get("consumerExamId");
			
			StringBuffer sbSelectQry = new StringBuffer("Select AQ.* From ");
			sbSelectQry.append(AssessmentQuestion.class.getCanonicalName() + " AQ ");
			sbSelectQry.append(ConsumerAssessmentGroup.class.getCanonicalName() + " CA " + WHERE_1_1);
			sbSelectQry.append(" AND CA.assessment.assessmentId = AQ.assessment.assessmentId");
			sbSelectQry.append(" AND CA.consumerExamId = " + EWrap.Quote.enclose(consumerExamId));
			
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
