package org.hbs.sg.web;

import org.hbs.sender.VTLEmailFactory;
import org.hbs.sg.portlet.PortletProcessor;
import org.hbs.util.factory.PropFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.session.HttpSessionEventPublisher;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class WebMvcConfig extends WebMvcConfigurerAdapter
{
	@Bean
	public PropFactory getPropFactoryInstance()
	{
		return PropFactory.getInstance();
	}
	
	@Bean
	public VTLEmailFactory getVTLFactoryInstance()
	{
		return VTLEmailFactory.getInstance();
	}
	
	@Bean
	public HttpSessionEventPublisher httpSessionEventPublisher()
	{
		return new HttpSessionEventPublisher();
	}
	
	@Bean
	public BCryptPasswordEncoder passwordEncoder()
	{
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public PortletProcessor portletProcessor()
	{
		return new PortletProcessor();
	}
	
}