package com.springcore.JavaBasedConfigurationExample;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 * Hello world!
 *
 */
public class Test 
{
    public static void main( String[] args )
    {
    	  ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringConfiguration.class);
    	  Company company=ctx.getBean(Company.class);
    	  company.setCid(1);
    	  company.setCname("TD");
    	  System.out.println("USING Configuration:-" +company);
    }
}
