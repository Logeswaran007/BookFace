package org.hbs.util;

import java.io.Serializable;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class LabelValueBean implements java.io.Serializable
{
	private static final long	serialVersionUID	= -2065628036344367528L;
	private String				value;
	private String				label;

	public enum ELabelValue implements EnumInterface
	{
		Combo;

		public String getJson(List<LabelValueBean> lbBeanList)
		{
			return getJson(lbBeanList, null, null);
		}

		public String getJson(List<LabelValueBean> lbBeanList, String headerLabel, String headerValue)
		{
			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			StringBuilder sb = new StringBuilder(gson.toJson(new LabelValueCombo(lbBeanList, headerLabel, headerValue)));
			return sb.toString();
		}
	}

	public LabelValueBean(String value, String label)
	{
		this.value = value;
		this.label = label;
	}

	/**
	 * @return the label
	 */
	public String getLabel()
	{
		return label;
	}

	/**
	 * @return the value
	 */
	public String getValue()
	{
		return value;
	}

	/**
	 * @param label
	 *            the label to set
	 */
	public void setLabel(String label)
	{
		this.label = label;
	}

	/**
	 * @param value
	 *            the value to set
	 */
	public void setValue(String value)
	{
		this.value = value;
	}

}

class LabelValueCombo implements Serializable
{
	private static final long		serialVersionUID	= 5660689055048562000L;

	private List<LabelValueBean>	lbBeanList;

	public LabelValueCombo(List<LabelValueBean> lbBeanList, String headerLabel, String headerValue)
	{
		super();
		this.lbBeanList = lbBeanList;

		if (CommonValidator.isNotNullNotEmpty(headerLabel))
			this.lbBeanList.add(0, new LabelValueBean(headerValue, headerLabel));
	}

	public List<LabelValueBean> getLbBeanList()
	{
		return lbBeanList;
	}

	public void setLbBeanList(List<LabelValueBean> lbBeanList)
	{
		this.lbBeanList = lbBeanList;
	}

}