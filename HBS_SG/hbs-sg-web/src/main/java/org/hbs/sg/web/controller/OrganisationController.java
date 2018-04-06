package org.hbs.sg.web.controller;

import java.io.File;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath;
import org.hbs.admin.document.DocumentFactory;
import org.hbs.admin.model.IImage.EUploadType;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.sg.model.concern.IOrganisationAddress;
import org.hbs.sg.model.concern.IOrganisationAttachments;
import org.hbs.sg.model.concern.Organisation;
import org.hbs.sg.model.concern.OrganisationAddress;
import org.hbs.sg.model.concern.OrganisationAttachments;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableDynamicColumnDefs;
import org.hbs.util.DataTableDynamicColumns;
import org.hbs.util.DataTableObject;
import org.hbs.util.DataTableParam;
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
public class OrganisationController extends SGControllerBaseBo implements IAdminPath, ISGPath
{
	private static final long	serialVersionUID	= 1580742167460496210L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());
	
	@RequestMapping(value = ADD_ORGANISTATION, method = RequestMethod.POST)
	public @ResponseBody String addOrganisation(@RequestParam("organisationForm") String formData, @RequestParam("docTypes") String[] docTypes,
			@RequestParam("uploadMultiPartFiles") MultipartFile[] multiPartFiles, HttpServletRequest request)
	{
		try
		{
			IUsers sessionUser = EUsers.getSessionUser(request);
			if (CommonValidator.isNotNullNotEmpty(sessionUser))
			{
				ObjectMapper mapper = new ObjectMapper();
				OrganisationForm orgForm = mapper.readValue(formData, OrganisationForm.class);
				
				orgForm.organisation.setOrganisationId(orgForm.organisation.getBusinessKey());
				orgForm.organisation.setCreatedUser(sessionUser);
				orgForm.organisation.setCreatedDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
				orgForm.organisation.setCountry(orgForm.getCommunication().getCountry());
				orgForm.organisation.setProducer(sessionUser.getProducer());
				orgForm.communication.setOrganisation(orgForm.organisation);
				orgForm.permanent.setOrganisation(orgForm.organisation);
				orgForm.present.setOrganisation(orgForm.organisation);
				getFilteredAddressList(orgForm.organisation.getAddressList(), orgForm.communication);
				getFilteredAddressList(orgForm.organisation.getAddressList(), orgForm.permanent);
				getFilteredAddressList(orgForm.organisation.getAddressList(), orgForm.present);
				
				// Uploading Images and Documents and update user object via reference
				uploadDocumentAttachment(docTypes, multiPartFiles, request, sessionUser, orgForm.organisation);
				
				return sgBo.saveOrUpdate(orgForm.organisation) + "";
			}
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		return "Failure";
	}
	
	@ModelAttribute("organisationForm")
	public OrganisationForm createOrganisationForm()
	{
		return new OrganisationForm();
	}
	
	private boolean getFilteredAddressList(Set<IOrganisationAddress> addSet, IOrganisationAddress address)
	{
		if (CommonValidator.isNotNullNotEmpty(address.getAddressId()))
		{
			if (CommonValidator.isNotNullNotEmpty(address.getAddressType()))
			{
				if (CommonValidator.isNotNullNotEmpty(address.getEmail()) || CommonValidator.isNotNullNotEmpty(address.getPrimaryPhoneNo())
						|| CommonValidator.isNotNullNotEmpty(address.getAddressLine1()))
				{
					addSet.add(address);
					return true;
				}
			}
		}
		return false;
	}
	
	@RequestMapping(PRE_SEARCH_ORGANISTATION)
	public ModelAndView preSearchOrganisation(HttpServletRequest request)
	{
		try
		{
			IUsers sessionUser = EUsers.getSessionUser(request);
			if (CommonValidator.isNotNullNotEmpty(sessionUser))
			{
				ModelAndView modelView = new ModelAndView(SEARCH_ORGANISTATION_PAGE);
				List<ILayouts> layoutList = layoutBo.getResultLayouts(OrganisationAddress.class.getSimpleName());
				modelView.addObject("searchOrganisationUrl", sessionUser.getDomainUrl(request) + SEARCH_ORGANISTATION);
				modelView.addObject("columnsList", DataTableDynamicColumns.getDynamicColumns(layoutList));
				modelView.addObject("columnDefsList", DataTableDynamicColumnDefs.getDynamicColumnDefs(layoutList));
				modelView.addObject("displayOrderList", EDataTable.Cols.getOrder(layoutList));
				
				// Add Organisation Form OnLoad Values
				modelView.addObject("organisationForm", createOrganisationForm());
				modelView.addObject("countryList", userBo.getCountryList());
				modelView.addObject("stateList", userBo.getStateList(request));
				
				return modelView;
			}
		}
		catch (Exception excep)
		{
			logger.error(excep);
			
		}
		return new ModelAndView(LOGIN);
	}
	
	@RequestMapping(SEARCH_ORGANISTATION)
	public @ResponseBody String searchOrganisation(HttpServletRequest request)
	{
		List<ILayouts> layoutList = layoutBo.getResultLayouts(OrganisationAddress.class.getSimpleName());
		
		try
		{
			DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request, layoutList);
			
			List<?> dataList = sgBo.getOrganisationList(dtParam, false).dataList;
			int dataListCount = (int) sgBo.getOrganisationList(dtParam, true).dataListCount;
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
	
	private void uploadDocumentAttachment(String[] docTypes, MultipartFile[] multiPartFiles, HttpServletRequest request, IUsers sessionUsers, Organisation org) throws Exception
	{
		if (CommonValidator.isArrayFirstNotNull(multiPartFiles))
		{
			org.setAttachmentList(new LinkedHashSet<IOrganisationAttachments>(multiPartFiles.length));
			int idx = 0;
			String uploadSubFolderPath = null;
			IOrganisationAttachments attachment = null;
			for (MultipartFile multiPartFile : multiPartFiles)
			{
				uploadSubFolderPath = org.getOrganisationId() + File.separator + EUploadType.valueOf(docTypes[idx]);
				attachment = new OrganisationAttachments(multiPartFile, uploadSubFolderPath, docTypes[idx++]);
				attachment.setCreatedUser(sessionUsers);
				attachment.setCreatedDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
				attachment.setOrganisation(org);
				org.getAttachmentList().add(attachment);
			}
			DocumentFactory.getInstance().forUpload(sessionUsers.getProducer()).uploadFileInRepository(request, org.getAttachmentList());
		}
		
	}
	
}