package org.hbs.sg.model;

import java.util.Set;

import org.hbs.admin.model.ICommonBeanFields;
import org.hbs.admin.model.IProducersBase;
import org.hbs.sg.model.course.ICourseGroup;

public interface IScheme extends IProducersBase, ICommonBeanFields
{
	public Set<ICourseGroup> getCourseGroupList();

	public Double getSchemeCost();

	public String getSchemeId();

	public String getSchemeName();

	public void setCourseGroupList(Set<ICourseGroup> courseGroupList);

	public void setSchemeCost(Double schemeCost);

	public void setSchemeId(String schemeId);

	public void setSchemeName(String schemeName);

}