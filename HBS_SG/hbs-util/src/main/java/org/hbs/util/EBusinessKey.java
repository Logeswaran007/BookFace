package org.hbs.util;

public interface EBusinessKey
{
	
	public enum EKey implements EnumInterface
	{
		Primary;

		public static String Auto(String code)
		{
			try
			{
				Thread.sleep(1);
				return code + System.currentTimeMillis();
			}
			catch (InterruptedException excep)
			{
				return code + System.currentTimeMillis();
			}
		}

		public static String Auto(String... codes)
		{
			String business = "";
			for (String code : codes)
				return business += code;
			return business;
		}
	}

	public String getBusinessKey(String... combination);
}
