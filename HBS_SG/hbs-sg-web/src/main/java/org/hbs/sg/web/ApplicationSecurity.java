package org.hbs.sg.web;

import org.hbs.admin.IAdminPath;
import org.hbs.sg.web.controller.IEduTelPath;
import org.hbs.util.IConstProperty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class ApplicationSecurity extends WebSecurityConfigurerAdapter implements IConstProperty, IAdminPath, IEduTelPath
{
	private static final long		serialVersionUID	= 1780469792513903551L;
	
	@Autowired
	private BCryptPasswordEncoder	bCryptPasswordEncoder;
	
	@Autowired
	private CustomLoginHandler		loginHandler;
	
	@Autowired
	private CustomLogoutHandler		logoutHandler;
	
	@Autowired
	private UserDetailsService		userDetailsService;
	
	/*
	 * In Honor of APJ Abdul Kalam
	 */
	@Override
	protected void configure(HttpSecurity http) throws Exception
	{
		http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.ALWAYS);
		http.sessionManagement().maximumSessions(2);
		http.authorizeRequests().antMatchers(PRE_CONSUMER_REGISTER + SLASH_STARS).permitAll();
		http.authorizeRequests().antMatchers(CONSUMER_REGISTER + SLASH_STARS).permitAll();
		http.authorizeRequests().antMatchers(CHANGE_PASSWORD + SLASH_STARS).permitAll();
		http.authorizeRequests().antMatchers(RESET_PASSWORD + SLASH_STARS).permitAll();
		http.authorizeRequests().antMatchers(FORGET_PASSWORD + SLASH_STARS).permitAll();
		
		http.authorizeRequests().antMatchers(ABOUT_US + SLASH_STARS).permitAll();
		http.authorizeRequests().antMatchers(CAREERS + SLASH_STARS).permitAll();
		http.authorizeRequests().antMatchers(RESOURCE_TEAM + SLASH_STARS).permitAll();
		http.authorizeRequests().antMatchers(GALLERY + SLASH_STARS).permitAll();
		http.authorizeRequests().antMatchers(TERM_CONDITION + SLASH_STARS).permitAll();
		http.authorizeRequests().antMatchers(CONTACT_US + SLASH_STARS).permitAll();
		http.authorizeRequests().antMatchers(WE_ARE_WITH + SLASH_STARS).permitAll();
		http.authorizeRequests().antMatchers(ONLINE_SUPPORT + SLASH_STARS).permitAll();
		
		http.authorizeRequests().antMatchers("/").permitAll().anyRequest().authenticated();
		http.httpBasic().realmName("APJ Abdul Kalam Education Application");
		http.csrf().disable();
		http.formLogin().loginPage(LOGIN).permitAll().failureUrl(LOGIN + "?error=true").usernameParameter("username").passwordParameter("password").defaultSuccessUrl(DASHBOARD, true)
				.successHandler(loginHandler);
		http.logout().logoutRequestMatcher(new AntPathRequestMatcher(LOGOUT)).logoutSuccessUrl("/").addLogoutHandler(logoutHandler);
		http.exceptionHandling().accessDeniedPage(ACCESS_DENIED).and().rememberMe().rememberMeParameter("remember");
	}
	
	@Override
	public void configure(WebSecurity web) throws Exception
	{
		web.ignoring().antMatchers("/resources/**", "/static/**", "/academia/**", "/assets/**", "/css/**", "/js/**", "/images/**");
	}
	
	@Autowired
	protected void configureGlobal(AuthenticationManagerBuilder authBuilder) throws Exception
	{
		authBuilder.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder);
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
