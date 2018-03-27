package org.hbs.sg.web;

import org.hbs.sender.VTLEmailFactory;
import org.hbs.sg.portlet.PortletProcessor;
import org.hbs.util.IConstProperty;
import org.hbs.util.bo.UtilBo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.session.HttpSessionEventPublisher;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class WebMvcConfig extends WebMvcConfigurerAdapter implements IConstProperty
{
	private static final long	serialVersionUID	= 371374334210712626L;
	
	@Autowired
	private UtilBo				utilBo;
	
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
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry)
	{
		for (Object[] object : utilBo.getContextDocBasePathList())
		{
			registry.addResourceHandler(SLASH + object[0].toString().trim() + SLASH_STARS).addResourceLocations(FILE + object[1].toString().trim() + SLASH);
		}
	}
	
}