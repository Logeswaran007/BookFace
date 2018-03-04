package org.hbs.sg.portlet.executors;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hbs.admin.model.ILayouts;
import org.hbs.admin.model.IUserLog;
import org.hbs.admin.model.IUsers;
import org.hbs.sg.portlet.PortletExecutorBase;
import org.hbs.util.DataTableDynamicColumnDefs;
import org.hbs.util.DataTableDynamicColumns;
import org.hbs.util.DataTableObject;
import org.hbs.util.DataTableParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@RestController
public class ActivityPortlet extends PortletExecutorBase implements IPortletPath
{
	private static final long serialVersionUID = 4613190151962373561L;
	
	@RequestMapping(ACTIVITY_SEARCH_LAYOUT_BY_REST)
	public @ResponseBody String activityLayout(HttpServletRequest request)
	{
		return "";
		
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(ACTIVITY_SEARCH_RESULTS)
	public @ResponseBody String activitySearch(HttpServletRequest request)
	{
		
		List<ILayouts> layoutList = boBase.layoutBo.getResultLayouts(this.getClass().getSimpleName());
		
		DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request);
		
		List<IUserLog> userLogList = (List<IUserLog>) boBase.portletBo.getActivityList(dtParam, false).dataList;
		int userListCount = (int) boBase.portletBo.getActivityList(dtParam, true).dataListCount;
		
		List<List<String>> mDataList = DataTableDynamicColumns.getJSONFromObject(dtParam, layoutList, userLogList.toArray(new Object[userLogList.size()]));
		
		DataTableObject dataTableObject = new DataTableObject();
		dataTableObject.setAaData(mDataList);
		dataTableObject.setiTotalDisplayRecords(userListCount);
		dataTableObject.setiTotalRecords(userListCount);
		
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		StringBuilder sb = new StringBuilder(gson.toJson(dataTableObject));
		return sb.toString();
		
	}
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, ModelAndView modelView, IUsers users)
	{
		List<ILayouts> layoutList = boBase.layoutBo.getResultLayouts(this.getClass().getSimpleName());
		modelView.addObject("activityPortletURL", users.getDomainUrl(request) + ACTIVITY_SEARCH_RESULTS);
		modelView.addObject("ap.columnsList", DataTableDynamicColumns.getDynamicColumns(layoutList));
		modelView.addObject("ap.columnDefsList", DataTableDynamicColumnDefs.getDynamicColumnDefs(layoutList));
		
	}
	
}
