package com.ibrahimpercin.composition;

public class Araba {

	// Yakit s�n�f�n�n burada kullan�lmas� compisition'dur
	Yakit yakit;

	public Araba() {
		this.yakit = new Yakit();
	}
	
	public void ilerle() {
		yakit.depo();
		System.out.println("Araba ilerliyor");
	}
}
