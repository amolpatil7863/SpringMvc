package com.springboot.restapi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spring.restapi.service.StudentService;
import com.springboot.restapi.model.Student;

@RestController
@RequestMapping("/")
public class StudentContoller {
	
	@Autowired(required=true)
	private StudentService studentService;
	
	
	
	public StudentContoller() {
		super();
		System.out.println("sevice class::"+studentService);
	}

	@RequestMapping(value="/addstudent",method=RequestMethod.POST)
	public Student addStudent(@RequestBody Student student){
		System.out.println("------------------------");
//		studentService.addStudent(student);
		return student;
	}
	
	@RequestMapping(path="/getstudent" ,method=RequestMethod.GET)
	public String getStudent(){
		return null;
		
	}
	
}
