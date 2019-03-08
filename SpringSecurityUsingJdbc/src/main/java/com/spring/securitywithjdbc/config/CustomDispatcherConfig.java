package com.spring.securitywithjdbc.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * @author Admin
 *
 */
@SuppressWarnings("deprecation")
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.spring.securitywithjdbc")
@PropertySource("classpath:database.properties")
public class CustomDispatcherConfig extends WebMvcConfigurerAdapter {

	public CustomDispatcherConfig() {
		super();
	}

	@Autowired
	private Environment env;

	@Bean(name = "dataSource")
	public DriverManagerDataSource dataSource() {
		DriverManagerDataSource driverManagerDataSource = new DriverManagerDataSource();
		driverManagerDataSource.setDriverClassName(env.getProperty("jdbc.driver"));
		driverManagerDataSource.setUrl(env.getProperty("jdbc.url"));
		driverManagerDataSource.setUsername(env.getProperty("jdbc.user"));
		driverManagerDataSource.setPassword(env.getProperty("jdbc.password"));
		System.out.println("database url  >>" + driverManagerDataSource.getUrl());
		System.out.println("driver class>>" + driverManagerDataSource.getConnectionProperties());
		return driverManagerDataSource;
	}

	/**
	 * @return view resolver object
	 */
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();

		viewResolver.setPrefix("/WEB-INF/view/");
		viewResolver.setSuffix(".jsp");
		System.out.println("ViewReolver:::" + viewResolver);
		return viewResolver;
	}

	/*
	 * default handler
	 */
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		System.out.println("defaut handler>>>>>");
		configurer.enable();
	}

}
