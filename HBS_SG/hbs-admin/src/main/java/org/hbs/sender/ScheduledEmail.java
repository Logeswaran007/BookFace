package org.hbs.sender;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.TimerTask;

import javax.mail.internet.MimeMessage;

import org.hbs.admin.bo.MessagesBo;
import org.hbs.admin.model.IMessages;
import org.hbs.admin.model.IMessages.EAddress;
import org.hbs.admin.model.IMessages.EMessage;
import org.hbs.admin.model.IProducers;
import org.hbs.admin.model.MessagesUserMapping;
import org.hbs.admin.model.Users;
import org.hbs.util.CommonValidator;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;

public class ScheduledEmail extends TimerTask
{
	private MessagesBo			messageBo;

	private IMessages			message;

	private MessagesUserMapping	messagesUserMapping;

	private EAddress[]			eAddresses;

	private JavaMailSender		mailSender;

	private IProducers			producer;

	public ScheduledEmail(JavaMailSender mailSender, IProducers producer, IMessages message, EAddress[] eAddresses)
	{
		super();
		this.eAddresses = eAddresses;
		this.message = message;
		this.mailSender = mailSender;
		this.producer = producer;
	}

	public ScheduledEmail(JavaMailSender mailSender, MessagesUserMapping messagesUserMapping, MessagesBo messageBo, EAddress[] eAddresses)
	{
		super();
		this.eAddresses = eAddresses;
		this.message = messagesUserMapping.getMessages();
		this.mailSender = mailSender;
		this.messagesUserMapping = messagesUserMapping;
		this.messageBo = messageBo;
		this.producer = messagesUserMapping.getReceiptantUser().getProducer();
	}

	@Override
	public void run()
	{
		try
		{
			if (CommonValidator.isNotNullNotEmpty(message))
			{
				if (message.getDataMap().isEmpty() && CommonValidator.isNotNullNotEmpty(message.getDataMapTemplateName()))
				{
					((DataMapTemplate) Class.forName(message.getDataMapTemplateName()).newInstance()).updateDataMap(message, eAddresses);
				}

				MimeMessage mimeMessage = mailSender.createMimeMessage();
				MimeMessagePreparator msgPreparator = new HBSMessagePreparator(message, eAddresses);
				msgPreparator.prepare(mimeMessage);

				mailSender.send(msgPreparator);

				if (CommonValidator.isNotNullNotEmpty(messagesUserMapping))
					messagesUserMapping.setMessageStatus(EMessage.Send.name());
			}
		}
		catch (Exception excep)
		{
			excep.printStackTrace();
			if (CommonValidator.isNotNullNotEmpty(messagesUserMapping))
				messagesUserMapping.setMessageStatus(EMessage.Retry.name());
		}
		finally
		{
			if (CommonValidator.isNotNullNotEmpty(messagesUserMapping))
			{
				try
				{
					messagesUserMapping.setRetryCount(messagesUserMapping.getRetryCount() + 1);
					messagesUserMapping.setModifiedUser(Users.createSystemUser(producer));
					messagesUserMapping.setModifiedDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
					messageBo.saveOrUpdateMessageUserMapping(messagesUserMapping);
				}
				catch (Exception excep)
				{
					excep.printStackTrace();
				}
			}
		}

	}

	public JavaMailSender getMailSender()
	{
		return mailSender;
	}

	public void setMailSender(JavaMailSender mailSender)
	{
		this.mailSender = mailSender;
	}

	public EAddress[] geteAddresses()
	{
		return eAddresses;
	}

	public void seteAddresses(EAddress[] eAddresses)
	{
		this.eAddresses = eAddresses;
	}

	public IMessages getMessage()
	{
		return message;
	}

	public void setMessage(IMessages message)
	{
		this.message = message;
	}

	public MessagesBo getMessageBo()
	{
		return messageBo;
	}

	public void setMessageBo(MessagesBo messageBo)
	{
		this.messageBo = messageBo;
	}

	public MessagesUserMapping getMessagesUserMapping()
	{
		return messagesUserMapping;
	}

	public void setMessagesUserMapping(MessagesUserMapping messagesUserMapping)
	{
		this.messagesUserMapping = messagesUserMapping;
	}

	public IProducers getProducer()
	{
		return producer;
	}

	public void setProducer(IProducers producer)
	{
		this.producer = producer;
	}

}

class HBSMessagePreparator implements MimeMessagePreparator
{
	private IMessages	message;

	private EAddress[]	eAddresses;

	public HBSMessagePreparator(IMessages message, EAddress[] eAddresses)
	{
		super();
		this.message = message;
		this.eAddresses = eAddresses;
	}

	@Override
	public void prepare(MimeMessage mimeMessage) throws Exception
	{
		MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);
		helper.setText(message.generateVTLMessage(), true);
		helper.setSubject(message.getMessageSubject());

		for (EAddress eAddress : eAddresses)
		{
			switch ( eAddress )
			{
				case Cc :
				{
					helper.setCc(eAddress.getAddresses().toArray(new String[eAddress.getAddresses().size()]));
					break;
				}
				case Bcc :
				{
					helper.setBcc(eAddress.getAddresses().toArray(new String[eAddress.getAddresses().size()]));
					break;
				}
				case To :
				default :
				{
					helper.setTo(eAddress.getAddresses().toArray(new String[eAddress.getAddresses().size()]));
					break;
				}
			}
		}
	}

	public IMessages getMessage()
	{
		return message;
	}

	public void setMessage(IMessages message)
	{
		this.message = message;
	}

	public EAddress[] geteAddresses()
	{
		return eAddresses;
	}

	public void seteAddresses(EAddress[] eAddresses)
	{
		this.eAddresses = eAddresses;
	}

}
