package org.hbs.sg.web;

import java.util.HashSet;
import java.util.Set;

import org.hbs.admin.controller.ControllerBaseBo;
import org.hbs.admin.controller.UserParam;
import org.hbs.admin.model.IUsers.EUserStatus;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserDetailsServiceImpl extends ControllerBaseBo implements UserDetailsService
{
	
	private static final long	serialVersionUID	= 7087428004256710898L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());
	
	@SuppressWarnings("unchecked")
	@Override
	public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException
	{
		Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
		UserParam userParam = new UserParam();
		userParam.userId = userId;
		userParam.eUserStatus = EUserStatus.Validate;
		
		try
		{
			if (CommonValidator.isListFirstNotEmpty(userBo.getLoginUser(userParam).dataList))
			{
				Object[] object = (Object[]) userParam.dataList.iterator().next();
				
				for (Object userData : userParam.dataList)
				{
					grantedAuthorities.add(new SimpleGrantedAuthority(((Object[]) userData)[3].toString()));
				}
				return new org.springframework.security.core.userdetails.User(object[0].toString(), object[1].toString(), grantedAuthorities);
			}
		}
		catch (Exception excep)
		{
			logger.error(excep);
		}
		throw new UsernameNotFoundException("User Credentials Invalid Or User NOT registered");
	}
	
}
