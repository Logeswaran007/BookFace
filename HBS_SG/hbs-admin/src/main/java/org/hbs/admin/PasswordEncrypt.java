package org.hbs.admin;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.codec.binary.Base64;
import org.hbs.util.CustomLogger;

public final class PasswordEncrypt
{
	public static synchronized String decrypt(String encryptText, String decoding)
	{
		try
		{
			byte[] decodedBytes = Base64.decodeBase64(encryptText.getBytes(decoding));
			return new String(decodedBytes);
		}
		catch (UnsupportedEncodingException excep)
		{
			new CustomLogger(PasswordEncrypt.class).info(excep);
			
		}
		return null;
	}
	
	public static synchronized String decryptBase64(String decryptText)
	{
		byte[] decodedBytes = Base64.decodeBase64(decryptText.getBytes());
		return new String(decodedBytes);
	}
	
	public static synchronized String encrypt(String plaintext, String algorithm, String encoding)
	{
		try
		{
			MessageDigest msgDigest = MessageDigest.getInstance(algorithm);
			msgDigest.update(plaintext.getBytes(encoding));
			byte[] encodedBytes = Base64.encodeBase64(msgDigest.digest());
			return new String(encodedBytes);
		}
		catch (NoSuchAlgorithmException excep)
		{
			new CustomLogger(PasswordEncrypt.class).info(excep);
			
		}
		catch (UnsupportedEncodingException excep)
		{
			new CustomLogger(PasswordEncrypt.class).info(excep);
			
		}
		return null;
	}
	
	public static synchronized String encryptBase64(String encryptText)
	{
		byte[] encodedBytes = Base64.encodeBase64(encryptText.getBytes());
		return new String(encodedBytes);
	}
}
