package com.spring.mvc.bean.dao;

import java.util.List;

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
		List<Person> personList = session.createQuery("from Person").list();
		session.close();
		return personList;
	}

}
