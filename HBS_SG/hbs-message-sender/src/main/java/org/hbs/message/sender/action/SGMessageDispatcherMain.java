package org.hbs.message.sender.action;

import java.util.List;

import org.hbs.admin.model.IMessages.EMessageType;
import org.hbs.admin.model.MessagesUserMapping;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;

@SpringBootApplication(scanBasePackages = { "org.hbs" })
@EntityScan(basePackages = { "org.hbs" })
@PropertySources({ @PropertySource("classpath:application.properties") })
public class SGMessageDispatcherMain implements CommandLineRunner
{
	private final CustomLogger	logger				= new CustomLogger(this.getClass());

	public static void main(String[] args) throws Exception
	{
		SpringApplication app = new SpringApplication(SGMessageDispatcherMain.class);
		app.setBannerMode(Banner.Mode.OFF);
		app.run(args);
	}
	
	@Autowired
	MessageProcessor messageProcessor;
	
	public void run(String... args)
	{
		for (final List<MessagesUserMapping> messageUserList : messageProcessor.getScheduledMessageMapList().values())
		{
			if (CommonValidator.isListFirstNotEmpty(messageUserList))
			{
				EMessageType eMessageType = EMessageType.valueOf(messageUserList.iterator().next().getMessages().getMessageType());
				List<IMessageSender> messageSenderList = MessageSenderFactory.getInstance().getSenderInstance(eMessageType);
				if (CommonValidator.isListFirstNotEmpty(messageSenderList))
				{
					for (final IMessageSender messageSender : messageSenderList)
					{
						boolean isSenderReady = false;
						try
						{
							switch ( messageSender.getMessageSenderType() )
							{
								case SMS :
								{
									isSenderReady = true;
									break;
								}
								case Email :
								{
									isSenderReady = true;
									break;
								}
								default :
								{
									isSenderReady = false;
									break;
								}
							}
							
							if (isSenderReady)
							{
								new Thread(new Runnable() {
									
									@Override
									public void run()
									{
										try
										{
											messageSender.sendMessageToUserByMedia(messageUserList);
										}
										catch (Exception excep)
										{
											logger.error(excep);

										}
									}
								}).start();
							}
						}
						catch (Exception exception)
						{
							logger.error(exception);

						}
					}
				}
			}
		}
		
		System.exit(0);
	}
	
}
