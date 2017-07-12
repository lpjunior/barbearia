package barbearia.util;

import org.springframework.security.authentication.encoding.Md5PasswordEncoder;

public class EncriptarMD5 {

	public static String encriptar(String senha) {
		Md5PasswordEncoder encoder = new Md5PasswordEncoder();
		senha = encoder.encodePassword(senha, null);

		return senha;
	}
}