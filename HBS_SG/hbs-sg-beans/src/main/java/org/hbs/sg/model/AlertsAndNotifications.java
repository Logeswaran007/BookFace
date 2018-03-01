package org.hbs.sg.model;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hbs.admin.model.IProducers;
import org.hbs.admin.model.ProducersBase;
import org.hbs.util.CommonValidator;

@Entity
@Table(name = "alertsandnotifications")
public class AlertsAndNotifications extends ProducersBase implements IAlertsAndNotifications
{

	private static final long	serialVersionUID	= 2379164159219826446L;

	protected int				autoId;

	protected String			expiryDate;

	protected String			message;

	protected String			messageType;

	protected String			scheduledDate;

	public AlertsAndNotifications()
	{
		super();
	}

	public AlertsAndNotifications(int autoId, String message, String messageType, String scheduledDate, String expiryDate, IProducers producer)
	{
		super();
		this.autoId = autoId;
		this.message = message;
		this.messageType = messageType;
		this.scheduledDate = scheduledDate;
		this.expiryDate = expiryDate;
		this.producer = producer;
	}

	@Transient
	public boolean isInformationExpired() throws ParseException
	{
		if (CommonValidator.isNotNullNotEmpty(expiryDate, producer.getUsers(), producer.getUsers().getCountry()))
		{
			DateFormat dateFormat = new SimpleDateFormat(DATE_FORMAT_DD_MMM_YYYY_HH_MM_AM_PM);
			Date expDate = dateFormat.parse(expiryDate);

			Calendar calendar = Calendar.getInstance();
			if (CommonValidator.isNotEqual(producer.getUsers().getCountry().getCountry(), "00"))
			{
				calendar.setTimeZone(TimeZone.getTimeZone(producer.getUsers().getCountry().getCountry()));
			}

			return expDate.getTime() >= calendar.getTime().getTime();

		}
		return false;
	}

	@Transient
	public boolean isScheduledDateReached() throws ParseException
	{
		if (CommonValidator.isNotNullNotEmpty(scheduledDate, producer.getUsers(), producer.getUsers().getCountry()))
		{

			DateFormat dateFormat = new SimpleDateFormat(DATE_FORMAT_DD_MMM_YYYY_HH_MM_AM_PM);
			Date schDate = dateFormat.parse(scheduledDate);

			Calendar calendar = Calendar.getInstance();
			if (CommonValidator.isNotEqual(producer.getUsers().getCountry().getCountry(), "00"))
			{
				calendar.setTimeZone(TimeZone.getTimeZone(producer.getUsers().getCountry().getCountry()));
			}

			return schDate.getTime() >= calendar.getTime().getTime();

		}

		return false;
	}

	@Override
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "autoId")
	public int getAutoId()
	{
		return autoId;
	}

	@Override
	@Column(name = "expiryDate")
	public String getExpiryDate()
	{
		return expiryDate;
	}

	@Override
	@Column(name = "message")
	public String getMessage()
	{
		return message;
	}

	@Override
	@Column(name = "messageType")
	public String getMessageType()
	{
		return messageType;
	}

	@Override
	@Column(name = "scheduledDate")
	public String getScheduledDate()
	{
		return scheduledDate;
	}

	@Override
	public void setAutoId(int autoId)
	{
		this.autoId = autoId;
	}

	@Override
	public void setExpiryDate(String expiryDate)
	{
		this.expiryDate = expiryDate;
	}

	@Override
	public void setMessage(String message)
	{
		this.message = message;
	}

	@Override
	public void setMessageType(String messageType)
	{
		this.messageType = messageType;
	}

	@Override
	public void setScheduledDate(String scheduledDate)
	{
		this.scheduledDate = scheduledDate;
	}

}
