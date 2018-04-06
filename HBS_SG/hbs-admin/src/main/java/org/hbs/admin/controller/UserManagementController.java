package org.hbs.admin.controller;

import java.io.File;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.hbs.admin.IAdminPath;
import org.hbs.admin.controller.PasswordControllerBase.Security;
import org.hbs.admin.document.DocumentFactory;
import org.hbs.admin.model.IAddress.AddressType;
import org.hbs.admin.model.IImage.EUploadType;
import org.hbs.admin.model.IMessages.EAddress;
import org.hbs.admin.model.IRoles.ERole;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUserType;
import org.hbs.admin.model.IUsers.EUsers;
import org.hbs.admin.model.IUsersAddress;
import org.hbs.admin.model.IUsersAttachments;
import org.hbs.admin.model.Users;
import org.hbs.admin.model.UsersAddress;
import org.hbs.admin.model.UsersAttachments;
import org.hbs.sender.VTLEmailFactory;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomException;
import org.hbs.util.CustomLogger;
import org.hbs.util.DataTableDynamicColumnDefs;
import org.hbs.util.DataTableDynamicColumns;
import org.hbs.util.DataTableObject;
import org.hbs.util.DataTableParam;
import org.hbs.util.IParam.ENamed;
import org.hbs.util.IParam.IWrap;
import org.hbs.util.model.ILayouts;
import org.hbs.util.model.ILayouts.EDataTable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/**
 * This class is used for search,add ,update,activate/deactivate user
 *
 * @author Ananth
 */
