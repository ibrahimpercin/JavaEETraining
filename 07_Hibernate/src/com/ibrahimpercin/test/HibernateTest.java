package com.ibrahimpercin.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.ibrahimpercin.Personel;

public class HibernateTest {
	
	public static void main(String[] args) {
		Personel personel = new Personel();
		personel.setPersonelID(2);
		personel.setPersonelAdi("Beyza");
		personel.setPersonelSoyadi("Perçin");
		//-----------------------------------------
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		
		session.beginTransaction();
		session.save(personel);
		session.getTransaction().commit();
		
	}

	
}
