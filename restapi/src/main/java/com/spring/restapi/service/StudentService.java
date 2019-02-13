package com.spring.restapi.service;

import java.util.List;

import com.springboot.restapi.model.Student;

public interface StudentService {
	public void addStudent(Student student);
	public List<Student> studentList();
	public Student getStudent(int id);
	public Student deleteStudent(int id);
	public Student updateStudent(Student student);
}
