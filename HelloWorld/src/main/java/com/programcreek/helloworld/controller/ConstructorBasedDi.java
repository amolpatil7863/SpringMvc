package com.programcreek.helloworld.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ConstructorBasedDi {

	public static void main(String[] args) {
		 ApplicationContext context = new ClassPathXmlApplicationContext("application-context.xml");
		 
		TextEditor textEditor= (TextEditor) context.getBean("textEditor");
		textEditor.spellCheck();
//		textEditor.checkSpelling();
	}

}
