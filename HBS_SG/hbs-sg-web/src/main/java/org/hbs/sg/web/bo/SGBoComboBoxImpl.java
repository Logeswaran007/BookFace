package org.hbs.sg.web.bo;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.sg.model.Scheme;
import org.hbs.sg.model.course.IChapters;
import org.hbs.sg.model.course.ICourseGroup;
import org.hbs.sg.model.course.ICourses;
import org.hbs.sg.web.controller.AssessmentParam;
import org.hbs.sg.web.controller.SchemeParam;
import org.hbs.sg.web.dao.CoursesDAO;
import org.hbs.sg.web.dao.SchemeDAO;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.model.LabelValueBean;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class SGBoComboBoxImpl implements SGBo
{
	private static final long	serialVersionUID	= -4943843294677727967L;

	public SGBoComboBoxImpl()
	{
		super();
	}

	@Autowired
	protected SchemeDAO		schemeDAO;

	@Autowired
	protected CoursesDAO	coursesDAO;

	@SuppressWarnings("unchecked")
	@Override
	public Map<String, String> getComboBoxSchemeMap(SchemeParam sParam) throws Exception
	{
		Map<String, String> hmSchemeMap = new LinkedHashMap<String, String>();
		IUsers users = EUsers.getSessionUser(sParam.request);
		ENamed.EqualTo.param_AND(sParam, "producer.producerId", users.getProducer().getProducerId());
		ENamed.EqualTo.param_AND(sParam, "status", true);

		List<Scheme> shemeList = (List<Scheme>) schemeDAO.getSchemeList(sParam).dataList;

		for (Scheme sch : shemeList)
		{
			hmSchemeMap.put(sch.getSchemeId() + "-" + sch.getSchemeCost(), sch.getSchemeName());
		}

		return hmSchemeMap;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Map<String, String> getComboBoxCourseGroupMap(AssessmentParam assessmentParam) throws Exception
	{
		Map<String, String> hmCourseGroupMap = new LinkedHashMap<String, String>();
		IUsers sessionUser = EUsers.getSessionUser(assessmentParam.request);
		ENamed.EqualTo.param_AND(assessmentParam, "producer.producerId", sessionUser.getProducer().getProducerId());

		List<ICourseGroup> courseGroupList = (List<ICourseGroup>) coursesDAO.getCourseGroupList(assessmentParam).dataList;

		for (ICourseGroup courseGroup : courseGroupList)
		{
			hmCourseGroupMap.put(courseGroup.getCourseGroupId(), courseGroup.getCourseDesc());
		}

		return hmCourseGroupMap;
	}

	@SuppressWarnings("unchecked")
	public List<LabelValueBean> getComboBoxCourseList(AssessmentParam assessmentParam) throws Exception
	{
		List<LabelValueBean> lbList = new ArrayList<LabelValueBean>();
		IUsers sessionUser = EUsers.getSessionUser(assessmentParam.request);
		ENamed.EqualTo.param_AND(assessmentParam, "courseGroup.producer.producerId", sessionUser.getProducer().getProducerId());
		ENamed.EqualTo.param_AND(assessmentParam, "courseGroup.courseGroupId", assessmentParam.courseGroupId);
		ENamed.EqualTo.param_AND(assessmentParam, "status", true);

		List<ICourses> courseList = (List<ICourses>) coursesDAO.getCoursesList(assessmentParam).dataList;

		for (ICourses course : courseList)
		{
			lbList.add(new LabelValueBean(course.getCourseId(), course.getCourseName()));
		}

		return lbList;
	}

	@SuppressWarnings("unchecked")
	public List<LabelValueBean> getComboBoxChaptersList(AssessmentParam assessmentParam) throws Exception
	{
		List<LabelValueBean> lbList = new ArrayList<LabelValueBean>();
		ENamed.EqualTo.param_AND(assessmentParam, "courseId", assessmentParam.courseId);
		ENamed.EqualTo.param_AND(assessmentParam, "status", true);

		List<ICourses> courseList = (List<ICourses>) coursesDAO.getCoursesList(assessmentParam).dataList;

		for (ICourses course : courseList)
		{
			for (IChapters chapter : course.getChapters())
			{
				lbList.add(new LabelValueBean(chapter.getChapterId(), chapter.getChapterName()));
			}
		}

		return lbList;
	}
}