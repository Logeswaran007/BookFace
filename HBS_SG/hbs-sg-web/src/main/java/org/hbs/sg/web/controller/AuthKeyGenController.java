package org.hbs.sg.web.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath;
import org.hbs.admin.controller.UserParam;
import org.hbs.admin.model.ILayouts;
import org.hbs.admin.model.ILayouts.EDataTable;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUserType;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.edutel.model.AuthKeyGen;
import org.hbs.edutel.model.IAuthKeyGen;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableDynamicColumnDefs;
import org.hbs.util.DataTableDynamicColumns;
import org.hbs.util.DataTableObject;
import org.hbs.util.DataTableParam;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

@Controller
public class AuthKeyGenController extends SGControllerBaseBo implements IAdminPath, ISGPath
{
	private static final long	serialVersionUID	= 1580742167460496210L;
	private final Font			normalFont			= FontFactory.getFont("Calibri", BaseFont.IDENTITY_H, true, 10, Font.NORMAL);
	private final CustomLogger	logger				= new CustomLogger(this.getClass());
	
	@RequestMapping(value = ADD_AUTH_KEYGEN, method = RequestMethod.POST)
	public @ResponseBody String addAuthKeyGen(@RequestBody AuthKeyGenForm authKeyGenForm, HttpServletRequest request)
	{
		try
		{
			IUsers sessionUser = EUsers.getSessionUser(request);
			if (CommonValidator.isNotNullNotEmpty(sessionUser))
			{
				List<AuthKeyGen> authKeyList = new ArrayList<AuthKeyGen>(authKeyGenForm.getNoOfKeys());
				AuthKeyGen auth = null;
				for (int count = 0; count < authKeyGenForm.getNoOfKeys(); count++)
				{
					auth = new AuthKeyGen();
					auth.setScheme(authKeyGenForm.getAuthKey().getScheme());
					auth.setUsers(authKeyGenForm.getAuthKey().getUsers());
					auth.setSellingPrice(authKeyGenForm.getAuthKey().getSellingPrice());
					auth.setCreatedUser(sessionUser);
					auth.setCreatedDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
					authKeyList.add(auth);
				}
				
				return sgBo.saveOrUpdate(authKeyList) + "";
			}
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		return "Failure";
	}
	
	@ModelAttribute("authKeyGenForm")
	public AuthKeyGenForm createAuthKeyGenForm()
	{
		return new AuthKeyGenForm();
	}
	
	@RequestMapping(GENERATE_PDF)
	public @ResponseBody String generatePDF(HttpServletRequest request)
	{
		try
		{
			IUsers users = EUsers.getSessionUser(request);
			if (CommonValidator.isNotNullNotEmpty(users))
			{
				
				DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request);
				
				List<AuthKeyGen> authKeyGenList = sgBo.getAuthKeyGenList(dtParam);
				
				if (CommonValidator.isListFirstNotEmpty(authKeyGenList))
				{
					Document document = new Document(PageSize.A4);
					PdfWriter writer = null;
					PdfWriter bosWriter = null;
					String pdfFilePath = "";
					String fileName = UUID.randomUUID() + ".pdf";
					try
					{
						
						pdfFilePath = request.getServletContext().getRealPath("/content") + File.separator + request.getSession().getId();
						
						File pdfFile = new File(pdfFilePath);
						File fileToDownload = new File(pdfFilePath + File.separator + fileName);
						
						String virtualPath = "/content/" + request.getSession().getId() + File.separator + fileName;
						
						if (pdfFile.exists() == false)
						{
							pdfFile.mkdirs();
						}
						
						writer = PdfWriter.getInstance(document, new FileOutputStream(fileToDownload));
						bosWriter = PdfWriter.getInstance(document, new ByteArrayOutputStream());
						
						document.setMargins(108, 72, 36, 72);
						document.open();
						for (AuthKeyGen authKey : authKeyGenList)
						{
							
							PdfPTable pdfSerialKeyTable = new PdfPTable(1);
							pdfSerialKeyTable.setHorizontalAlignment(Element.ALIGN_LEFT);
							pdfSerialKeyTable.setTotalWidth(100);
							pdfSerialKeyTable.setWidths(new float[] { 0.5f });
							
							PdfPCell cell = new PdfPCell(new Phrase(authKey.getSerialKey(), normalFont));
							cell.setHorizontalAlignment(Element.ALIGN_LEFT);
							cell.setBorder(Rectangle.NO_BORDER);
							pdfSerialKeyTable.addCell(cell);
							
							cell = new PdfPCell(new Phrase(authKey.getSerialKey(), normalFont));
							cell.setHorizontalAlignment(Element.ALIGN_LEFT);
							cell.setBorder(Rectangle.NO_BORDER);
							pdfSerialKeyTable.addCell(cell);
							
							cell = new PdfPCell(new Phrase("Rs. " + authKey.getSellingPrice(), normalFont));
							cell.setHorizontalAlignment(Element.ALIGN_LEFT);
							cell.setBorder(Rectangle.NO_BORDER);
							pdfSerialKeyTable.addCell(cell);
							
							cell = new PdfPCell(new Phrase(authKey.getScheme().getSchemeName(), normalFont));
							cell.setHorizontalAlignment(Element.ALIGN_LEFT);
							cell.setBorder(Rectangle.NO_BORDER);
							pdfSerialKeyTable.addCell(cell);
							
							document.add(pdfSerialKeyTable);
							document.newPage();
						}
						return users.getProducer().getDomainContext() + virtualPath;
					}
					catch (DocumentException | IOException docExcep)
					{
						
						logger.error(docExcep);
					}
					
					finally
					{
						if (document != null)
							document.close();
						if (writer != null)
							writer.close();
						if (bosWriter != null)
							bosWriter.close();
					}
				}
			}
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		return "";
		
	}
	
	@RequestMapping(PRE_SEARCH_AUTH_KEYGEN)
	public ModelAndView preSearchAuthKeyGen(HttpServletRequest request)
	{
		try
		{
			IUsers users = EUsers.getSessionUser(request);
			ModelAndView modelView = new ModelAndView(SEARCH_AUTH_KEYGEN_PAGE);
			List<ILayouts> layoutList = layoutBo.getResultLayouts(AuthKeyGen.class.getSimpleName());
			
			modelView.addObject("searchAuthKeyGenUrl", users.getDomainUrl(request) + SEARCH_AUTH_KEYGEN);
			modelView.addObject("columnsList", DataTableDynamicColumns.getDynamicColumns(layoutList));
			modelView.addObject("columnDefsList", DataTableDynamicColumnDefs.getDynamicColumnDefs(layoutList));
			modelView.addObject("displayOrderList", EDataTable.Cols.getOrder(layoutList));
			
			// Add AuthKey Gen
			modelView.addObject("authKeyGenForm", createAuthKeyGenForm());
			modelView.addObject("employeeList", userBo.getComboBoxUserMap(new UserParam(request, EUserType.Employee)));
			modelView.addObject("schemeList", sgBo.getComboBoxSchemeMap(new SchemeParam(request)));
			
			return modelView;
		}
		catch (Exception excep)
		{
			logger.error(excep);
			return new ModelAndView(LOGIN);
		}
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(SEARCH_AUTH_KEYGEN)
	public @ResponseBody String searchAuthKeyGen(HttpServletRequest request)
	{
		try
		{
			List<ILayouts> layoutList = layoutBo.getResultLayouts(AuthKeyGen.class.getSimpleName());
			
			DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request, layoutList, AuthKeyGen.class, "AKG");
			
			List<IAuthKeyGen> dataList = (List<IAuthKeyGen>) sgBo.getAuthKeyGenList(dtParam, false).dataList;
			int dataListCount = (int) sgBo.getAuthKeyGenList(dtParam, true).dataListCount;
			
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
	
	@RequestMapping(VALIDATE_AUTH_KEYGEN)
	public @ResponseBody String validateAuthKeyGen(HttpServletRequest request)
	{
		return "true";
	}
}
