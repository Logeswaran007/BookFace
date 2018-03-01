package org.hbs.sg.model.accessors;

import java.io.Serializable;
import java.util.Set;

import org.hbs.sg.model.exam.IAllocatedQuestions;
import org.hbs.sg.model.exam.IAssessment;
import org.hbs.util.EnumInterface;

public interface IConsumerAssessment extends Serializable
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

	public IAssessment getAssessment();

	public String getAssessmentMode();

	public String getAssignedDate();

	public String getConsumerExamId();

	public Integer getNoOfPartialCorrect();

	public Double getTotalMarks();

	public IConsumerUser getUsers();

	public void setAllocatedQuestions(Set<IAllocatedQuestions> allocatedQuestions);

	public void setAssessment(IAssessment assessment);

	public void setAssessmentMode(String assessmentMode);

	public void setAssignedDate(String assignedDate);

	public void setConsumerExamId(String consumerExamId);

	public void setNoOfPartialCorrect(Integer noOfPartialCorrect);

	public void setTotalMarks(Double totalMarks);

	public void setUsers(IConsumerUser users);

}