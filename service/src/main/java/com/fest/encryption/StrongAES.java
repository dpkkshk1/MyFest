package com.fest.encryption;

import java.security.Key;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class StrongAES {
	public String run(String text) {
		String str = "";
		try {
			String key = "Bar12345Bar12345"; // 128 bit key
			// Create key and cipher
			Key aesKey = new SecretKeySpec(key.getBytes(), "AES");
			Cipher cipher = Cipher.getInstance("AES");
			// encrypt the text
			cipher.init(Cipher.ENCRYPT_MODE, aesKey);
			byte[] encrypted = cipher.doFinal(text.getBytes());
			str = new String(encrypted);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return str;
	}
}