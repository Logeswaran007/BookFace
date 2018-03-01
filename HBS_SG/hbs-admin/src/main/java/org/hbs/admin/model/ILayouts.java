package org.hbs.admin.model;

import java.util.List;

import org.hbs.util.CommonValidator;
import org.hbs.util.EnumInterface;
import org.hbs.util.model.ICommonLayout;

public interface ILayouts extends ICommonLayout
{
	public enum EDataTable implements EnumInterface
	{
		Cols;

		public String getOrder(List<ILayouts> iLayoutList)
		{
			StringBuilder sb = new StringBuilder();
			String cols = "";
			for (int index = 0; index < iLayoutList.size(); index++)
			{
				if (CommonValidator.isNotNullNotEmpty(iLayoutList.get(index).getDisplayScriptColumn()))
				{
					cols = iLayoutList.get(index).getDisplayScriptColumn();
				}
				else
				{
					cols = "cols" + index;
				}

				sb.append("var " + cols + " = " + index + ";\n");
			}
			return sb.toString();
		}
	}

	public String getBaseBeanNameWithFullPackage();

	public String getSearchName();

	public int getSearchOrder();

	public void setBaseBeanNameWithFullPackage(String baseBeanNameWithFullPackage);

	public void setSearchName(String searchName);

	public void setSearchOrder(int searchOrder);
}
