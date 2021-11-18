package com.kessler;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ProfileExample {

	public void loadProperties() throws IOException {
		//FileInputStream fileInputStream = new FileInputStream("src/main/resources/config.properties");
		InputStream is = this.getClass().getClassLoader().getResourceAsStream("config.properties");
		Properties prop = new Properties();
		prop.load(is);
		String authenticationScheme = prop.getProperty("AuthenticationScheme");
		System.out.println("Authentication Scheme: " + authenticationScheme);
		String someScheme = prop.getProperty("SomeScheme");
		System.out.println("Some Scheme: " + someScheme);
	}
	
	public static void main(String[] args) {
		try {
		  new ProfileExample().loadProperties();
		}catch(Exception e) {
			e.printStackTrace(System.out);
		}
	}
	
	
}
