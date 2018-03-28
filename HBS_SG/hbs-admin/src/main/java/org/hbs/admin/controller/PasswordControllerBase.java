package org.hbs.admin.controller;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.UUID;

import org.apache.commons.codec.binary.Base64;
import org.hbs.admin.bo.UserBo;
import org.hbs.admin.model.IUsers;
import org.hbs.admin.model.IUsers.EUserStatus;
import org.hbs.util.CommonValidator;
import org.hbs.util.EnumInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;

public abstract class PasswordControllerBase extends ControllerBaseBo
{
	public enum Security implements EnumInterface
	{
		Token;
		
		public StringBuffer generate(UserBo userBo, IUsers user, boolean isUpdate)
		{
			String usToken = UUID.randomUUID().toString();
			user.setUsToken(usToken);
			user.setUsTokenExpiryDate(new Timestamp(System.currentTimeMillis()));
			usToken = Base64.encodeBase64String((user.getCommunicationAddress().getEmail() + "#" + user.getUsToken()).getBytes());
			
			if (isUpdate)
			{
				if (userBo.saveOrUpdate(user) == false)
					return null;
			}
			
			return new StringBuffer(usToken).reverse();
		}
		
		public EUserStatus isPasswordResetRecently(IUsers user)
		{
			if (user.getUsToken() == null || user.isAdmin())
			{
				return EUserStatus.Default;
			}
			else if ((Calendar.getInstance().getTime().getTime() - user.getUsUserPwdModDate().getTime()) <= 6000000)
			{
				return EUserStatus.RecentPassword;
			}
			else if ((Calendar.getInstance().getTime().getTime() - user.getUsTokenExpiryDate().getTime()) <= 6000000)
			{
				return EUserStatus.RecentToken;
			}
			else
			{
				return EUserStatus.Default;
			}
		}
		
		public UserParam validate(UserBo userBo, String usToken) throws Exception
		{
			return validate(userBo, usToken, 6000000);
		}
		
		public UserParam validate(UserBo userBo, String usToken, int expiryDuration) throws Exception
		{
			usToken = new StringBuffer(usToken).reverse().toString();
			usToken = new String(Base64.decodeBase64(usToken));
			
			String token[] = usToken.split("#");
			
			UserParam userParam = new UserParam();
			userParam.userId = token[0];
			userBo.getUser(userParam);
			
			if (CommonValidator.isNotNullNotEmpty(userParam.user))
			{
				if (CommonValidator.isEqual(token[1], userParam.user.getUsToken()))
					if ((Calendar.getInstance().getTime().getTime() - userParam.user.getUsTokenExpiryDate().getTime()) <= expiryDuration)
					{
						return userParam;
					}
			}
			return null;
		}
	}
	
	private static final long		serialVersionUID	= 515197817034322319L;
	
	@Autowired
	protected UserDetailsService	userDetailsService;
	
	public PasswordControllerBase()
	{
		super();
	}
	
	public UserDetailsService getUserDetailsService()
	{
		return userDetailsService;
	}
	
	public void setUserDetailsService(UserDetailsService userDetailsService)
	{
		this.userDetailsService = userDetailsService;
	}
	
}