package org.hbs.sg.web.controller;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath;
import org.hbs.admin.bo.UserBo;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.sg.model.AlertsAndNotifications;
import org.hbs.sg.model.IAlertsAndNotifications;
import org.hbs.sg.model.IAlertsAndNotifications.EMessageStatus;
import org.hbs.sg.web.bo.SGBo;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableDynamicColumnDefs;
import org.hbs.util.DataTableDynamicColumns;
import org.hbs.util.DataTableObject;
import org.hbs.util.DataTableParam;
import org.hbs.util.bo.LayoutBo;
import org.hbs.util.model.ILayouts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class InformationAlertController implements IAdminPath, ISGPath
{
	
	private static final long	serialVersionUID	= 7160427283537267423L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());

	
	@Autowired
	protected LayoutBo			layoutBo;
	
	@Autowired
	protected SGBo				sgBo;
	
	@Autowired
	protected UserBo			userBo;
	
	@RequestMapping(value = ADD_INFORMATION, method = RequestMethod.POST)
	public @ResponseBody String addinformation(@RequestBody InformationAlertForm infoForm, HttpServletRequest request)
	{
		try
		{
			IUsers users = EUsers.getSessionUser(request);
			
			if (CommonValidator.isNotNullNotEmpty(users))
			{
				
				infoForm.getAlerts().setCreatedUser(users);
				infoForm.getAlerts().setCreatedDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
				
				return sgBo.saveOrUpdate(infoForm.getAlerts()) + "";
			}
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		return "Failure";
	}
	
	@ModelAttribute("informationAlertForm")
	private InformationAlertForm createInformationAlertForm()
	{
		
		return new InformationAlertForm();
		
	}
	
	@RequestMapping(PRE_SEARCH_INFORMATION_ALERT)
	public @ResponseBody ModelAndView preSearchInformationAlert(HttpServletRequest request)
	{
		try
		{
			IUsers users = EUsers.getSessionUser(request);
			ModelAndView modelView = new ModelAndView(INFORMATION_ALERT_PAGE);
			List<ILayouts> layoutList = layoutBo.getResultLayouts(AlertsAndNotifications.class.getSimpleName());
			modelView.addObject("searchAlertsAndNotificationsUrl", users.getDomainUrl(request) + INFORMATION_ALERT);
			modelView.addObject("columnsList", DataTableDynamicColumns.getDynamicColumns(layoutList));
			modelView.addObject("columnDefsList", DataTableDynamicColumnDefs.getDynamicColumnDefs(layoutList));
			
			// InformationAlert Form
			modelView.addObject("informationAlertForm", createInformationAlertForm());
			modelView.addObject("typeList", EMessageStatus.getTypeList());
			
			return modelView;
		}
		catch (Exception excep)
		{
			logger.error(excep);
			return new ModelAndView(LOGIN);
		}
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(INFORMATION_ALERT)
	public @ResponseBody String searchInformationAlert(HttpServletRequest request)
	{
		List<ILayouts> layoutList = layoutBo.getResultLayouts(AlertsAndNotifications.class.getSimpleName());
		
		DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request);
		
		List<IAlertsAndNotifications> dataList = (List<IAlertsAndNotifications>) sgBo.getInformationAlertList(dtParam, false).dataList;
		int dataListCount = (int) sgBo.getInformationAlertList(dtParam, true).dataListCount;
		
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
