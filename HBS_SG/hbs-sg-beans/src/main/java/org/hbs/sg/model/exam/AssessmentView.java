package org.hbs.sg.model.exam;

import java.io.Serializable;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

public class AssessmentView implements Serializable
{
	static final long	serialVersionUID	= 2342847995177007172L;
	String				askedYears;
	String				correctAnswer1;
	String				correctAnswer2;
	String				correctAnswer3;
	String				correctAnswer4;
	String				_Answer1Image;
	String				_Answer1;
	String				_Answer2Image;
	String				_Answer2;
	String				_Answer3Image;
	String				_Answer3;
	String				_Answer4Image;
	String				_Answer4;
	String				_ExplanationImage;
	String				_Explanation;
	String				_QuestionId;
	String				_Question;
	String				_QuestionImage;
	String				_PassKey;
	boolean				isMultiOption;
	
	public String encrypt(String datum) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException
	{
		// Create key and cipher
		Cipher cipher = Cipher.getInstance("AES");
		
		// encrypt the text
		cipher.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(_PassKey.getBytes(), "AES"));
		byte[] encrypted = cipher.doFinal(datum.getBytes());
		
		return new String(encrypted);
	}
	
	public String decrypt(String datum) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException
	{
		// Create key and cipher
		Cipher cipher = Cipher.getInstance("AES");
		
		// decrypt the text
		cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(_PassKey.getBytes(), "AES"));
		String decrypted = new String(cipher.doFinal(datum.getBytes()));
		
		return decrypted;
	}
	
}
