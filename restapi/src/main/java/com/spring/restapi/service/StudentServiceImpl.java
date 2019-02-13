package com.spring.restapi.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;
import com.springboot.restapi.model.Student;

@Service
public class StudentServiceImpl implements StudentService{

	List<Student> studentList=new ArrayList<Student>();
	
	@Override
	public void addStudent(Student student) {
		studentList.add(student);
	}

	@Override
	public List<Student> studentList() {
		return studentList;
	}

	@Override
	public Student getStudent(int id) {
		for (Student student : studentList) {
			if(student.getId()==id){
				return student;
			}
		}
		return null;
	}

	@Override
	public Student deleteStudent(int id) {
		for (Student student : studentList) {
			if(student.getId()==id){
				studentList.remove(student);
				return student;
			}
		}
		return null;
	}

	@Override
	public Student updateStudent(Student student) {
		for (Student stud : studentList) {
			if(student.getId()==student.getId()){
				stud.setName(student.getName());
				stud.setAddress(student.getAddress());
				return stud;
			}
		}
		throw new RuntimeException("Id Doesn't Exist");
	}

}
