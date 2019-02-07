package com.spring.mvc.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import com.spring.mvc.dao.EmployeeDAOImpl;
import com.spring.mvc.dao.EmployeeDao;

@EnableWebMvc
@Configuration
@ComponentScan(basePackages = "com.spring.mvc")
public class CustomDispatcherConfig extends WebMvcConfigurerAdapter {
	
	public CustomDispatcherConfig() {
		super();
		System.out.println("CustomDispatcherConfig");
	}

	/*
	 * This configuration will use InternalResourceViewResolver to resolve jsp
	 * pages back to client user. All the pages will bse located in
	 * src/main/webapp/pages.
	 */
	@Bean
	public InternalResourceViewResolver getJspViewResolver() {

		InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();

		internalResourceViewResolver.setPrefix("/WEB-INF/");
		internalResourceViewResolver.setSuffix(".jsp");
		internalResourceViewResolver.setOrder(1);
		return internalResourceViewResolver;

	}
	
	@Bean
	DriverManagerDataSource getDataSource() {
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/userdata");
		ds.setUsername("root");
		ds.setPassword("root");

		return ds;
	}

	/*@Bean
	public EmployeeDao getUserDao() {
		
		System.out.println("DataSource:--"+ getDataSource().getUsername());
		
		return new EmployeeDAOImpl(getDataSource());
	}
*/	
	
}
