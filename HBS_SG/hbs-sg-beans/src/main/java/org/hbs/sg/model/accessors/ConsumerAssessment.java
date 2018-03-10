package org.hbs.sg.model.accessors;

import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hbs.admin.model.CommonBeanFields;
import org.hbs.admin.model.Users;
import org.hbs.sg.model.exam.AllocatedQuestions;
import org.hbs.sg.model.exam.IAllocatedQuestions;
import org.hbs.util.CommonUtil;
import org.hbs.util.CommonValidator;
import org.hbs.util.IConstProperty;

@Entity
@Table(name = "consumerassessment")
public class ConsumerAssessment extends CommonBeanFields implements IConsumerAssessment, IConstProperty
{
	
	private static final long				serialVersionUID	= 2330105986760101571L;
	
	protected Set<IAllocatedQuestions>		allocatedQuestions	= new LinkedHashSet<IAllocatedQuestions>(0);
	protected Set<IConsumerAssessmentGroup>	assessmentGroup		= new LinkedHashSet<IConsumerAssessmentGroup>(0);
	protected String						assessmentMode		= EAssessmentMode.Practise.name();
	protected String						assessmentStatus	= EAssessmentStatus.Ready.name();
	protected String						assignedDate;
	protected String						consumerExamId;
	protected String						consumerStatus		= EConsumerStatus.Fail.name();
	protected Integer						noOfCorrect			= 0;
	protected Integer						noOfIncorrect		= 0;
	protected Integer						noOfPartialCorrect	= 0;
	protected Integer						noOfQuestions		= 0;
	protected Integer						noOfUnanswer		= 0;
	protected Double						totalMarks			= 0.0;
	protected IConsumerUser					users;
	
	public ConsumerAssessment()
	{
		super();
		this.consumerExamId = getBusinessKey();
		this.assessmentGroup = new LinkedHashSet<IConsumerAssessmentGroup>(0);
		this.assignedDate = CommonUtil.getDateInFormat(new Date(), DATE_FORMAT_DD_MMM_YYYY_HH_MM_AM_PM);
	}
	
	public ConsumerAssessment(String assessmentMode, String assignedDate, String consumerExamId, IConsumerUser users, Set<IAllocatedQuestions> allocatedQuestions,
			Set<IConsumerAssessmentGroup> assessmentGroup)
	{
		super();
		this.assessmentMode = assessmentMode;
		this.assignedDate = assignedDate;
		if (CommonValidator.isNotNullNotEmpty(consumerExamId))
			this.consumerExamId = consumerExamId;
		else
			this.consumerExamId = getBusinessKey();
		this.users = users;
		this.allocatedQuestions = allocatedQuestions;
		this.assessmentGroup = assessmentGroup;
	}
	
	public void calculateAssessmentReport()
	{
		if (CommonValidator.isSetFirstNotEmpty(allocatedQuestions))
		{
			noOfQuestions = allocatedQuestions.size();
			Double markPerAns = 1.0;
			Double _veMark = 0.0;
			Double obtainMarks = 0.0;
			for (IAllocatedQuestions alQ : allocatedQuestions)
			{
				if (alQ.isUnanswered())
				{
					this.noOfUnanswer += 1;
				}
				else
				{
					if (CommonValidator.isListFirstNotEmpty(alQ.getQuestion().getCorrectAnswer().correctList()))
					{
						List<String> answerList = alQ.getQuestion().getCorrectAnswer().correctList();
						markPerAns = alQ.getQuestion().getCorrectAnswer().getMarkPerQuestion() / answerList.size();
						_veMark = alQ.getQuestion().getNegativeMarkPerQuestion() / answerList.size();
						obtainMarks = 0.0;
						
						for (String ans : answerList)
						{
							if (alQ.getAnswerId().indexOf(ans) >= 0)
							{
								obtainMarks += markPerAns;
							}
							else
							{
								obtainMarks -= _veMark;
							}
						}
						if (obtainMarks == 0.0)
						{
							this.noOfIncorrect += 1;
							this.totalMarks -= alQ.getQuestion().getNegativeMarkPerQuestion();
						}
						else
						{
							if (obtainMarks == alQ.getQuestion().getCorrectAnswer().getMarkPerQuestion())
							{
								alQ.setPartialAnswer(false);
								this.noOfCorrect += 1;
							}
							else
							{
								alQ.setPartialAnswer(true);
								noOfPartialCorrect += 1;
							}
							this.totalMarks += obtainMarks;
						}
					}
				}
			}
		}
	}
	
