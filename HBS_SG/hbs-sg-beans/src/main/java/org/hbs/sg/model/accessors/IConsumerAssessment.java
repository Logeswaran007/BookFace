package org.hbs.sg.model.accessors;

import java.util.Set;

import org.hbs.sg.model.exam.IAllocatedQuestions;
import org.hbs.util.EBusinessKey;
import org.hbs.util.EnumInterface;
import org.hbs.util.ICRUDBean;

public interface IConsumerAssessment extends ICRUDBean, EBusinessKey
{
	public enum EAssessmentMode implements EnumInterface
	{
		Assigned, Online, Practise;
	}
	
	public enum EAssessmentStatus implements EnumInterface
	{
		Completed, Ready, Started;
	}
	
	public enum EConsumerStatus implements EnumInterface
	{
		Fail, Pass;
	}
	
	public Set<IAllocatedQuestions> getAllocatedQuestions();
	
	public String getAssessmentMode();
	
	public String getAssignedDate();
	
	public String getConsumerExamId();
	
	public Integer getNoOfPartialCorrect();
	
	public Double getTotalMarks();
	
	public IConsumerUser getUsers();
	
	public void setAllocatedQuestions(Set<IAllocatedQuestions> allocatedQuestions);
	
	public void setAssessmentMode(String assessmentMode);
	
	public void setAssignedDate(String assignedDate);
	
	public void setConsumerExamId(String consumerExamId);
	
	public void setNoOfPartialCorrect(Integer noOfPartialCorrect);
	
	public void setTotalMarks(Double totalMarks);
	
	public void setUsers(IConsumerUser users);
	
	public Set<IConsumerAssessmentGroup> getAssessmentGroup();
	
	public void setAssessmentGroup(Set<IConsumerAssessmentGroup> assessmentGroup);
}