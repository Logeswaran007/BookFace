package org.hbs.edutel.model;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;

import org.hbs.admin.model.ICommonBeanFields;
import org.hbs.admin.model.IUsers;
import org.hbs.sg.model.IScheme;
import org.hbs.util.EnumInterface;

public interface IAuthKeyGen extends ICommonBeanFields
{
	public enum EKeyGen implements EnumInterface
	{
		DeActivated("De-Activated"), Not_Sold("Not Sold"), Sold("Sold"), Validated("Validated");
		
		public static String generateKey()
		{
			String keyModel = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
			Random rnd = new Random();
			StringBuilder sbKey = new StringBuilder(15);
			for (int j = 0; j < 15; j++)
			{
				sbKey.append(keyModel.charAt(rnd.nextInt(keyModel.length())));
			}
			return sbKey.toString();
		}
		
		public static Map<String, String> getComboBoxList()
		{
			Map<String, String> keyList = new LinkedHashMap<String, String>(0);
			
			for (EKeyGen eKey : EKeyGen.values())
			{
				keyList.put(eKey.getStatus(), eKey.getStatus());
			}
			return keyList;
		}
		
		private final String eKeyGen;
		
		private EKeyGen(String eKeyGen)
		{
			this.eKeyGen = eKeyGen;
		}
		
		public String getStatus()
		{
			return eKeyGen;
		}
		
	}
	
	public IScheme getScheme();
	
	public Double getSellingPrice();
	
	public String getSerialKey();
	
	public String getSerialKeyStatus();
	
	public IUsers getUsers();
	
	public void setScheme(IScheme scheme);
	
	public void setSellingPrice(Double sellingPrice);
	
	public void setSerialKey(String serialKey);
	
	public void setSerialKeyStatus(String serialKeyStatus);
	
	public void setUsers(IUsers users);
	
}
