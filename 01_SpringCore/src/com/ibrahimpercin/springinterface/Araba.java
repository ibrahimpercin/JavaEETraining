package com.ibrahimpercin.springinterface;

public class Araba {

	// Yakit s�n�f�n�n burada kullan�lmas� compisition'dur
	Yakit yakit;
	
	/*
	public Araba() {
		this.yakit = new Yakit();
	}
	*/
	
	public Araba(Yakit yakit) {
		this.yakit = yakit ; //IoC (Inversion of Control) KontrolSpringe verildi ve DI(Dependency injection yap�ld�)
	}
	
	public void ilerle() {
		yakit.depo();
		System.out.println("Araba ilerliyor");
	}
}
