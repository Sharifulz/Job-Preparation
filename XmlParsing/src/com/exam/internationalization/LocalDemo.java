package com.exam.internationalization;

import java.util.*;

public class LocalDemo {

	public static void main(String[] args) {
		System.out.println();
		String language = "en";
		String country = "US";
		Locale l = new Locale(language,country);
		ResourceBundle r = ResourceBundle.getBundle("com.exam.internationalization.Bundle", l);
		String str = r.getString("hate");
		System.out.println(str);
	}

}
