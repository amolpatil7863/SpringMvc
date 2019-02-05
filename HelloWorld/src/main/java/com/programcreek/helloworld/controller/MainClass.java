package com.programcreek.helloworld.controller;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;
import org.xml.sax.SAXException;
@SuppressWarnings("deprecation")
public class MainClass {

	public static void main(String abhsdj[]) {
			
			/*Access bean class using 
			ApplicationContext interface*/ 
		try{
		  ApplicationContext context = new ClassPathXmlApplicationContext("beans.xml");   //should be present inside resources folder
		
		
		  HelloSpring helloSpring=(HelloSpring) context.getBean("helloWorld");
	/*	  HelloSpring helloSpring3=(HelloSpring) context.getBean("helloWorld");
		  System.out.println("First appication context beans:- "+helloSpring.hashCode());
		  System.out.println("Second application contextBeans: "+ helloSpring3.hashCode());
		  System.out.println("USING APPLICATION Context--"+helloSpring);*/
		  
		  System.out.println("name value: "+helloSpring.getName());
		  
		 /* Access Bean class 
		  using BeanFactory interface*/
		 /* System.out.println("Using BeanFactory interface");
		  ClassPathResource res = new ClassPathResource("beans.xml");
		  XmlBeanFactory factory = new XmlBeanFactory(res);
		  HelloSpring helloSpring1=(HelloSpring)  factory.getBean("helloWorld");
		  HelloSpring helloSpring2=(HelloSpring)  factory.getBean("helloWorld");
		  System.out.println("First beans:- "+helloSpring1.hashCode());
		  System.out.println("Second Beans: "+ helloSpring2.hashCode());
		  System.out.println("Using BeanFactory interface-----------"+helloSpring1);*/
		}catch (Exception e) {
			System.out.println("Parsing xml file Exception:- "+ e.getCause());
		}
		  
		/*  
		  Setter based 
		  dependency injection
		  
		  TextEditor te = (TextEditor) context.getBean("textEditor");
	      te.spellCheck();
	      System.out.println("Texteditor---------"+te);
		
		  
		  
		  TextEditor te = (TextEditor) context.getBean("textEditor");
	      te.spellCheck();
	      
	      
	      Autowire bean using 
	      autodetect mode 
	     ApplicationContext context1 = new ClassPathXmlApplicationContext("application-context.xml"); 
	     EmployeeBean emp= (EmployeeBean) context1.getBean("employee");
	     System.out.println("EMP BEAN:-"+emp);
	     
	     
	     Application aplication=(Application) context1.getBean("application");
	     System.out.println("Using by name tag:- "+aplication);
	     
	     
	     Customer customer=(Customer) context1.getBean("customer");
	     System.out.println("Customer:-  "+customer);
	     ApplicationContext context2 = new AnnotationConfigApplicationContext(ApplicationConfiguration.class);
	     DemoManagerImpl demo=(DemoManagerImpl) context2.getBean("demoService");
	     System.out.println("demo configuration:-"+ demo.getServiceName());*/
	}
}