@Controller
public class UserManagementController extends ControllerBaseBo implements IAdminPath
{
	private static final long	serialVersionUID	= 7482526278838998688L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());
	
	@RequestMapping(value = ADD_USER_DETAILS, method = RequestMethod.POST)
	public @ResponseBody String addUserInformation(@RequestParam("userForm") String formData, @RequestParam("docTypes") String[] docTypes,
			@RequestParam("uploadMultiPartFiles") MultipartFile[] multiPartFiles, HttpServletRequest request)
	{
		try
		{
			IUsers sessionUser = EUsers.getSessionUser(request);
			
			if (CommonValidator.isNotNullNotEmpty(sessionUser))
			{
				ObjectMapper mapper = new ObjectMapper();
				UserForm userForm = mapper.readValue(formData, UserForm.class);
				
				UserParam userParam = new UserParam(UsersAddress.class, "UA");
				
				ENamed.EqualTo.param_AND(userParam, "email", userForm.users.getCommunicationAddress().getEmail(), IWrap.ST_BRACE1);
				ENamed.EqualTo.param_OR(userParam, "mobileNo", userForm.users.getCommunicationAddress().getMobileNo(), IWrap.ED_BRACE1);
				ENamed.EqualTo.param_AND(userParam, "addressType", AddressType.CommunicationAddress.name());
				
				if (CommonValidator.isNotNullNotEmpty(userBo.getUserByEmailOrMobileNo(userParam)))
				{
					return "false";
				}
				else
				{
					try
					{
						userForm.users.setCreatedUser(sessionUser);
						userForm.users.setCreatedDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
						userForm.users.setProducer(sessionUser.getProducer());
						userForm.users.setCountry(userForm.communication.getCountry());
						userForm.users.setUsUserPwd(new BCryptPasswordEncoder().encode(userForm.users.getUsUserPwd()));
						userForm.users.setUsFolderToken(UUID.randomUUID().toString());
						
						if (CommonValidator.isNotNullNotEmpty(userForm.communication))
						{
							userForm.communication.setUsers(userForm.users);
							getFilteredAddressList(userForm.users.getAddressList(), userForm.communication);
						}
						
						if (CommonValidator.isNotNullNotEmpty(userForm.permanent))
						{
							userForm.permanent.setUsers(userForm.users);
							getFilteredAddressList(userForm.users.getAddressList(), userForm.permanent);
						}
						
						if (CommonValidator.isNotNullNotEmpty(userForm.present))
						{
							userForm.present.setUsers(userForm.users);
							getFilteredAddressList(userForm.users.getAddressList(), userForm.present);
						}
						
						// Uploading Images and Documents and update user object via reference
						uploadDocumentAttachment(docTypes, multiPartFiles, request, sessionUser, userForm.users);
						
						if (userBo.saveOrUpdate(userForm.users, userForm.getBaseRoles()))
						{
							StringBuffer tokenURL = new StringBuffer();
							tokenURL.append(userForm.users.getProducer().getDomainContext());
							tokenURL.append(RESET_PASSWORD + "/" + Security.Token.generate(userBo, userForm.users, false));
							
							Map<String, Object> dataMap = new LinkedHashMap<String, Object>(0);
							dataMap.put("user", userForm.users);
							dataMap.put("tokenURL", tokenURL);
							
							EAddress.To.append(userForm.users.getCommunicationAddress());
							VTLEmailFactory.getInstance().sendEmail(userForm.users.getProducer(), userForm.getTemplate(), dataMap, EAddress.To);
							
							EAddress.To.clear();
							
							EAddress.To.append(userForm.users.getProducer().getUsers().getCommunicationAddress());
							VTLEmailFactory.getInstance().sendEmail(userForm.users.getProducer(), EUserTemplate.User_Create_Admin, dataMap, EAddress.To);
							
						}
						else
						{
							throw new CustomException();
						}
					}
					catch (Exception excep)
					{
						logger.error(excep);
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
	
	private boolean getFilteredAddressList(Set<IUsersAddress> addSet, IUsersAddress address)
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
	
	@ModelAttribute("userForm")
	public UserForm getUserForm(HttpServletRequest request, EUserType userType)
	{
		try
		{
			if (!CommonValidator.isNotNullNotEmpty(userType))
				userType = EUserType.User;
			return new UserForm(userBo.getProducers(request), userType);
		}
		catch (InstantiationException | IllegalAccessException excep)
		{
			logger.error(excep);
		}
		return null;
	}
	
	@RequestMapping(value = CONSUMER_REGISTER, method = RequestMethod.POST)
	public String justInConsumerRegistration(@ModelAttribute("userForm") UserForm userForm, final RedirectAttributes redirectAttributes)
	{
		UserParam userParam = new UserParam(UsersAddress.class, "UA");
		
		ENamed.EqualTo.param_AND(userParam, "UA.email", userForm.users.getCommunicationAddress().getEmail(), IWrap.ST_BRACE1);
		ENamed.EqualTo.param_OR(userParam, "UA.mobileNo", userForm.users.getCommunicationAddress().getMobileNo(), IWrap.ED_BRACE1);
		ENamed.EqualTo.param_AND(userParam, "UA.addressType", AddressType.CommunicationAddress.name());
		
		if (CommonValidator.isNotNullNotEmpty(userBo.getUserByEmailOrMobileNo(userParam)))
		{
			redirectAttributes.addFlashAttribute("css", "danger");
			redirectAttributes.addFlashAttribute("message", "Oops... You had already registered. Please contact administrator.");
		}
		else
		{
			try
			{
				userForm.users.setUsUsersType(EBean.Consumer.name());
				userForm.users.setUsEmployeeId(userForm.users.getBusinessKey());
				userForm.users.getCommunicationAddress().setUsers(userForm.users);
				userForm.users.setUsUserPwd(new BCryptPasswordEncoder().encode(userForm.users.getUsUserPwd()));
				userForm.users.setUsFolderToken(UUID.randomUUID().toString());
				
				StringBuffer activateToken = Security.Token.generate(userBo, userForm.users, false);
				
				if (userBo.saveOrUpdate(userForm.users, ERole.Consumer.name()))
				{
					redirectAttributes.addFlashAttribute("css", "success");
					redirectAttributes.addFlashAttribute("message", "Hi " + userForm.users.getUsUserName() + ", You had Registered successfully. Please check your email for activation link.");
					
					StringBuffer tokenURL = new StringBuffer();
					tokenURL.append(userForm.users.getProducer().getDomainContext());
					tokenURL.append(RESET_PASSWORD + "/" + activateToken);
					
					Map<String, Object> dataMap = new LinkedHashMap<String, Object>(0);
					dataMap.put("user", userForm.users);
					dataMap.put("tokenURL", tokenURL);
					
					EAddress.To.append(userForm.users.getCommunicationAddress());
					VTLEmailFactory.getInstance().sendEmail(userForm.users.getProducer(), EUserTemplate.User_Create_Consumer, dataMap, EAddress.To);
					
					EAddress.To.clear();
					
					EAddress.To.append(userForm.users.getProducer().getUsers().getCommunicationAddress());
					VTLEmailFactory.getInstance().sendEmail(userForm.users.getProducer(), EUserTemplate.User_Create_Admin, dataMap, EAddress.To);
					
				}
				else
				{
					throw new CustomException();
				}
			}
			catch (Exception excep)
			{
				logger.error(excep);
				
			}
		}
		return REDIRECT + PRE_CONSUMER_REGISTER;
	}
	
	@RequestMapping(value = PRE_CONSUMER_REGISTER, method = RequestMethod.GET)
	public ModelAndView preConsumerRegistration(HttpServletRequest request)
	{
		try
		{
			ModelAndView modelView = new ModelAndView(CONSUMER_REGISTER_PAGE);
			modelView.addObject("userForm", getUserForm(request, EUserType.Consumer));
			
			return modelView;
		}
		catch (Exception excep)
		{
			logger.error(excep);
			return new ModelAndView(CONSUMER_REGISTER_PAGE);
		}
	}
	
	@RequestMapping(value = PRE_SEARCH_USER, method = RequestMethod.POST)
	public ModelAndView preSearchUser(HttpServletRequest request, @PathVariable String userType)
	{
		
		try
		{
			IUsers sessionUser = EUsers.getSessionUser(request);
			if (CommonValidator.isNotNullNotEmpty(sessionUser))
			{
				
				ModelAndView modelView = new ModelAndView(SEARCH_USER_PAGE);
				List<ILayouts> layoutList = layoutBo.getResultLayouts(UsersAddress.class.getSimpleName(), userType);
				modelView.addObject("searchUserUrl", sessionUser.getDomainUrl(request) + SEARCH_USER + "/" + userType);
				modelView.addObject("columnsList", DataTableDynamicColumns.getDynamicColumns(layoutList));
				modelView.addObject("columnDefsList", DataTableDynamicColumnDefs.getDynamicColumnDefs(layoutList));
				modelView.addObject("displayOrderList", EDataTable.Cols.getOrder(layoutList));
				
				modelView.addObject("userForm", getUserForm(request, EUserType.valueOf(userType)));
				modelView.addObject("countryList", userBo.getCountryList());
				modelView.addObject("stateList", userBo.getStateList(request));
				
				return modelView;
			}
		}
		catch (Exception excep)
		{
			logger.error(excep);
			
		}
		return null;
		
	}
	
	private void uploadDocumentAttachment(String[] docTypes, MultipartFile[] multiPartFiles, HttpServletRequest request, IUsers sessionUsers, Users user) throws Exception
	{
		if (CommonValidator.isArrayFirstNotNull(multiPartFiles))
		{
			user.setAttachmentList(new LinkedHashSet<IUsersAttachments>(multiPartFiles.length));
			int idx = 0;
			String uploadSubFolderPath = null;
			IUsersAttachments attachment = null;
			for (MultipartFile multiPartFile : multiPartFiles)
			{
				uploadSubFolderPath = user.getUsFolderToken() + File.separator + EUploadType.valueOf(docTypes[idx]);
				attachment = new UsersAttachments(multiPartFile, uploadSubFolderPath, docTypes[idx++]);
				attachment.setCreatedUser(sessionUsers);
				attachment.setCreatedDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
				attachment.setUsers(user);
				user.getAttachmentList().add(attachment);
			}
			DocumentFactory.getInstance().forUpload(sessionUsers.getProducer()).uploadFileInRepository(request, user.getAttachmentList());
		}
		
	}
	
	@RequestMapping(value = SEARCH_USER + "/{userType}", method = RequestMethod.POST)
	public @ResponseBody String userSearch(HttpServletRequest request, @PathVariable String userType)
	{
		try
		{
			IUsers sessionUser = EUsers.getSessionUser(request);
			
			if (CommonValidator.isNotNullNotEmpty(sessionUser))
			{
				List<ILayouts> layoutList = layoutBo.getResultLayouts(UsersAddress.class.getSimpleName(), userType);
				DataTableParam dtParam = DataTableParam.getDataTableParamsFromRequest(request, layoutList);
				dtParam.addBean(UsersAddress.class, "UA");
				
				ENamed.EqualTo.param_AND(dtParam, "UA.users.usUsersType", userType);
				
				List<?> dataList = userBo.getUsersList(dtParam, false).dataList;
				int dataListCount = (int) userBo.getUsersList(dtParam, true).dataListCount;
				
				List<List<String>> mDataList = DataTableDynamicColumns.getJSONFromObjectByCols(dtParam, layoutList, dataList);
				
				DataTableObject dataTableObject = new DataTableObject();
				dataTableObject.setAaData(mDataList);
				dataTableObject.setiTotalDisplayRecords(dataListCount);
				dataTableObject.setiTotalRecords(dataListCount);
				
				Gson gson = new GsonBuilder().setPrettyPrinting().create();
				StringBuilder sb = new StringBuilder(gson.toJson(dataTableObject));
				return sb.toString();
			}
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		return "";
	}
	
}
