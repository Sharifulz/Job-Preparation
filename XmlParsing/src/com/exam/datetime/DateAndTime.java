package com.exam.datetime;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class DateAndTime {
// see java date format from here
	// https://docs.oracle.com/javase/10/docs/api/java/text/SimpleDateFormat.html
	// get time zone list from here
	// https://www.mkyong.com/java/java-display-list-of-timezone-with-gmt/
	public static void main(String[] args) {
		TimeZone.setDefault(TimeZone.getTimeZone("GMT+6"));
		
		SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy E hh:mm:ss a");
		Date date = new Date();
		String currentTime = format.format(date);
		System.out.println(currentTime);
	}

}
