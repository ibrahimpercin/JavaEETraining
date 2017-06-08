package com.ibrahimpercin.composition;

public class Araba {

	// Yakit sýnýfýnýn burada kullanýlmasý compisition'dur
	Yakit yakit;

	public Araba() {
		this.yakit = new Yakit();
	}
	
	public void ilerle() {
		yakit.depo();
		System.out.println("Araba ilerliyor");
	}
}
