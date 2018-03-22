
package org.hbs.sg.model.exam;

import java.util.LinkedHashMap;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hbs.util.CommonValidator;

@Entity
@Table(name = "assessmentpatterninfo")
public class AssessmentPatternInfo implements IAssessmentPatternInfo
{
	
	private static final long		serialVersionUID	= 3948412843084086L;
	protected int					autoId;
	protected IAssessmentPattern	pattern;
	protected int					percentage;
	protected boolean				status;
	protected String				weightage;
	
	public AssessmentPatternInfo()
	{
		super();
	}
	
	public AssessmentPatternInfo(int autoId, IAssessmentPattern pattern, int percentage, String weightage, boolean status)
	{
		super();
		this.autoId = autoId;
		this.pattern = pattern;
		this.percentage = percentage;
		this.weightage = weightage;
		this.status = status;
	}
	
	@Transient
	public int trackQuestionCalibrate(String assessmentId, long groupCount)
	{
		int calibrateCount = (int) Math.ceil(percentage * groupCount / 100.0);
		initialise(assessmentId).setRequiredCount(calibrateCount);
		return calibrateCount;
	}
	
	@Transient
	public QuestionCalibrate initialise(String assessmentId)
	{
		if (CommonValidator.isNotNullNotEmpty(pattern.getCalibrateHM().get(assessmentId)) == false)
		{
			pattern.getCalibrateHM().put(assessmentId, new LinkedHashMap<String, QuestionCalibrate>());
		}
		pattern.getCalibrateHM().get(assessmentId).put(weightage, new QuestionCalibrate());
		return pattern.getCalibrateHM().get(assessmentId).get(weightage);
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
	@ManyToOne(targetEntity = AssessmentPattern.class)
	@JoinColumn(name = "patternId", nullable = false)
	public IAssessmentPattern getPattern()
	{
		return pattern;
	}
	
	@Override
	@Column(name = "percentage")
	public int getPercentage()
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
	public void setPattern(IAssessmentPattern pattern)
	{
		this.pattern = pattern;
	}
	
	@Override
	public void setPercentage(int percentage)
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
