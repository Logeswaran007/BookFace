package org.hbs.sg.model.exam;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import org.hbs.util.CommonValidator;

@Embeddable
public class AssessmentCorrectAnswer implements Serializable, IAssessmentCorrectAnswer
{
	private static final long	serialVersionUID	= -4869171579268970177L;
	private String				correctAnswer1;
	private String				correctAnswer2;
	private String				correctAnswer3;
	private String				correctAnswer4;
	protected Double			markPerQuestion		= 1.0;

	public AssessmentCorrectAnswer()
	{
		super();
	}

	public AssessmentCorrectAnswer(String correctAnswer1, String correctAnswer2, String correctAnswer3, String correctAnswer4, Double markPerQuestion)
	{
		super();
		this.correctAnswer1 = correctAnswer1;
		this.correctAnswer2 = correctAnswer2;
		this.correctAnswer3 = correctAnswer3;
		this.correctAnswer4 = correctAnswer4;
		this.markPerQuestion = markPerQuestion;
	}

	@Override
	@Column(name = "correctAnswer1")
	public String getCorrectAnswer1()
	{
		return correctAnswer1;
	}

	@Override
	@Column(name = "correctAnswer2")
	public String getCorrectAnswer2()
	{
		return correctAnswer2;
	}

	@Override
	@Column(name = "correctAnswer3")
	public String getCorrectAnswer3()
	{
		return correctAnswer3;
	}

	@Override
	@Column(name = "correctAnswer4")
	public String getCorrectAnswer4()
	{
		return correctAnswer4;
	}

	@Override
	@Column(name = "markPerQuestion")
	public Double getMarkPerQuestion()
	{
		return markPerQuestion;
	}

	@Override
	public void setCorrectAnswer1(String correctAnswer1)
	{
		this.correctAnswer1 = correctAnswer1;
	}

	@Override
	public void setCorrectAnswer2(String correctAnswer2)
	{
		this.correctAnswer2 = correctAnswer2;
	}

	@Override
	public void setCorrectAnswer3(String correctAnswer3)
	{
		this.correctAnswer3 = correctAnswer3;
	}

	@Override
	public void setCorrectAnswer4(String correctAnswer4)
	{
		this.correctAnswer4 = correctAnswer4;
	}

	@Override
	public void setMarkPerQuestion(Double markPerQuestion)
	{
		this.markPerQuestion = markPerQuestion;
	}

	@Override
	public List<String> correctList()
	{
		List<String> answerList = new ArrayList<String>(1);
		if (CommonValidator.isNotNullNotEmpty(correctAnswer1))
		{
			answerList.add(correctAnswer1);
			if (CommonValidator.isNotNullNotEmpty(correctAnswer2))
			{
				answerList.add(correctAnswer2);
				if (CommonValidator.isNotNullNotEmpty(correctAnswer3))
				{
					answerList.add(correctAnswer3);
					if (CommonValidator.isNotNullNotEmpty(correctAnswer4))
					{
						answerList.add(correctAnswer4);
					}
				}
			}
		}
		return answerList;
	}
}
