package org.hbs.sg.portlet;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hbs.admin.model.IUsers;
import org.springframework.web.servlet.ModelAndView;

public interface IPortletExecutor extends Serializable
{
	public void execute(HttpServletRequest request, HttpServletResponse response, ModelAndView modelView, IUsers users);
	
	public void setBoBase(BoBase boBase);
}
