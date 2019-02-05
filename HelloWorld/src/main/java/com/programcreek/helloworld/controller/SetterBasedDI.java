package com.programcreek.helloworld.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SetterBasedDI {

	public static void main(String[] args) {
		 ApplicationContext context = new ClassPathXmlApplicationContext("application-context.xml");
		 
		 EmployeeBean emp=(EmployeeBean) context.getBean("employee");
		
		System.out.println(emp);
		 
		 
	}

}
