package com.spring.mvc.bean.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.mvc.model.Person;

@Repository
public class PersonDAOImpl implements PersonDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		
	}

	public void save(Person p) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.persist(p);
		tx.commit();
		session.close();
	}

	@SuppressWarnings("unchecked")
	public List<Person> list() {
		Session session = this.sessionFactory.openSession();
		SQLQuery sqlQuery=session.createSQLQuery("SELECT * FROM Person");
		System.out.println("Sql Query::::"+sqlQuery.toString());
		System.out.println("QUERY::::"+sqlQuery.list());
		List<Object[]> rows=sqlQuery.list();
		List<Person> personList=new ArrayList<Person>();
		for (Object[] objects : rows) {
			Person person=new Person();
			person.setId((Integer) objects[0]);
			person.setCountry(objects[1].toString());
			person.setName(objects[2].toString());
			personList.add(person);
		}
		
//		List<Person> list=sqlQuery.list();
		session.close();
		return personList;
	}

}
