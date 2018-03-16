package org.hbs.sg.model.exam;

public class QuestionCalibrate
{
	private int	requiredCount	= 0;
	private int	availCount		= 0;
	
	public QuestionCalibrate()
	{
		super();
	}
	
	public int getBalance()
	{
		return requiredCount - availCount;
	}
	
	public int getRequiredCount()
	{
		return requiredCount;
	}
	
	public void setRequiredCount(int requiredCount)
	{
		this.requiredCount = requiredCount;
	}
	
	public int getAvailCount()
	{
		return availCount;
	}
	
	public void setAvailCount(int availCount)
	{
		this.availCount = availCount;
	}
	
}
