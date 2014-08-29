package com.june.app.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class EncTest {
	public static void main(String[] args) {
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode("1");
		/*$2a$10$.0rrlOURgWeQjbwemsPSEOW1yIIlsjV6JmrnT56iJWnNrtr/F3k8u
		$2a$10$H1jy3XhjwlqLb2yG280MmekaBV547Ap18GUGvx9TfqXaJhwVF93zO
		$2a$10$dVLUgR0pSMqEKIbGlks1D.ZOLcwsUGT0DSO66.wr68qUCRn4UhOPi*/
		
		System.out.println("==========="+hashedPassword);
		
		boolean matches = passwordEncoder.matches("sksmssk21!", "$2a$10$.0rrlOURgWeQjbwemsPSEOW1yIIlsjV6JmrnT56iJWnNrtr/F3k8u");
		
		System.out.println("==========="+matches);
	}
}
