package co.springcore.AutoWiredExample;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {

	public static void main(String[] args) {
		 ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
		 try{
		 Profile company=(Profile) context.getBean(Profile.class);
		 
		 
		 System.out.println(company.getClass());
		 System.out.println(company);
		 company.printAge();
		 company.printName();
		 }catch (Exception e) {
			 System.out.println(e.getCause());
		}
	}

}
