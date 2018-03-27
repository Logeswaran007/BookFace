package org.hbs.sender;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.net.HttpURLConnection;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.TimerTask;

import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.hbs.admin.bo.MessagesBo;
import org.hbs.admin.model.IAddress;
import org.hbs.admin.model.IMessages;
import org.hbs.admin.model.IMessages.EAddress;
import org.hbs.admin.model.IMessages.EMessage;
import org.hbs.admin.model.IMessages.ESMS;
import org.hbs.admin.model.IProducers;
import org.hbs.admin.model.IUsersAddress;
import org.hbs.admin.model.MessagesUserMapping;
import org.hbs.admin.model.Users;
import org.hbs.util.CommonValidator;

public class ScheduledSMS extends TimerTask
{
	private MessagesUserMapping	_MUM;
	
	private EAddress[]			eAddresses;
	
	private boolean				isScheduled	= false;
	
	private IMessages			message;
	
	private MessagesBo			messageBo;
	
	private String				password	= null;
	
	private IProducers			producer;
	
	private String				sender		= null;
	private final String		USER_AGENT	= "Mozilla/5.0";
	private String				userName	= null;
	private String				websiteURL	= null;
	
	public ScheduledSMS(IProducers producer, IMessages message, EAddress[] eAddresses)
	{
		super();
		this.eAddresses = eAddresses;
		this.message = message;
		this.producer = producer;
	}
	
	public ScheduledSMS(MessagesUserMapping messagesUserMapping, MessagesBo messageBo)
	{
		super();
		this.eAddresses = messagesUserMapping.getEAddress();
		this.message = messagesUserMapping.getMessages();
		this._MUM = messagesUserMapping;
		this.messageBo = messageBo;
		
		if (messagesUserMapping.getReceiptantUser() != null)
		{
			this.producer = messagesUserMapping.getReceiptantUser().getProducer();
			this.isScheduled = true;
		}
	}
	
	public MessagesUserMapping get_MUM()
	{
		return _MUM;
	}
	
	public EAddress[] geteAddresses()
	{
		return eAddresses;
	}
	
	public IMessages getMessage()
	{
		return message;
	}
	
	public MessagesBo getMessageBo()
	{
		return messageBo;
	}
	
	public IProducers getProducer()
	{
		return producer;
	}
	
	@SuppressWarnings("resource")
	@Override
	public void run()
	{
		CloseableHttpResponse response = null;
		CloseableHttpClient client = null;
		String reasonPhrase = "";
		
		try
		{
			HttpPost httpPost = new HttpPost(websiteURL);
			httpPost.setHeader(ESMS.User_Agent.getValue(), USER_AGENT);
			List<BasicNameValuePair> urlParameters = new ArrayList<BasicNameValuePair>();
			client = HttpClientBuilder.create().build();
			
			if (message.getDataMap().isEmpty() && CommonValidator.isNotNullNotEmpty(message.getDataMapTemplateName()))
			{
				((DataMapTemplate) Class.forName(message.getDataMapTemplateName()).newInstance()).updateDataMap(message, eAddresses);
			}
			
			for (EAddress eAddress : eAddresses)
			{
				for (long mobileNo : eAddress.getMobileNo())
				{
					urlParameters = new ArrayList<BasicNameValuePair>();
					urlParameters.add(new BasicNameValuePair(ESMS.UserName.getValue(), userName));
					urlParameters.add(new BasicNameValuePair(ESMS.Password.getValue(), password));
					urlParameters.add(new BasicNameValuePair(ESMS.Sender.getValue(), sender));
					urlParameters.add(new BasicNameValuePair(ESMS.ReceiptantMobile.getValue(), mobileNo + ""));
					urlParameters.add(new BasicNameValuePair(ESMS.Message.getValue(), message.generateVTLMessage()));
					
					httpPost.setEntity(new UrlEncodedFormEntity(urlParameters));
					
					response = client.execute(httpPost);
					
					if (isScheduled)
					{
						if (response.getStatusLine().getStatusCode() == HttpURLConnection.HTTP_OK)
						{
							_MUM.setMessageStatus(EMessage.Send.name());
						}
						else
							throw new Exception(response.getStatusLine().getReasonPhrase());
					}
				}
			}
		}
		catch (Exception excep)
		{
			StringWriter logMessageWriter = new StringWriter();
			excep.printStackTrace(new PrintWriter(logMessageWriter));
			reasonPhrase = logMessageWriter.toString();
			if (reasonPhrase.length() > 400)
			{
				reasonPhrase = reasonPhrase.substring(0, 400);
			}
			if (isScheduled)
			{
				_MUM.setMessageStatus(reasonPhrase);
			}
			else
			{
				for (EAddress eAddress : eAddresses)
				{
					if (eAddress == EAddress.To)
					{
						for (IAddress iAdd : eAddress.getAddressList())
						{
							try
							{
								_MUM = new MessagesUserMapping();
								_MUM.setMessages(message);
								_MUM.setMessageStatus(EMessage.Retry.name());
								_MUM.setReceiptantAddress(_MUM.serializeObject(iAdd));
								_MUM.setDataObject(_MUM.serializeObject(message.getDataMap()));
								_MUM.setCreatedUser(((IUsersAddress) iAdd).getUsers());
								_MUM.setCreatedDate(new Timestamp(System.currentTimeMillis()));
								_MUM.setRetryCount(1);
								getMessageBo().saveOrUpdateMessageUserMapping(_MUM);
							}
							catch (IllegalArgumentException | IllegalAccessException | InvocationTargetException | IOException | SQLException e)
							{
								e.printStackTrace();
							}
							
						}
					}
				}
			}
		}
		finally
		{
			try
			{
				if (response != null)
					response.close();
				if (client != null)
					client.close();
				
				if (isScheduled)
				{
					if (CommonValidator.isNotEqual(_MUM.getMessageStatus(), EMessage.Send.name()))
					{
						if (_MUM.getRetryCount() < 3)
							_MUM.setMessageStatus(EMessage.Retry.name());
						else
							_MUM.setMessageStatus(EMessage.Failed.name());
					}
					_MUM.setRetryCount(_MUM.getRetryCount() + 1);
					_MUM.setModifiedUser(Users.createSystemUser(_MUM.getReceiptantUser().getProducer()));
					_MUM.setModifiedDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
					getMessageBo().saveOrUpdateMessageUserMapping(_MUM);
				}
			}
			catch (Exception excep)
			{
				
			}
		}
		
	}
	
	public void set_MUM(MessagesUserMapping _MUM)
	{
		this._MUM = _MUM;
	}
	
	public void seteAddresses(EAddress[] eAddresses)
	{
		this.eAddresses = eAddresses;
	}
	
	public void setMessage(IMessages message)
	{
		this.message = message;
	}
	
	public void setMessageBo(MessagesBo messageBo)
	{
		this.messageBo = messageBo;
	}
	
	public void setProducer(IProducers producer)
	{
		this.producer = producer;
	}
	
}
