/**
 * 
 */
package com.spring.mvc.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 * @author amol
 *
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	public SecurityConfig() {
		super();
		System.out.println("Spring Configure Constructor");
	}

	public void configure(AuthenticationManagerBuilder auth) throws Exception {
		System.out.println("Spring Configure");
		auth.inMemoryAuthentication().withUser("amol").password("1234").roles("ADMIN");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		System.out.println("Login authentication:::::");
		http.authorizeRequests().anyRequest().authenticated().and().formLogin().loginPage("/index").loginProcessingUrl("/login")
		http.csrf().disable();
	}
}
