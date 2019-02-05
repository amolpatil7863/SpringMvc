package com.springcore.JavaBasedConfigurationExample;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SpringConfiguration {

	@Bean
	public Company getCompanyObject(){
		return new Company();
	}
}
