package org.hbs.sg.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath;
import org.hbs.admin.model.ILayouts;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.sg.model.exam.Assessment;
import org.hbs.sg.model.exam.IAssessment;
import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableDynamicColumnDefs;
import org.hbs.util.DataTableDynamicColumns;
import org.hbs.util.DataTableObject;
import org.hbs.util.DataTableParam;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class OnlineExamController extends SGControllerBaseBo implements IAdminPath, ISGPath
{
	private static final long	serialVersionUID	= 7745151361679723844L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());

	@RequestMapping(value = PRE_SEARCH_EXAM, method = RequestMethod.POST)
	public ModelAndView preOnlineExamSearch(HttpServletRequest request)
	{
		try
		{
			IUsers users = EUsers.getSessionUser(request);
			ModelAndView modelView = new ModelAndView(SEARCH_EXAM_PAGE);
			List<ILayouts> layoutList = layoutBo.getResultLayouts(Assessment.class.getSimpleName());
			modelView.addObject("searchOnlineExamUrl", users.getDomainUrl(request) + SEARCH_ASSESSMENT);
			modelView.addObject("columnsList", DataTableDynamicColumns.getDynamicColumns(layoutList));
			modelView.addObject("columnDefsList", DataTableDynamicColumnDefs.getDynamicColumnDefs(layoutList));

			return modelView;
		}
		catch (Exception excep)
		{
			excep.printStackTrace();
			logger.error("Error :: " + excep);
		}

		return null;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(SEARCH_ASSESSMENT)
	public @ResponseBody String searchAssessmenet(HttpServletRequest request)
	{
		List<ILayouts> layoutList = layoutBo.getResultLayouts(Assessment.class.getSimpleName());

		DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request);

		List<IAssessment> dataList = (List<IAssessment>) sgBo.getAssessmentList(dtParam, false).dataList;
		int dataListCount = (int) sgBo.getAssessmentList(dtParam, true).dataListCount;

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
