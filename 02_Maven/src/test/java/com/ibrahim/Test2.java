package com.ibrahim;

import static org.junit.Assert.*;

import org.junit.Ignore;
import org.junit.Test;

import junit.framework.TestCase;

public class Test2 extends TestCase {
	
	@Test(timeout=1000, expected = Exception.class)
	public void test() {
		String isim ="ada";
		
		int sayi =0 / Integer.valueOf(isim);
		System.out.println("metot2 - @Test");
	}
	
	@Ignore
	@Test(timeout=10)
	public void test2() {
//		String isim ="ada";
		
		int sayi = 10/5;
		System.out.println("metot1 - @Test");
	}

}
