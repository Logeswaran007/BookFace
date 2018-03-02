package org.hbs.sg.model.course;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
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
import org.hbs.util.EBusinessKey.EKey;

@Entity
@Table(name = "chapters")
public class Chapters extends CommonBeanFields implements IChapters
{

	private static final long			serialVersionUID	= 94388478378397721L;

	protected Set<IChapterAttachments>	attachments			= new LinkedHashSet<IChapterAttachments>(0);

	protected String					chapterId;

	protected String					chapterName;

	protected ICourses					courses;

	protected boolean					trialMode			= false;

	public Chapters()
	{
		super();
		this.chapterId = getBusinessKey();
	}

	public Chapters(Set<IChapterAttachments> attachments, String chapterId, String chapterName, ICourses courses, boolean trialMode)
	{
		super();
		this.attachments = attachments;
		this.chapterId = chapterId;
		this.chapterName = chapterName;
		this.courses = courses;
		this.trialMode = trialMode;
	}

	@Column(name = "trialMode")
	public boolean isTrialMode()
	{
		return trialMode;
	}

	public void setTrialMode(boolean trialMode)
	{
		this.trialMode = trialMode;
	}

	@OneToMany(targetEntity = ChapterAttachments.class, fetch = FetchType.EAGER, mappedBy = "chapters", cascade = CascadeType.ALL)
	public Set<IChapterAttachments> getAttachments()
	{
		return attachments;
	}

	@Transient
	public String getBusinessKey()
	{
		return EKey.Auto("CHTR");
	}

	@Id
	@Column(name = "chapterId")
	public String getChapterId()
	{
		return chapterId;
	}

	@Column(name = "chapterName")
	public String getChapterName()
	{
		return chapterName;
	}

	@ManyToOne(targetEntity = Courses.class)
	@JoinColumn(name = "courseId", nullable = false)
	public ICourses getCourses()
	{
		return courses;
	}

	@Override
	public void setAttachments(Set<IChapterAttachments> attachments)
	{
		this.attachments = attachments;
	}

	@Override
	public void setChapterId(String chapterId)
	{
		this.chapterId = chapterId;
	}

	@Override
	public void setChapterName(String chapterName)
	{
		this.chapterName = chapterName;
	}

	public void setCourses(ICourses courses)
	{
		this.courses = courses;
	}

}
