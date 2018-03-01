package org.hbs.sg.web.controller;

import java.io.Serializable;

import org.hbs.sg.model.AlertsAndNotifications;

class InformationAlertForm implements Serializable
{

	private static final long		serialVersionUID	= -2595257522779035766L;

	private AlertsAndNotifications	alerts				= new AlertsAndNotifications();

	
	

	public InformationAlertForm()
	{
		super();

		
	}

	public InformationAlertForm(AlertsAndNotifications alerts)
	{
		super();
		this.alerts = alerts;
	
	}

	public AlertsAndNotifications getAlerts()
	{
		return alerts;
	}

	public void setAlerts(AlertsAndNotifications alerts)
	{
		this.alerts = alerts;
	}

	

}
