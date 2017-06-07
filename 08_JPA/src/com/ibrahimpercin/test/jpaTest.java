package com.ibrahimpercin.test;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.ibrahimpercin.Personel;

public class jpaTest {

	public static void main(String[] args) {
		Personel personel = new Personel();
		//personel.setPersonelID(2);
		personel.setPersonelAdi("Beyza");
		personel.setPersonelSoyadi("Perçin");
		
		//-----------------------------------------
		
		EntityManagerFactory entityManagerFactory;
		EntityManager entityManager;
		EntityTransaction entityTransaction;
		
		entityManagerFactory = Persistence.createEntityManagerFactory("08_JPA");
		entityManager = entityManagerFactory.createEntityManager();
		entityTransaction= entityManager.getTransaction();
		
		//-----------------------------------------
		
		entityTransaction.begin();
			entityManager.persist(personel);
		entityTransaction.commit();
		
		entityManager.close();
		entityManagerFactory.close();
	}
}
