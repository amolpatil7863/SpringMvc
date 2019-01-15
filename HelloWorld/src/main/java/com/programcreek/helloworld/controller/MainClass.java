package com.programcreek.helloworld.controller;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;
@SuppressWarnings("deprecation")
public class MainClass {

	public static void main(String abhsdj[]) {
			
			/*Access bean class using 
			ApplicationCOntext interface*/
		
		  ApplicationContext context = new ClassPathXmlApplicationContext("beans.xml");   //should be present inside resources folder
		  HelloSpring helloSpring=(HelloSpring) context.getBean("helloWorld");
		  System.out.println("USING APPLICATION Context--"+helloSpring);
		  
		 /* Access Bean class 
		  using BeanFactory interface*/
		  System.out.println("Using BeanFactory interface");
		  ClassPathResource res = new ClassPathResource("beans.xml");
		  XmlBeanFactory factory = new XmlBeanFactory(res);
		  HelloSpring helloSpring1=(HelloSpring)  factory.getBean("helloWorld");
		  System.out.println("Using BeanFactory interface-----------"+helloSpring1);
		 
		
	}
}
