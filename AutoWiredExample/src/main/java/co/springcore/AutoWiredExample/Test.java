package co.springcore.AutoWiredExample;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {

	public static void main(String[] args) {
		 ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
		 
		 Profile company=(Profile) context.getBean("company");
		 System.out.println(company);
		 company.printAge();
		 company.printName();
	}

}
