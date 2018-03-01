package org.hbs.admin.model;

import java.io.File;
import java.io.Serializable;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.hbs.util.CommonValidator;
import org.hbs.util.EnumInterface;

public interface IImage extends Serializable
{
	public enum EUploadType implements EnumInterface
	{
		Identification, ProducerImage, Registration, TINNumber, UserImage, ProfileImage;
	}

	public enum EImage implements EnumInterface
	{
		Attachment;

		static final String CONTENT = "content";

		public String getRepositoryPhysicalPath(IProducers producer, String uploadSubFolderPath) throws Exception
		{
			if (uploadSubFolderPath == null)
				uploadSubFolderPath = "";

			if (CommonValidator.isNotNullNotEmpty(producer.getRepositoryBasePath()))
			{
				StringBuffer sbLocalPath = new StringBuffer();
				sbLocalPath.append(producer.getRepositoryBasePath() + File.separator + uploadSubFolderPath);

				File file = new File(sbLocalPath.toString());
				if (file.exists() == false && file.mkdirs())
				{
					file.setWritable(true);
					file.setReadable(true);
					file.setExecutable(true);
				}

				return sbLocalPath.toString();
			}
			else
			{
				throw new Exception("Not able Create/Construct Absolute path for the Repository");
			}
		}

		public String getServerSessionPhysicalPath(HttpSession httpSession) throws Exception
		{
			return getServerSessionPhysicalPath(httpSession, null);
		}

		public String getServerSessionPhysicalPath(HttpSession httpSession, String externalPath) throws Exception
		{
			if (externalPath == null)
				externalPath = "";

			if (CommonValidator.isNotNullNotEmpty(httpSession))
			{
				StringBuffer sbLocalPath = new StringBuffer();
				sbLocalPath.append(httpSession.getServletContext().getRealPath(CONTENT) + File.separator);
				sbLocalPath.append(httpSession.getId() + externalPath);

				File file = new File(sbLocalPath.toString());
				if (file.exists() == false)
				{
					file.mkdirs();
					file.setWritable(true);
					file.setReadable(true);
					file.setExecutable(true);
				}

				return sbLocalPath.toString();
			}
			else
			{
				throw new Exception("Not able Create/Construct Absolute path for the Session");
			}
		}

		public void getServerSessionVirtualPath(HttpServletRequest request, IProducers producer, IUploadImageOrDocuments... iDocsArr)
		{
			if (CommonValidator.isNotNullNotEmpty(iDocsArr))
			{
				Set<IUploadImageOrDocuments> iDocsSet = new LinkedHashSet<IUploadImageOrDocuments>(iDocsArr.length);
				Collections.addAll(iDocsSet, iDocsArr);
				getServerSessionVirtualPath(request, producer, iDocsSet);
			}
		}

		public void getServerSessionVirtualPath(HttpServletRequest request, IProducers producer, Set<? extends IUploadImageOrDocuments> iDocsSet)
		{
			try
			{
				if (CommonValidator.isNotNullNotEmpty(request) && CommonValidator.isSetFirstNotEmpty(iDocsSet))
				{
					File destDirectory = new File(getServerSessionPhysicalPath(request.getSession()));
					File srcFile = null;
					File destFile = null;
					StringBuffer sbLocalPath = null;
					String repoFilePath = null;
					for (IUploadImageOrDocuments iDocs : iDocsSet)
					{
						try
						{
							destFile = new File(destDirectory.getAbsolutePath() + File.separator + iDocs.getUploadFileName());
							if (destFile.exists() == false)
							{
								repoFilePath = iDocs.getUploadFileFolderURL() + File.separator + iDocs.getUploadFileName();
								srcFile = new File(getRepositoryPhysicalPath(producer, repoFilePath));

								try
								{
									FileUtils.copyFileToDirectory(srcFile, destDirectory);
								}
								catch (Exception e)
								{
									iDocs.setUploadFileVirtualURL(request.getServletContext().getContextPath() + "/common/no-image.png");
									e.printStackTrace();
									System.out.println(request.getServletContext().getContextPath() + "/common/no-image.png");
								}
							}
							sbLocalPath = new StringBuffer();
							if (CommonValidator.isNotNullNotEmpty(producer.getVirtualBasePath()))
								sbLocalPath.append(producer.getVirtualBasePath() + File.separator + CONTENT + File.separator);
							else
								sbLocalPath.append(request.getServletContext().getContextPath() + File.separator + CONTENT + File.separator);
							sbLocalPath.append(request.getSession().getId() + File.separator + iDocs.getUploadFileName());
							iDocs.setUploadFileVirtualURL(sbLocalPath.toString());
						}
						finally
						{
							srcFile = null;
							destFile = null;
							sbLocalPath = null;
							repoFilePath = null;
						}
					}
				}
			}
			catch (Exception excep)
			{
				excep.printStackTrace();
			}
		}

		public String encodeURL(String fileURL) throws MalformedURLException, URISyntaxException
		{
			if (CommonValidator.isNotNullNotEmpty(fileURL))
			{
				URL url = new URL(fileURL);

				String fragment = url.getQuery() == null ? url.getPath() : url.getPath() + "?" + url.getQuery();

				if (url.getPort() != -1)
				{
					return new URI(url.getProtocol(), null, url.getHost(), url.getPort(), fragment, null, null).toString();
				}
				else
				{
					return new URI(url.getProtocol(), url.getHost(), fragment, null).toString();
				}
			}
			return "";
		}

	}
}
