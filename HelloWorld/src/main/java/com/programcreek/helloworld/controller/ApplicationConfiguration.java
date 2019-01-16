package com.programcreek.helloworld.controller;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
@Configuration
public class ApplicationConfiguration {

	 @Bean(name="demoService")
	    public DemoManagerImpl helloWorld()
	    {
	        return new DemoManagerImpl();
	    }
}
