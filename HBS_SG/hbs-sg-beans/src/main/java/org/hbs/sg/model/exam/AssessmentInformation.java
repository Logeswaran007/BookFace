package org.hbs.sg.model.exam;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import org.hbs.util.dao.ICRUDBean;

@Embeddable
public class AssessmentInformation implements IAssessmentInformation, ICRUDBean
{
	
	private static final long	serialVersionUID	= -153763627570528959L;
	protected String			assessmentDate;
	protected boolean			broadCast			= false;
	protected boolean			dateElapsed			= false;
	protected boolean			dateReached			= false;
	protected String			duration;
	
	public AssessmentInformation()
	{
		super();
	}
	
	public AssessmentInformation(boolean broadCast, String assessmentDate, boolean dateElapsed, boolean dateReached, String duration)
	{
		super();
		this.broadCast = broadCast;
		this.assessmentDate = assessmentDate;
		this.dateElapsed = dateElapsed;
		this.dateReached = dateReached;
		this.duration = duration;
	}
	
	@Override
	@Column(name = "assessmentDate")
	public String getAssessmentDate()
	{
		return assessmentDate;
	}
	
	@Override
	@Column(name = "duration")
	public String getDuration()
	{
		return duration;
	}
	
	@Override
	@Column(name = "broadCast")
	public boolean isBroadCast()
	{
		return broadCast;
	}
	
	@Override
	public boolean isDateElapsed()
	{
		return dateElapsed;
	}
	
	@Override
	public boolean isDateReached()
	{
		return dateReached;
	}
	
	@Override
	public void setAssessmentDate(String assessmentDate)
	{
		this.assessmentDate = assessmentDate;
	}
	
	@Override
	public void setBroadCast(boolean broadCast)
	{
		this.broadCast = broadCast;
	}
	
	@Override
	public void setDateElapsed(boolean dateElapsed)
	{
		this.dateElapsed = dateElapsed;
	}
	
	@Override
	public void setDateReached(boolean dateReached)
	{
		this.dateReached = dateReached;
	}
	
	@Override
	public void setDuration(String duration)
	{
		this.duration = duration;
	}
	
}
