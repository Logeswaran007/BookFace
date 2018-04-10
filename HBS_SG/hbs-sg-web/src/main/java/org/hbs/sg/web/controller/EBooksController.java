package org.hbs.sg.web.controller;

import java.io.File;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath;
import org.hbs.admin.document.DocumentFactory;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.sg.model.course.ChapterAttachments;
import org.hbs.sg.model.course.CourseAttachments;
import org.hbs.sg.model.course.CourseGroup;
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
import org.springframework.web.bind.annotation.PathVariable;
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
			List<ILayouts> layoutCourseList = layoutBo.getResultLayouts(CourseAttachments.class.getSimpleName());
			modelView.addObject("searchCourseEBooksUrl", users.getDomainUrl(request) + SEARCH_COURSE_EBOOKS);
			modelView.addObject("columnsCourseList", DataTableDynamicColumns.getDynamicColumns(layoutCourseList));
			modelView.addObject("columnCourseDefsList", DataTableDynamicColumnDefs.getDynamicColumnDefs(layoutCourseList));
			modelView.addObject("displayOrderCourseList", EDataTable.Cols.getOrder(layoutCourseList));

			List<ILayouts> layoutChapterList = layoutBo.getResultLayouts(ChapterAttachments.class.getSimpleName());
			modelView.addObject("searchChapterEBooksUrl", users.getDomainUrl(request) + SEARCH_CHAPTER_EBOOKS);
			modelView.addObject("columnsChapterList", DataTableDynamicColumns.getDynamicColumns(layoutChapterList));
			modelView.addObject("columnChapterDefsList", DataTableDynamicColumnDefs.getDynamicColumnDefs(layoutChapterList));
			modelView.addObject("displayOrderChapterList", EDataTable.Cols.getOrder(layoutChapterList));

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

	@RequestMapping(SEARCH_COURSE_EBOOKS)
	public @ResponseBody String searchCourseEBooks(HttpServletRequest request)
	{

		List<ILayouts> layoutList = layoutBo.getResultLayouts(CourseAttachments.class.getSimpleName());
		try
		{

			DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request, layoutList);

			List<?> dataList = assessmentBo.getCourseAttachmentList(dtParam, false).dataList;
			int dataListCount = (int) assessmentBo.getCourseAttachmentList(dtParam, true).dataListCount;

			List<List<String>> mDataList = DataTableDynamicColumns.getJSONFromObjectByCols(dtParam, layoutList, dataList);

			DataTableObject dataTableObject = new DataTableObject();
			dataTableObject.setAaData(mDataList);
			dataTableObject.setiTotalDisplayRecords(dataListCount);
			dataTableObject.setiTotalRecords(dataListCount);

			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			StringBuilder sb = new StringBuilder(gson.toJson(dataTableObject));
			return sb.toString();

		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		return null;
	}

	@RequestMapping(SEARCH_CHAPTER_EBOOKS)
	public @ResponseBody String searchChapterEBooks(HttpServletRequest request)
	{
		List<ILayouts> layoutList = layoutBo.getResultLayouts(ChapterAttachments.class.getSimpleName());
		try
		{
			DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request, layoutList);

			List<?> dataList = assessmentBo.getChapterAttachmentList(dtParam, false).dataList;
			int dataListCount = (int) assessmentBo.getChapterAttachmentList(dtParam, true).dataListCount;

			List<List<String>> mDataList = DataTableDynamicColumns.getJSONFromObjectByCols(dtParam, layoutList, dataList);
			DataTableObject dataTableObject = new DataTableObject();
			dataTableObject.setAaData(mDataList);
			dataTableObject.setiTotalDisplayRecords(dataListCount);
			dataTableObject.setiTotalRecords(dataListCount);

			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			StringBuilder sb = new StringBuilder(gson.toJson(dataTableObject));
			return sb.toString();

		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		return null;
	}

	@ModelAttribute("eBooksForm")
	public EBooksForm createBooksForm()
	{
		return new EBooksForm();
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
				EBooksForm eForm = mapper.readValue(formData, EBooksForm.class);

				DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request);

				ENamed.EqualTo.param_AND(dtParam, "courseId", eForm.getCourseId());

				ICourses course = (ICourses) sgBo.getCourse(dtParam);

				if (CommonValidator.isNotNullNotEmpty(course))
				{

					IChapters chapter = course.getChapter(eForm.chapterId);
					if (CommonValidator.isNotNullNotEmpty(chapter) && (CommonValidator.isNotEqual(chapter.getChapterName(), "AllChapters")))
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

	@SuppressWarnings("unchecked")
	@RequestMapping(value = VIEW_COURSE_EBOOKS_PDF, method = RequestMethod.POST)
	public @ResponseBody String viewCourseEBooksPDF(HttpServletRequest request, @PathVariable String courseId)
	{
		try
		{
			IUsers sessionUser = EUsers.getSessionUser(request);
			DataTableParam dtParam = new DataTableParam();
			int courseAttachment = Integer.valueOf(courseId);
			ENamed.EqualTo.param_AND(dtParam, "autoId", courseAttachment);

			List<ICourseAttachments> attachmentList = (List<ICourseAttachments>) sgBo.getCourseAttachmentList(dtParam, false).dataList;
			Set<ICourseAttachments> attachmentSet = new LinkedHashSet<ICourseAttachments>();
			attachmentSet.addAll(attachmentList);
			String path = "";
			if (CommonValidator.isSetFirstNotEmpty(attachmentSet))
			{
				DocumentFactory.getInstance().forDownload(sessionUser.getProducer()).downloadFileFromRepository(request, attachmentSet);

				for (ICourseAttachments att : attachmentSet)
				{
					return path = att.getUploadFileVirtualURL().toString();
				}
			}
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		return "";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = VIEW_CHAPTER_EBOOKS_PDF, method = RequestMethod.POST)
	public @ResponseBody String viewChapterEBooksPDF(HttpServletRequest request, @PathVariable String chapterId)
	{
		try
		{
			IUsers sessionUser = EUsers.getSessionUser(request);
			DataTableParam dtParam = new DataTableParam();
			int ChapterAttachments = Integer.valueOf(chapterId);
			ENamed.EqualTo.param_AND(dtParam, "autoId", ChapterAttachments);

			List<IChapterAttachments> attachmentList = (List<IChapterAttachments>) assessmentBo.getChapterAttachmentList(dtParam, false).dataList;
			Set<IChapterAttachments> attachmentSet = new LinkedHashSet<IChapterAttachments>();
			attachmentSet.addAll(attachmentList);

			String path = "";
			if (CommonValidator.isSetFirstNotEmpty(attachmentSet))
			{
				DocumentFactory.getInstance().forDownload(sessionUser.getProducer()).downloadFileFromRepository(request, attachmentSet);

				for (IChapterAttachments attach : attachmentSet)
				{
					return path = attach.getUploadFileVirtualURL().toString();
				}

			}

		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		return "";

	}

	@RequestMapping(PRE_E_BOOKS_VIEW)
	public @ResponseBody ModelAndView PreEBooksView(HttpServletRequest request, @PathVariable String page) throws Exception
	{
		IUsers users = EUsers.getSessionUser(request);
		ModelAndView modelAndView = new ModelAndView("/content/" + page);
		DataTableParam dtParam = new DataTableParam(CourseGroup.class,"CG");
		String producerId = users.getProducer().getProducerId();
		List<String> stringGroupNameList = new ArrayList<String>();
		if (CommonValidator.isNotNullNotEmpty(producerId))
		{

			ENamed.EqualTo.param_AND(dtParam, "CG.producer.producerId", producerId);
			List<String> courseGroupDescriptionList = (List<String>) assessmentBo.getCourseGroupDescriptionList(dtParam);
			if (CommonValidator.isListFirstNotEmpty(courseGroupDescriptionList))
			{
				for (String groupName : courseGroupDescriptionList)

					stringGroupNameList.add(groupName);
				modelAndView.addObject("courseGroupList", stringGroupNameList);
			}

		}

		return modelAndView;
	}
}
