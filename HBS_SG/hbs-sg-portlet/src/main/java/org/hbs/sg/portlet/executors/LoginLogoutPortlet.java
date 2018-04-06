package org.hbs.sg.portlet.executors;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hbs.admin.model.IUserLog;
import org.hbs.admin.model.IUsers;
import org.hbs.sg.portlet.PortletExecutorBase;
import org.hbs.util.DataTableDynamicColumnDefs;
import org.hbs.util.DataTableDynamicColumns;
import org.hbs.util.DataTableObject;
import org.hbs.util.DataTableParam;
import org.hbs.util.model.ILayouts;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@RestController
public class LoginLogoutPortlet extends PortletExecutorBase implements IPortletPath
{
	
	private static final long serialVersionUID = -3515971775617109076L;
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, ModelAndView modelView, IUsers users)
	{
		List<ILayouts> layoutList = boBase.layoutBo.getResultLayouts(this.getClass().getSimpleName());
		modelView.addObject("loginLogoutPortletURL", users.getDomainUrl(request) + LOGINLOGOUT_SEARCH_RESULTS);
		modelView.addObject("llp.columnsList", DataTableDynamicColumns.getDynamicColumns(layoutList));
		modelView.addObject("llp.columnDefsList", DataTableDynamicColumnDefs.getDynamicColumnDefs(layoutList));
	}
	
	@RequestMapping(LOGINLOGOUT_SEARCH_LAYOUT_BY_REST)
	public @ResponseBody String loginLogoutLayout(HttpServletRequest request)
	{
		return "";
		
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(LOGINLOGOUT_SEARCH_RESULTS)
	public @ResponseBody String loginLogoutSearch(HttpServletRequest request)
	{
		List<ILayouts> layoutList = boBase.layoutBo.getResultLayouts(this.getClass().getSimpleName());
		
		DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request);
		
		List<IUserLog> userLogList = (List<IUserLog>) boBase.portletBo.getUserLogList(dtParam, false).dataList;
		int userListCount = (int) boBase.portletBo.getUserLogList(dtParam, true).dataListCount;
		
		List<List<String>> mDataList = DataTableDynamicColumns.getJSONFromObject(dtParam, layoutList, userLogList.toArray(new Object[userLogList.size()]));
		
		DataTableObject dataTableObject = new DataTableObject();
		dataTableObject.setAaData(mDataList);
		dataTableObject.setiTotalDisplayRecords(userListCount);
		dataTableObject.setiTotalRecords(userListCount);
		
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		StringBuilder sb = new StringBuilder(gson.toJson(dataTableObject));
		return sb.toString();
	}
}
