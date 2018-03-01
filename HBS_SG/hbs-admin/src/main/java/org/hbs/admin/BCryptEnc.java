package org.hbs.admin;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class BCryptEnc
{

	public static void main(String[] args)
	{
		String password = "test"; // encypted is =
									// "$2a$10$sgM4kk9Wy8wqgafAdSH0XeNtXyO7cbizNHeSXiGTjJILHmlyOty2."
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(password);
		System.out.println(">>>>>BCryptPasswordEncoder>>>>> " + hashedPassword);

	}

}
