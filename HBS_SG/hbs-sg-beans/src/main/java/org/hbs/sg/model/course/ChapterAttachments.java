package org.hbs.sg.model.course;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hbs.admin.model.CommonFileUpload;

@Entity
@Table(name = "chapterattachments")
public class ChapterAttachments extends CommonFileUpload implements IChapterAttachments
{
	private static final long	serialVersionUID	= 6482306497562118535L;

	protected IChapters			chapters;

	public ChapterAttachments()
	{
		super();
	}

	public ChapterAttachments(IChapters chapters)
	{
		super();
		this.chapters = chapters;
	}

	@ManyToOne(targetEntity = Chapters.class, fetch = FetchType.LAZY)
	@JoinColumn(name = "chapterId")
	public IChapters getChapters()
	{
		return chapters;
	}

	@Override
	public void setChapters(IChapters chapters)
	{
		this.chapters = chapters;
	}

}
