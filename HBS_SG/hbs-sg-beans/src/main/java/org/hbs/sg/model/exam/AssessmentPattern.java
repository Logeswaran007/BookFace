package org.hbs.sg.model.exam;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hbs.admin.model.CommonBeanFields;
import org.hbs.admin.model.IProducers;
import org.hbs.admin.model.Producers;

@Entity
@Table(name = "assessmentpattern")
public class AssessmentPattern extends CommonBeanFields implements IAssessmentPattern
{
	private static final long				serialVersionUID	= -3686008815972891689L;
	protected String						patternId			= "DEFAULT";
	protected String						patternName;
	protected IProducers					producer;
	protected Set<IAssessmentPatternInfo>	patternInfoSet		= new LinkedHashSet<IAssessmentPatternInfo>(0);

	public AssessmentPattern()
	{
		super();
	}

	public AssessmentPattern(String patternId, String patternName, IProducers producer, Set<IAssessmentPatternInfo> patternInfoSet)
	{
		super();
		this.patternId = patternId;
		this.patternName = patternName;
		this.producer = producer;
		this.patternInfoSet = patternInfoSet;
	}

	@Override
	@ManyToOne(targetEntity = Producers.class)
	@JoinColumn(name = "producerId", nullable = false)
	public IProducers getProducer()
	{
		return producer;
	}

	public void setProducer(IProducers producer)
	{
		this.producer = producer;
	}

	@Override
	@OneToMany(targetEntity = AssessmentPatternInfo.class, fetch = FetchType.EAGER, mappedBy = "pattern")
	public Set<IAssessmentPatternInfo> getPatternInfoSet()
	{
		return patternInfoSet;
	}

	public void setPatternInfoSet(Set<IAssessmentPatternInfo> patternInfoSet)
	{
		this.patternInfoSet = patternInfoSet;
	}

	@Override
	@Id
	@Column(name = "patternId")
	public String getPatternId()
	{
		return patternId;
	}

	@Override
	@Column(name = "patternName")
	public String getPatternName()
	{
		return patternName;
	}

	@Override
	public void setPatternId(String patternId)
	{
		this.patternId = patternId;
	}

	@Override
	public void setPatternName(String patternName)
	{
		this.patternName = patternName;
	}

}
