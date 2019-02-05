package com.springcore.SpringBeanScope;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class Test {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
		 
		 RequestProcessor company=(RequestProcessor) context.getBean("requestProcessor");
		 System.out.println(company);
	}

}
