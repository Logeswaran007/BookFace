package org.hbs.sg.model.exam;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hbs.util.dao.ICRUDBean;

@Entity
@Table(name = "assessmentpatterninfo")
public class AssessmentPatternInfo implements IAssessmentPatternInfo, ICRUDBean
{
	
	private static final long		serialVersionUID	= 3948412843084086L;
	protected int					autoId;
	protected String				infoName;
	protected IAssessmentPattern	pattern;
	protected String				percentage;
	protected boolean				status;
	protected String				weightage;
	
	public AssessmentPatternInfo()
	{
		super();
	}
	
	public AssessmentPatternInfo(int autoId, IAssessmentPattern pattern, String infoName, String percentage, String weightage, boolean status)
	{
		super();
		this.autoId = autoId;
		this.pattern = pattern;
		this.infoName = infoName;
		this.percentage = percentage;
		this.weightage = weightage;
		this.status = status;
	}
	
	@Override
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "autoId")
	public int getAutoId()
	{
		return autoId;
	}
	
	@Override
	@Column(name = "infoName")
	public String getInfoName()
	{
		return infoName;
	}
	
	@Override
	@ManyToOne(targetEntity = AssessmentPattern.class)
	@JoinColumn(name = "patternId", nullable = false)
	public IAssessmentPattern getPattern()
	{
		return pattern;
	}
	
	@Override
	@Column(name = "percentage")
	public String getPercentage()
	{
		return percentage;
	}
	
	@Override
	@Column(name = "weightage")
	public String getWeightage()
	{
		return weightage;
	}
	
	@Override
	@Column(name = "status")
	public boolean isStatus()
	{
		return status;
	}
	
	@Override
	public void setAutoId(int autoId)
	{
		this.autoId = autoId;
	}
	
	@Override
	public void setInfoName(String infoName)
	{
		this.infoName = infoName;
	}
	
	@Override
	public void setPattern(IAssessmentPattern pattern)
	{
		this.pattern = pattern;
	}
	
	@Override
	public void setPercentage(String percentage)
	{
		this.percentage = percentage;
	}
	
	@Override
	public void setStatus(boolean status)
	{
		this.status = status;
	}
	
	@Override
	public void setWeightage(String weightage)
	{
		this.weightage = weightage;
	}
	
}
