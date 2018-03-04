package org.hbs.sg.web;

import java.util.HashSet;
import java.util.Set;

import org.hbs.admin.controller.ControllerBaseBo;
import org.hbs.admin.controller.param.UserParam;
import org.hbs.admin.model.IUserRoles;
import org.hbs.admin.model.IUsers.EUserStatus;
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
	
	private static final long serialVersionUID = 7087428004256710898L;
	
	@Override
	public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException
	{
		Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
		UserParam userParam = new UserParam();
		userParam.userId = userId;
		userParam.eUserStatus = EUserStatus.Validate;
		
		try
		{
			userBo.getUser(userParam);
			
			for (IUserRoles userRole : userParam.user.getUserRoleses())
			{
				grantedAuthorities.add(new SimpleGrantedAuthority(userRole.getRoles().getRlRoleId()));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return new org.springframework.security.core.userdetails.User(userId, userParam.user.getUsUserPwd(), grantedAuthorities);
		
	}
	
}
