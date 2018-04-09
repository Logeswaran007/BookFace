package org.hbs.sg.web.bo;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.sg.model.Scheme;
import org.hbs.sg.model.course.Chapters;
import org.hbs.sg.model.course.CourseGroup;
import org.hbs.sg.model.course.Courses;
import org.hbs.sg.web.controller.AssessmentParam;
import org.hbs.sg.web.controller.SchemeParam;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.LabelValueBean;
import org.hbs.util.dao.IBaseDAO;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class SGBoComboBoxImpl implements SGBo
{
	private static final long	serialVersionUID	= -4943843294677727967L;
	
	@Autowired
	protected IBaseDAO			iBaseDAO;
	
	public SGBoComboBoxImpl()
	{
		super();
	}
	
	@SuppressWarnings("unchecked")
	public List<LabelValueBean> getComboBoxChaptersList(AssessmentParam param) throws Exception
	{
		List<LabelValueBean> lbList = new ArrayList<LabelValueBean>();
		
		param.addBean(Chapters.class, "C");
		param.searchColumns = " C.chapterId, C.chapterName ";
		
		ENamed.EqualTo.param_AND(param, "C.course.courseId", param.courseId);
		ENamed.EqualTo.param_AND(param, "C.status", true);
		
		List<Object[]> objectList = (List<Object[]>) iBaseDAO.getDataList(param).getDataList();
		
		for (Object[] object : objectList)
		{
			lbList.add(new LabelValueBean(object[0].toString(), object[1].toString()));
		}
		
		return lbList;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Map<String, String> getComboBoxCourseGroupMap(AssessmentParam param) throws Exception
	{
		Map<String, String> hmComboMap = new LinkedHashMap<String, String>();
		IUsers sessionUser = EUsers.getSessionUser(param.request);
		
		param.addBean(CourseGroup.class, "CG");
		param.searchColumns = "CG.courseGroupId, CG.courseDesc";
		
		ENamed.EqualTo.param_AND(param, "CG.producer.producerId", sessionUser.getProducer().getProducerId());
		List<Object[]> objectList = (List<Object[]>) iBaseDAO.getDataList(param).getDataList();
		
		for (Object[] object : objectList)
		{
			hmComboMap.put(object[0].toString(), object[1].toString());
		}
		
		return hmComboMap;
	}
	
	@SuppressWarnings("unchecked")
	public List<LabelValueBean> getComboBoxCourseList(AssessmentParam param) throws Exception
	{
		List<LabelValueBean> lbList = new ArrayList<LabelValueBean>();
		IUsers sessionUser = EUsers.getSessionUser(param.request);
		
		param.addBean(Courses.class, "C");
		param.searchColumns = "C.courseId, C.courseName";
		
		ENamed.EqualTo.param_AND(param, "C.courseGroup.producer.producerId", sessionUser.getProducer().getProducerId());
		ENamed.EqualTo.param_AND(param, "C.courseGroup.courseGroupId", param.courseGroupId);
		ENamed.EqualTo.param_AND(param, "C.status", true);
		
		List<Object[]> objectList = (List<Object[]>) iBaseDAO.getDataList(param).getDataList();
		
		for (Object[] object : objectList)
		{
			lbList.add(new LabelValueBean(object[0].toString(), object[1].toString()));
		}
		
		return lbList;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Map<String, String> getComboBoxSchemeMap(SchemeParam param) throws Exception
	{
		Map<String, String> hmComboMap = new LinkedHashMap<String, String>();
		IUsers users = EUsers.getSessionUser(param.request);
		
		param.addBean(Scheme.class, "S");
		param.searchColumns = "S.schemeId, S.schemeCost, S.schemeName";
		ENamed.EqualTo.param_AND(param, "S.producer.producerId", users.getProducer().getProducerId());
		ENamed.EqualTo.param_AND(param, "S.status", true);
		
		List<Object[]> objectList = (List<Object[]>) iBaseDAO.getDataList(param).getDataList();
		
		for (Object[] object : objectList)
		{
			hmComboMap.put(object[0].toString() + "-" + object[1].toString(), object[2].toString());
		}
		
		return hmComboMap;
	}
}