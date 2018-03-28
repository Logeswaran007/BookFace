package org.hbs.sg.model.exam;

import java.io.Serializable;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

import org.hbs.util.CommonValidator;

public class AssessmentView implements Serializable
{
	static final long	serialVersionUID	= 2342847995177007172L;
	String				askedYears;
	
	String				_SelectedAnswer1;
	String				_SelectedAnswer2;
	String				_SelectedAnswer3;
	String				_SelectedAnswer4;
	
	String				_CorrectAnswer1;
	String				_CorrectAnswer2;
	String				_CorrectAnswer3;
	String				_CorrectAnswer4;
	
	String				_CorrectIsNone		= "";
	
	String				_Answer1Image;
	String				_Answer1;
	String				_Answer1Id;
	
	String				_Answer2Image;
	String				_Answer2;
	String				_Answer2Id;
	
	String				_Answer3Image;
	String				_Answer3;
	String				_Answer3Id;
	
	String				_Answer4Image;
	String				_Answer4;
	String				_Answer4Id;
	
	String				_ExplanationImage;
	String				_Explanation;
	
	String				_QuestionId;
	String				_Question;
	String				_QuestionImage;
	
	String				_PassKey;
	boolean				isMultiOption		= false;
	
	public AssessmentView(String _PassKey, String _QuestionId, boolean _Mode, String _CorrectAnswer1, String _CorrectAnswer2, String _CorrectAnswer3, String _CorrectAnswer4)
			throws InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException
	{
		super();
		this._PassKey = CommonValidator.isNotNullNotEmpty(_PassKey) ? _PassKey.substring(0, 16) : "HatchBirdSolsLLP";
		this._QuestionId = _QuestionId;
		// this._CorrectAnswer1 = CommonValidator.isNotNullNotEmpty(_CorrectAnswer1) ?
		// encrypt(_CorrectAnswer1) : null;
		// this._CorrectAnswer2 = CommonValidator.isNotNullNotEmpty(_CorrectAnswer2) ?
		// encrypt(_CorrectAnswer2) : null;
		// this._CorrectAnswer3 = CommonValidator.isNotNullNotEmpty(_CorrectAnswer3) ?
		// encrypt(_CorrectAnswer3) : null;
		// this._CorrectAnswer4 = CommonValidator.isNotNullNotEmpty(_CorrectAnswer4) ?
		// encrypt(_CorrectAnswer4) : null;
		
		this._CorrectAnswer1 = _CorrectAnswer1;
		this._CorrectAnswer2 = _CorrectAnswer2;
		this._CorrectAnswer3 = _CorrectAnswer3;
		this._CorrectAnswer4 = _CorrectAnswer4;
		
		this.isMultiOption = _Mode;
		
		if (_CorrectAnswer1 == null && _CorrectAnswer2 == null && _CorrectAnswer3 == null && _CorrectAnswer4 == null)
			_CorrectIsNone = "None of the above";
	}
	
	public String encrypt(String datum) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException
	{
		Cipher cipher = Cipher.getInstance("AES");
		
		cipher.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(_PassKey.getBytes(), "AES"));
		
