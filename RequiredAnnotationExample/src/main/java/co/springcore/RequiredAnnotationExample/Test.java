package co.springcore.RequiredAnnotationExample;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {

	public static void main(String[] args) {
		 ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
		 
		 Company company=(Company) context.getBean("company");
		 System.out.println(company);
	}

}
