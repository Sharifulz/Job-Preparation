package com.exam;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class TestLogger {
	static Logger log = LogManager.getLogger();
	public static void main(String[] args) {
		log.info("Some Log---------------------------------------");
		log.warn("Warn message");
		log.error("Error message");
	}

}
