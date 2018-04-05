package org.hbs.sg.web.controller;

import java.io.File;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.LinkedHashSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath;
import org.hbs.admin.document.DocumentFactory;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.sg.model.course.ChapterAttachments;
import org.hbs.sg.model.course.CourseAttachments;
import org.hbs.sg.model.course.IChapterAttachments;
import org.hbs.sg.model.course.IChapters;
import org.hbs.sg.model.course.ICourseAttachments;
import org.hbs.sg.model.course.ICourses;
import org.hbs.sg.model.course.ICourses.ECourseUploadType;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableDynamicColumnDefs;
import org.hbs.util.DataTableDynamicColumns;
import org.hbs.util.DataTableObject;
import org.hbs.util.DataTableParam;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.model.ILayouts;
import org.hbs.util.model.ILayouts.EDataTable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class EBooksController extends SGControllerBaseBo implements IAdminPath, ISGPath
{
	
	private static final long	serialVersionUID	= -4386900749828017871L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());
	
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
	
	@ModelAttribute("eBooksForm")
	public AssessmentForm createBooksForm()
	{
		return new AssessmentForm();
	}
	
	@RequestMapping(value = ADD_EBOOKS, method = RequestMethod.POST)
	public @ResponseBody String addEBooks(@RequestParam("eBooksForm") String formData, @RequestParam("docTypes") String[] docTypes,
			@RequestParam("uploadMultiPartFiles") MultipartFile[] multiPartFiles, HttpServletRequest request)
	{
		try
		{
			IUsers sessionUser = EUsers.getSessionUser(request);
			if (CommonValidator.isNotNullNotEmpty(sessionUser))
			{
				ObjectMapper mapper = new ObjectMapper();
				AssessmentForm eForm = mapper.readValue(formData, AssessmentForm.class);
				
				DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request);
				
				ENamed.EqualTo.param_AND(dtParam, "courseId", eForm.getCourseId());
				
				ICourses course = (ICourses) sgBo.getCourse(dtParam);
				
				if (CommonValidator.isNotNullNotEmpty(course))
				{
					IChapters chapter = course.getChapter(eForm.chapterId);
					if (CommonValidator.isNotNullNotEmpty(chapter))
					{
						uploadDocumentAttachment(docTypes, multiPartFiles, request, sessionUser, chapter);
						return sgBo.saveOrUpdate(chapter.getAttachments()) + "";
					}
					else
					{
						uploadDocumentAttachment(docTypes, multiPartFiles, request, sessionUser, course);
						return sgBo.saveOrUpdate(course.getAttachments()) + "";
					}
				}
				
			}
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		return "Failure";
	}
	
	private void uploadDocumentAttachment(String[] docTypes, MultipartFile[] multiPartFiles, HttpServletRequest request, IUsers sessionUsers, ICourses course) throws Exception
	{
		if (CommonValidator.isArrayFirstNotNull(multiPartFiles))
		{
			if (course.getAttachments() == null || course.getAttachments().isEmpty())
			{
				course.setAttachments(new LinkedHashSet<ICourseAttachments>(multiPartFiles.length));
			}
			
			String uploadSubFolderPath = null;
			ICourseAttachments attachment = null;
			for (MultipartFile multiPartFile : multiPartFiles)
			{
				uploadSubFolderPath = course.getCourseId() + File.separator + ECourseUploadType.EBooks.name();
				attachment = new CourseAttachments(multiPartFile, uploadSubFolderPath, ECourseUploadType.EBooks.name());
				attachment.setUploadResourceHandler(EResource.EBooks.name());
				attachment.setCreatedUser(sessionUsers);
				attachment.setCreatedDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
				attachment.setCourses(course);
				course.getAttachments().add(attachment);
			}
			DocumentFactory.getInstance().forUpload(sessionUsers.getProducer()).uploadFileInRepository(request, course.getAttachments());
		}
		
	}
	
	private void uploadDocumentAttachment(String[] docTypes, MultipartFile[] multiPartFiles, HttpServletRequest request, IUsers sessionUsers, IChapters chapter) throws Exception
	{
		if (CommonValidator.isArrayFirstNotNull(multiPartFiles))
		{
			if (chapter.getAttachments() == null || chapter.getAttachments().isEmpty())
			{
				chapter.setAttachments(new LinkedHashSet<IChapterAttachments>(multiPartFiles.length));
			}
			
			String uploadSubFolderPath = null;
			IChapterAttachments attachment = null;
			for (MultipartFile multiPartFile : multiPartFiles)
			{
				uploadSubFolderPath = chapter.getChapterId() + File.separator + ECourseUploadType.EBooks.name();
				attachment = new ChapterAttachments(multiPartFile, uploadSubFolderPath, ECourseUploadType.EBooks.name());
				attachment.setUploadResourceHandler(EResource.EBooks.name());
				attachment.setCreatedUser(sessionUsers);
				attachment.setCreatedDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
				attachment.setChapters(chapter);
				chapter.getAttachments().add(attachment);
			}
			DocumentFactory.getInstance().forUpload(sessionUsers.getProducer()).uploadFileInRepository(request, chapter.getAttachments());
		}
		
	}
}
