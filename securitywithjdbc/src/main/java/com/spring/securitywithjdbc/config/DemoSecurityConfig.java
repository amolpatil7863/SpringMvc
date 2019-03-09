package com.spring.securitywithjdbc.config;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

/**
 * @author Admin Spring Security Configuration
 */
@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {

	public final static String USERBYNAMEQUERY = "select user_name, password, enabled from USERS where user_name = ?";
	public final static String USERBYAUTHORITYQUERY = "select u.user_name, ur.authority from USERS u, USERS_ROLES ur where u.user_id = ur.user_id and u.user_name = ?";

	@Autowired
	private DataSource securityDataSource;

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.springframework.security.config.annotation.web.configuration.
	 * WebSecurityConfigurerAdapter#configure(org.springframework.security.config.
	 * annotation.authentication.builders.AuthenticationManagerBuilder)
	 */
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

		/* Handling in memory authentication */
		/*
		 * auth.inMemoryAuthentication().withUser("amol").password("test123").roles(
		 * "EMPLOYEE");
		 * auth.inMemoryAuthentication().withUser("steve").password("test123").roles(
		 * "ADMIN");
		 * auth.inMemoryAuthentication().withUser("mark").password("test123").roles(
		 * "MANAGER");
		 */

		/* get username password and role from database using jdbc Authentication */

		auth.jdbcAuthentication().dataSource(securityDataSource).usersByUsernameQuery(USERBYNAMEQUERY)
				.authoritiesByUsernameQuery(USERBYAUTHORITYQUERY);

	}

	@SuppressWarnings("deprecation")
	@Bean
	public static NoOpPasswordEncoder passwordEncoder() {
		System.out.println("No pass Encoder::::::::::");
		return (NoOpPasswordEncoder) NoOpPasswordEncoder.getInstance();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.springframework.security.config.annotation.web.configuration.
	 * WebSecurityConfigurerAdapter#configure(org.springframework.security.config.
	 * annotation.web.builders.HttpSecurity)
	 */
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		// Spring Security configuration
		try {
			http.authorizeRequests().antMatchers("/").hasAuthority("ROLE_EMPLOYEE").antMatchers("/leaders/**")
					.hasAuthority("ROLE_MANAGER").antMatchers("/systems/**").hasAuthority("ROLE_ADMIN").and().formLogin()
					.loginPage("/showMyLoginPage").loginProcessingUrl("/authenticateTheUser").permitAll().and().logout()
					.permitAll().and().exceptionHandling().accessDeniedPage("/access-denied");
		} catch (Exception e) {
			System.out.println("Exception:::" + e.getCause());
		}

	}

}
