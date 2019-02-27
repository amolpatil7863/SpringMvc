package com.spring.mvc.service;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.spring.mvc.bean.dao.PersonDAO;
import com.spring.mvc.dto.PersonDto;
import com.spring.mvc.model.Person;

@Component
public class PersonServiceImpl implements PersonService {

	@Autowired
	private PersonDAO personDao;

	public void save(PersonDto personDto) {
		Person person = new Person();
		BeanUtils.copyProperties(personDto, person);
		personDao.save(person);
		List<Person> persons=list();
		for (Person person1 : persons) {
			System.out.println("Data From DataBase :::"+person1);
		}
	}

	public List<Person> list() {
		return personDao.list();
	}

}
