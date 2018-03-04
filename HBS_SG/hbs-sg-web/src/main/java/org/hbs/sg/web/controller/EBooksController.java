package org.hbs.sg.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath;
import org.hbs.admin.model.ILayouts;
import org.hbs.admin.model.ILayouts.EDataTable;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.sg.model.course.CourseAttachments;
import org.hbs.sg.model.course.ICourseAttachments;
import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableDynamicColumnDefs;
import org.hbs.util.DataTableDynamicColumns;
import org.hbs.util.DataTableObject;
import org.hbs.util.DataTableParam;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class EBooksController extends SGControllerBaseBo implements IAdminPath, ISGPath
{
	
	private static final long	serialVersionUID	= -4386900749828017871L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());
	
	@ModelAttribute("eBooksForm")
	public EBooksForm createBooksForm()
	{
		return new EBooksForm();
	}
	
	@RequestMapping(value = PRE_SEARCH_EBOOKS, method = RequestMethod.POST)
	public @ResponseBody ModelAndView preSearchEBooks(HttpServletRequest request)
	{
		try
		{
			IUsers users = EUsers.getSessionUser(request);
			ModelAndView modelView = new ModelAndView(SEARCH_EBOOKS_PAGE);
			List<ILayouts> layoutList = layoutBo.getResultLayouts(CourseAttachments.class.getSimpleName());
			modelView.addObject("searchEBooksUrl", users.getDomainUrl(request) + SEARCH_EBOOKS);
			modelView.addObject("columnsList", DataTableDynamicColumns.getDynamicColumns(layoutList));
			modelView.addObject("columnDefsList", DataTableDynamicColumnDefs.getDynamicColumnDefs(layoutList));
			modelView.addObject("displayOrderList", EDataTable.Cols.getOrder(layoutList));
			
			modelView.addObject("eBooksForm", createBooksForm());
			modelView.addObject("courseGroupList", sgBo.getComboBoxCourseGroupMap(new AssessmentParam(request)));
			modelView.addObject("courseList", null);
			modelView.addObject("chapterList", null);
			return modelView;
			
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		
		return null;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(SEARCH_EBOOKS)
	public @ResponseBody String searchEBooks(HttpServletRequest request)
	{
		List<ILayouts> layoutList = layoutBo.getResultLayouts(CourseAttachments.class.getSimpleName());
		
		DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request);
		
		List<ICourseAttachments> dataList = (List<ICourseAttachments>) sgBo.getCourseAttachmentList(dtParam, false).dataList;
		int dataListCount = (int) sgBo.getCourseAttachmentList(dtParam, true).dataListCount;
		
		List<List<String>> mDataList = DataTableDynamicColumns.getJSONFromObject(dtParam, layoutList, dataList.toArray(new Object[dataList.size()]));
		
		DataTableObject dataTableObject = new DataTableObject();
		dataTableObject.setAaData(mDataList);
		dataTableObject.setiTotalDisplayRecords(dataListCount);
		dataTableObject.setiTotalRecords(dataListCount);
		
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		StringBuilder sb = new StringBuilder(gson.toJson(dataTableObject));
		return sb.toString();
	}
	
}
