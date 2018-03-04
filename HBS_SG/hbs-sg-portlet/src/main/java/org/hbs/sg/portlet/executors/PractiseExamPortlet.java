package org.hbs.sg.portlet.executors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hbs.admin.model.IUsers;
import org.hbs.sg.portlet.PortletExecutorBase;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class PractiseExamPortlet extends PortletExecutorBase implements IPortletPath
{
	private static final long serialVersionUID = 4613190151962373561L;
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, ModelAndView modelView, IUsers users)
	{
		
	}
	
	@RequestMapping(PRACTISEEXAM_SEARCH_LAYOUT_BY_REST)
	public @ResponseBody String practiseExamLayout(HttpServletRequest request)
	{
		return "";
		
	}
	
	@RequestMapping(PRACTISEEXAM_SEARCH_RESULTS)
	public @ResponseBody String practiseExamSearch(HttpServletRequest request)
	{
		return "";
		
	}
}