	@Override
	@OneToMany(mappedBy = "consumerAssessment", targetEntity = AllocatedQuestions.class, fetch = FetchType.EAGER)
	public Set<IAllocatedQuestions> getAllocatedQuestions()
	{
		return allocatedQuestions;
	}
	
	@Override
	@OneToMany(mappedBy = "consumerAssessment", targetEntity = ConsumerAssessmentGroup.class)
	public Set<IConsumerAssessmentGroup> getAssessmentGroup()
	{
		return assessmentGroup;
	}
	
	@Override
	@Column(name = "assessmentMode")
	public String getAssessmentMode()
	{
		return assessmentMode;
	}
	
	@Column(name = "assessmentStatus")
	public String getAssessmentStatus()
	{
		return assessmentStatus;
	}
	
	@Override
	@Column(name = "assignedDate")
	public String getAssignedDate()
	{
		return assignedDate;
	}
	
	@Transient
	public String getBusinessKey(String... combination)
	{
		return EKey.Auto("CAT");
	}
	
	@Override
	@Id
	@Column(name = "consumerExamId")
	public String getConsumerExamId()
	{
		return consumerExamId;
	}
	
	@Transient
	public String getConsumerStatus()
	{
		return consumerStatus;
	}
	
	@Transient
	public Integer getNoOfCorrect()
	{
		return noOfCorrect;
	}
	
	@Transient
	public Integer getNoOfIncorrect()
	{
		return noOfIncorrect;
	}
	
	@Transient
	public Integer getNoOfPartialCorrect()
	{
		return noOfPartialCorrect;
	}
	
	@Transient
	public Integer getNoOfQuestions()
	{
		return noOfQuestions;
	}
	
	@Transient
	public Integer getNoOfUnanswer()
	{
		return noOfUnanswer;
	}
	
	@Transient
	public Double getTotalMarks()
	{
		return totalMarks;
	}
	
	@Override
	@ManyToOne(targetEntity = Users.class)
	@JoinColumn(name = "usEmployeeId", nullable = false)
	public IConsumerUser getUsers()
	{
		return users;
	}
	
	@Override
	public void setAllocatedQuestions(Set<IAllocatedQuestions> allocatedQuestions)
	{
		
		this.allocatedQuestions = allocatedQuestions;
		
		if (CommonValidator.isSetFirstNotEmpty(allocatedQuestions))
			this.noOfQuestions = allocatedQuestions.size();
	}
	
	public void setAssessmentGroup(Set<IConsumerAssessmentGroup> assessmentGroup)
	{
		this.assessmentGroup = assessmentGroup;
	}
	
	@Override
	public void setAssessmentMode(String assessmentMode)
	{
		this.assessmentMode = assessmentMode;
	}
	
	public void setAssessmentStatus(String assessmentStatus)
	{
		this.assessmentStatus = assessmentStatus;
	}
	
	@Override
	public void setAssignedDate(String assignedDate)
	{
		this.assignedDate = assignedDate;
	}
	
	@Override
	public void setConsumerExamId(String consumerExamId)
	{
		this.consumerExamId = consumerExamId;
	}
	
	public void setConsumerStatus(String consumerStatus)
	{
		this.consumerStatus = consumerStatus;
	}
	
	public void setNoOfCorrect(Integer noOfCorrect)
	{
		this.noOfCorrect = noOfCorrect;
	}
	
	public void setNoOfIncorrect(Integer noOfIncorrect)
	{
		this.noOfIncorrect = noOfIncorrect;
	}
	
	public void setNoOfPartialCorrect(Integer noOfPartialCorrect)
	{
		this.noOfPartialCorrect = noOfPartialCorrect;
	}
	
	public void setNoOfQuestions(Integer noOfQuestions)
	{
		this.noOfQuestions = noOfQuestions;
	}
	
	public void setNoOfUnanswer(Integer noOfUnanswer)
	{
		this.noOfUnanswer = noOfUnanswer;
	}
	
	@Override
	public void setTotalMarks(Double totalMarks)
	{
		this.totalMarks = totalMarks;
	}
	
	@Override
	public void setUsers(IConsumerUser users)
	{
		this.users = users;
	}
	
}