		return new String(cipher.doFinal(datum.getBytes()));
	}
	
	public String decrypt(String datum) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException
	{
		Cipher cipher = Cipher.getInstance("AES");
		
		cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(_PassKey.getBytes(), "AES"));
		
		return new String(cipher.doFinal(datum.getBytes()));
	}
	
	public String getAskedYears()
	{
		return askedYears;
	}
	
	public void setAskedYears(String askedYears)
	{
		this.askedYears = askedYears;
	}
	
	public String get_SelectedAnswer1()
	{
		return _SelectedAnswer1;
	}
	
	public void set_SelectedAnswer1(String _SelectedAnswer1)
	{
		this._SelectedAnswer1 = _SelectedAnswer1;
	}
	
	public String get_SelectedAnswer2()
	{
		return _SelectedAnswer2;
	}
	
	public void set_SelectedAnswer2(String _SelectedAnswer2)
	{
		this._SelectedAnswer2 = _SelectedAnswer2;
	}
	
	public String get_SelectedAnswer3()
	{
		return _SelectedAnswer3;
	}
	
	public void set_SelectedAnswer3(String _SelectedAnswer3)
	{
		this._SelectedAnswer3 = _SelectedAnswer3;
	}
	
	public String get_SelectedAnswer4()
	{
		return _SelectedAnswer4;
	}
	
	public void set_SelectedAnswer4(String _SelectedAnswer4)
	{
		this._SelectedAnswer4 = _SelectedAnswer4;
	}
	
	public String get_Answer1Image()
	{
		return _Answer1Image;
	}
	
	public void set_Answer1Image(String _Answer1Image)
	{
		this._Answer1Image = _Answer1Image;
	}
	
	public String get_Answer1()
	{
		return _Answer1;
	}
	
	public void set_Answer1(String _Answer1)
	{
		this._Answer1 = _Answer1;
	}
	
	public String get_Answer2Image()
	{
		return _Answer2Image;
	}
	
	public void set_Answer2Image(String _Answer2Image)
	{
		this._Answer2Image = _Answer2Image;
	}
	
	public String get_Answer2()
	{
		return _Answer2;
	}
	
	public void set_Answer2(String _Answer2)
	{
		this._Answer2 = _Answer2;
	}
	
	public String get_Answer3Image()
	{
		return _Answer3Image;
	}
	
	public void set_Answer3Image(String _Answer3Image)
	{
		this._Answer3Image = _Answer3Image;
	}
	
	public String get_Answer3()
	{
		return _Answer3;
	}
	
	public void set_Answer3(String _Answer3)
	{
		this._Answer3 = _Answer3;
	}
	
	public String get_Answer4Image()
	{
		return _Answer4Image;
	}
	
	public void set_Answer4Image(String _Answer4Image)
	{
		this._Answer4Image = _Answer4Image;
	}
	
	public String get_Answer4()
	{
		return _Answer4;
	}
	
	public void set_Answer4(String _Answer4)
	{
		this._Answer4 = _Answer4;
	}
	
	public String get_ExplanationImage()
	{
		return _ExplanationImage;
	}
	
	public void set_ExplanationImage(String _ExplanationImage)
	{
		this._ExplanationImage = _ExplanationImage;
	}
	
	public String get_Explanation()
	{
		return _Explanation;
	}
	
	public void set_Explanation(String _Explanation)
	{
		this._Explanation = _Explanation;
	}
	
	public String get_QuestionId()
	{
		return _QuestionId;
	}
	
	public void set_QuestionId(String _QuestionId)
	{
		this._QuestionId = _QuestionId;
	}
	
	public String get_Question()
	{
		return _Question;
	}
	
	public void set_Question(String _Question)
	{
		this._Question = _Question;
	}
	
	public String get_QuestionImage()
	{
		return _QuestionImage;
	}
	
	public void set_QuestionImage(String _QuestionImage)
	{
		this._QuestionImage = _QuestionImage;
	}
	
	public String get_PassKey()
	{
		return _PassKey;
	}
	
	public void set_PassKey(String _PassKey)
	{
		this._PassKey = _PassKey;
	}
	
	public boolean isMultiOption()
	{
		return isMultiOption;
	}
	
	public void setMultiOption(boolean isMultiOption)
	{
		this.isMultiOption = isMultiOption;
	}
	
	public String get_CorrectAnswer1()
	{
		return _CorrectAnswer1;
	}
	
	public void set_CorrectAnswer1(String _CorrectAnswer1)
	{
		this._CorrectAnswer1 = _CorrectAnswer1;
	}
	
	public String get_CorrectAnswer2()
	{
		return _CorrectAnswer2;
	}
	
	public void set_CorrectAnswer2(String _CorrectAnswer2)
	{
		this._CorrectAnswer2 = _CorrectAnswer2;
	}
	
	public String get_CorrectAnswer3()
	{
		return _CorrectAnswer3;
	}
	
	public void set_CorrectAnswer3(String _CorrectAnswer3)
	{
		this._CorrectAnswer3 = _CorrectAnswer3;
	}
	
	public String get_CorrectAnswer4()
	{
		return _CorrectAnswer4;
	}
	
	public void set_CorrectAnswer4(String _CorrectAnswer4)
	{
		this._CorrectAnswer4 = _CorrectAnswer4;
	}
	
	public String get_CorrectIsNone()
	{
		return _CorrectIsNone;
	}
	
	public void set_CorrectIsNone(String _CorrectIsNone)
	{
		this._CorrectIsNone = _CorrectIsNone;
	}
	
	public String get_Answer1Id()
	{
		return _Answer1Id;
	}
	
	public void set_Answer1Id(String _Answer1Id)
	{
		this._Answer1Id = _Answer1Id;
	}
	
	public String get_Answer2Id()
	{
		return _Answer2Id;
	}
	
	public void set_Answer2Id(String _Answer2Id)
	{
		this._Answer2Id = _Answer2Id;
	}
	
	public String get_Answer3Id()
	{
		return _Answer3Id;
	}
	
	public void set_Answer3Id(String _Answer3Id)
	{
		this._Answer3Id = _Answer3Id;
	}
	
	public String get_Answer4Id()
	{
		return _Answer4Id;
	}
	
	public void set_Answer4Id(String _Answer4Id)
	{
		this._Answer4Id = _Answer4Id;
	}
	
}
