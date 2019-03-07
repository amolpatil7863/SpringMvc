package com.spring.securitywithjdbc.config;

import java.beans.PropertyVetoException;
import java.util.logging.Logger;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.mchange.v2.c3p0.ComboPooledDataSource;

@SuppressWarnings("deprecation")
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.spring.securitywithjdbc")
@PropertySource("classpath:persistence-mysql.properties")
public class CustomDispatcherConfig extends WebMvcConfigurerAdapter {

	public CustomDispatcherConfig() {
		super();
		System.out.println("CustomDispatcherConfig");
	}

	/*
	 * This configuration will use InternalResourceViewResolver to resolve jsp pages
	 * back to client user. All the pages will bse located in src/main/webapp/pages.
	 */
	/*
	 * @Bean public InternalResourceViewResolver getJspViewResolver() {
	 * 
	 * InternalResourceViewResolver internalResourceViewResolver = new
	 * InternalResourceViewResolver();
	 * 
	 * internalResourceViewResolver.setPrefix("/WEB-INF/");
	 * internalResourceViewResolver.setSuffix(".jsp");
	 * internalResourceViewResolver.setOrder(1); return
	 * internalResourceViewResolver;
	 * 
	 * }
	 * 
	 * @Bean DriverManagerDataSource getDataSource() { DriverManagerDataSource ds =
	 * new DriverManagerDataSource();
	 * ds.setDriverClassName("com.mysql.jdbc.Driver");
	 * ds.setUrl("jdbc:mysql://localhost:3306/userdata"); ds.setUsername("root");
	 * ds.setPassword("root");
	 * 
	 * return ds; }
	 * 
	 * @Bean public EmployeeDao getUserDao() {
	 * 
	 * System.out.println("DataSource:--"+ getDataSource().getUsername());
	 * 
	 * return new EmployeeDAOImpl(getDataSource()); }
	 */

	// set up variable to hold the properties

	@Autowired
	private Environment env;

	// set up a logger for diagnostics

	private Logger logger = Logger.getLogger(getClass().getName());

	// define a bean for ViewResolver

	@Bean
	public ViewResolver viewResolver() {
		System.out.println("viewResolver");
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();

		viewResolver.setPrefix("/WEB-INF/view/");
		viewResolver.setSuffix(".jsp");
		System.out.println("ViewReolver:::" + viewResolver);
		return viewResolver;
	}

	// define a bean for our security datasource

	@Bean
	public DataSource securityDataSource() {
		System.out.println("datasource");
		// create connection pool
		ComboPooledDataSource securityDataSource = new ComboPooledDataSource();

		// set the jdbc driver class

		try {
			securityDataSource.setDriverClass(env.getProperty("jdbc.driver"));
		} catch (PropertyVetoException exc) {
			throw new RuntimeException(exc);
		}

		// log the connection props
		// for sanity's sake, log this info
		// just to make sure we are REALLY reading data from properties file

		System.out.println(">>> jdbc.url=" + env.getProperty("jdbc.url"));
		System.out.println(">>> jdbc.user=" + env.getProperty("jdbc.user"));

		// set database connection props

		securityDataSource.setJdbcUrl(env.getProperty("jdbc.url"));
		securityDataSource.setUser(env.getProperty("jdbc.user"));
		securityDataSource.setPassword(env.getProperty("jdbc.password"));

		// set connection pool props

		securityDataSource.setInitialPoolSize(getIntProperty("connection.pool.initialPoolSize"));

		securityDataSource.setMinPoolSize(getIntProperty("connection.pool.minPoolSize"));

		securityDataSource.setMaxPoolSize(getIntProperty("connection.pool.maxPoolSize"));

		securityDataSource.setMaxIdleTime(getIntProperty("connection.pool.maxIdleTime"));

		return securityDataSource;
	}

	// need a helper method
	// read environment property and convert to int

	private int getIntProperty(String propName) {

		String propVal = env.getProperty(propName);

		// now convert to int
		int intPropVal = Integer.parseInt(propVal);

		return intPropVal;
	}

	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		System.out.println("defaut handler");
		configurer.enable();
	}

}
