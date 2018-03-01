package org.hbs.admin.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "usersattachments")
public class UsersAttachments extends CommonFileUpload implements IUsersAttachments
{
	private static final long	serialVersionUID	= 917678364001988324L;

	protected IUsers			users;

	public UsersAttachments()
	{
		super();
	}

	public UsersAttachments(MultipartFile multiPartFile, String uploadSubFolderPath, String uploadDocumentForType)
	{
		super();
		this.uploadMultiPartFile = multiPartFile;
		this.uploadSubFolderPath = uploadSubFolderPath;
		this.uploadDocumentForType = uploadDocumentForType;

	}

	@ManyToOne(targetEntity = Users.class, fetch = FetchType.LAZY)
	@JoinColumn(name = "usEmployeeId")
	public IUsers getUsers()
	{
		return users;
	}

	public void setUsers(IUsers users)
	{
		this.users = users;
	}
}
