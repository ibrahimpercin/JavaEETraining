package com.ibrahimpercin;

import java.io.Serializable;
import java.lang.String;
import javax.persistence.*;
import static javax.persistence.GenerationType.IDENTITY;

/**
 * Entity implementation class for Entity: Personel
 *
 */
@Entity

@Table(name = "tbl_JPA")
public class Personel implements Serializable {

	   
	@Id
	@GeneratedValue(strategy = IDENTITY)
	private int personelid;
	private String personelAdi;
	private String personelSoyadi;
	private static final long serialVersionUID = 1L;
	//-------------------------------------------------
	public Personel() {
		super();
	}   
	//-------------------------------------------------
	public int getPersonelid() {
		return this.personelid;
	}
	public void setPersonelid(int personelid) {
		this.personelid = personelid;
	}  
	//-------------------------------------------------
	public String getPersonelAdi() {
		return this.personelAdi;
	}
	public void setPersonelAdi(String personelAdi) {
		this.personelAdi = personelAdi;
	}   
	//-------------------------------------------------
	public String getPersonelSoyadi() {
		return this.personelSoyadi;
	}
	public void setPersonelSoyadi(String personelSoyadi) {
		this.personelSoyadi = personelSoyadi;
	}
	
	@Override
	public String toString() {
		return "Personel [personelid=" + personelid + ", personelAdi=" + personelAdi + ", personelSoyadi="
				+ personelSoyadi + "]";
	}
   
}
