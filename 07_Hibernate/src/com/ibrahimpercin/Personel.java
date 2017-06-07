package com.ibrahimpercin;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Personel {
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	private int personelid;
	private String personelAdi;
	private String personelSoyadi;
	
	//-----------------------------------------------------------
	public int getPersonelID() {
		return personelID;
	}
	public void setPersonelID(int personelID) {
		this.personelID = personelID;
	}
	//-----------------------------------------------------------
	public String getPersonelAdi() {
		return personelAdi;
	}
	public void setPersonelAdi(String personelAdi) {
		this.personelAdi = personelAdi;
	}
	//-----------------------------------------------------------
	public String getPersonelSoyadi() {
		return personelSoyadi;
	}
	public void setPersonelSoyadi(String personelSoyadi) {
		this.personelSoyadi = personelSoyadi;
	}
	
}
