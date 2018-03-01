package org.hbs.sg.model.course;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hbs.admin.model.CommonFileUpload;

@Entity
@Table(name = "courseattachments")
public class CourseAttachments extends CommonFileUpload implements ICourseAttachments
{
	private static final long	serialVersionUID	= 6482306497562118535L;

	protected String			attachmentDesc;

	protected ICourses			courses;

	public CourseAttachments()
	{
		super();
	}

	public CourseAttachments(String attachmentDesc, ICourses courses)
	{
		super();
		this.attachmentDesc = attachmentDesc;
		this.courses = courses;
	}

	@Column(name = "attachmentDesc")
	public String getAttachmentDesc()
	{
		return attachmentDesc;
	}

	@ManyToOne(targetEntity = Courses.class, fetch = FetchType.LAZY)
	@JoinColumn(name = "courseId")
	public ICourses getCourses()
	{
		return courses;
	}

	public void setAttachmentDesc(String attachmentDesc)
	{
		this.attachmentDesc = attachmentDesc;
	}

	public void setCourses(ICourses courses)
	{
		this.courses = courses;
	}

}
