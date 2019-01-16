package com.programcreek.helloworld.controller;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class Test {

	
	    public static void main(String[] args) {
	        ApplicationContext context =
	                  new ClassPathXmlApplicationContext(new String[] {"application-context.xml"});
	          
	                EmployeeBean employee = (EmployeeBean)context.getBean("employee");
	 
	                System.out.println(employee.getFullName());
	 
	                System.out.println(employee.getDepartmentBean().getName());
	    }


}
