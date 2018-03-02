package org.hbs.sg.web.dao;

import java.io.Serializable;

import org.hbs.sg.model.course.Courses;
import org.hbs.sg.web.controller.AssessmentParam;
import org.hbs.util.DataTableParam;

public interface CoursesDAO extends Serializable
{
	public DataTableParam getCourseAttachmentList(DataTableParam dtParam, boolean isCount);

	public boolean saveOrUpdate(Courses Courses);

	public AssessmentParam getCourseGroupList(AssessmentParam assessmentParam);

	public AssessmentParam getCoursesList(AssessmentParam assessmentParam);

}
