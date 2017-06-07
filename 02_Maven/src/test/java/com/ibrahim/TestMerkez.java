package com.ibrahim;

import static org.junit.Assert.assertTrue;

import java.util.ArrayList;
import java.util.Collection;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;


public class TestMerkez {

	private Collection collection;
	
	@BeforeClass
	public static void metod1() {
		System.out.println("metot1");
	}
	
	@AfterClass
	public static void metod2() {
		System.out.println("metot2");
	}
	
	@Before
	public void metod3() {
		collection = new ArrayList();
		System.out.println("metot3");
	}
	
	@After
	public void metod4() {
		collection.clear();
		System.out.println("metot4");
	}
	
	@Test
	public void metod5() {
		System.out.println("metot5");
	}
}
