package org.hbs.admin.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.sql.Blob;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.hbs.admin.model.IMessages.EAddress;
import org.hbs.util.CommonValidator;
import org.hbs.util.CustomLogger;
import org.hbs.util.dao.ICRUDBean;

@Entity
@Table(name = "messagesusermapping")
public class MessagesUserMapping extends CommonBeanFields implements ICRUDBean
{
	public static int			MAX_RETRY_COUNT		= 3;
	private static final long	serialVersionUID	= 3261842931089188964L;
	private final CustomLogger	logger				= new CustomLogger(this.getClass());

	@Transient
	public static void getClassFields(List<Field> fields, Class<?> clazz)
	{
		for (Field field : clazz.getDeclaredFields())
		{
			if (!Modifier.isStatic(field.getModifiers()))
				fields.add(field);
		}
		if (clazz.getSuperclass() != null && clazz.getSuperclass() != Object.class)
		{
			getClassFields(fields, clazz.getSuperclass());
		}
	}
	@Transient
	public static void getClassMethods(List<Method> method, Class<?> clazz)
	{
		method.addAll(Arrays.asList(clazz.getDeclaredMethods()));
		
		if (clazz.getSuperclass() != null && clazz.getSuperclass() != Object.class)
		{
			getClassMethods(method, clazz.getSuperclass());
		}
	}
	protected Blob				attachmentObject;
	protected int				autoId;
	protected Blob				dataObject;
	protected String			deliveryDateTime;
	protected IMessages			messages;
	protected String			messageStatus;
	protected Blob				receiptant;
	
	protected int				retryCount			= 0;
	
	protected boolean			selfDelete			= false;
	
	public MessagesUserMapping()
	{
		super();
	}
	
	@Transient
	public Object deserialize(Blob blob) throws IOException, ClassNotFoundException, SQLException
	{
		ObjectInputStream ois = new ObjectInputStream(blob.getBinaryStream());
		return ois.readObject();
	}
	
	@Transient
	public void extractValuesFromObject(Object obj, HashMap<String, Object> hmBlob, String clazzName) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException
	{
		String[] clazzes = "".split(",");
		List<String> clazzList = Arrays.asList(clazzes);
		boolean clazzDepth = clazzName.split("\\.").length < 4;
		
		if (clazzDepth)
		{
			List<Field> fieldList = new LinkedList<Field>();
			List<Method> methodLsit = new LinkedList<Method>();
			getClassFields(fieldList, obj.getClass());
			getClassMethods(methodLsit, obj.getClass());
			for (Field field : fieldList)
			{
				String mtdGetterName1 = "get" + field.getName().toUpperCase();
				String mtdGetterName2 = "is" + field.getName().toUpperCase();
				for (Method method : methodLsit)
				{
					if (method.getName().equalsIgnoreCase(mtdGetterName1) || method.getName().equalsIgnoreCase(mtdGetterName2))
					{
						Object value = method.invoke(obj, new Object[] {});
						if (CommonValidator.isNotNullNotEmpty(value))
						{
							if (value instanceof String || value instanceof Integer || value instanceof Float || value instanceof Long || value instanceof Boolean || value instanceof Character
									|| value instanceof Double || value instanceof Short || value instanceof Timestamp)
							{
								hmBlob.put(clazzName + "." + field.getName(), value);
								break;
							}
							else if (clazzList.contains(value.getClass().getSimpleName()))
							{
								extractValuesFromObject(value, hmBlob, clazzName + "." + field.getName());
							}
							else if (value instanceof Set<?>)
							{
								Set<?> setObjects = (Set<?>) value;
								for (Object sObj : setObjects)
								{
									extractValuesFromObject(sObj, hmBlob, clazzName + "." + field.getName());
								}
							}
						}
						else
						{
							break;
						}
					}
				}
				
			}
		}
	}
	
	@Column(name = "attachmentObject")
	public Blob getAttachmentObject()
	{
		return attachmentObject;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "autoId")
	public Integer getAutoId()
	{
		return autoId;
	}
	
	@Column(name = "dataObject")
	public Blob getDataObject()
	{
		return dataObject;
	}
	
	@Column(name = "deliveryDateTime")
	public String getDeliveryDateTime()
	{
		return deliveryDateTime;
	}
	
	@Transient
	public EAddress[] getEAddress()
	{
		EAddress.To.append(getReceiptantUser().getCommunicationAddress());
		return EAddress.values();
	}
	
	@ManyToOne(targetEntity = Messages.class)
	@JoinColumn(name = "messageId", nullable = false)
	public IMessages getMessages()
	{
		return messages;
	}
	
	@Column(name = "messageStatus")
	public String getMessageStatus()
	{
		return messageStatus;
	}
	
	@Transient
	public Object getObject() throws ClassNotFoundException, IOException, SQLException
	{
		return deserialize(this.receiptant);
	}
	
	@Column(name = "receiptant")
	public Blob getReceiptantAddress()
	{
		return receiptant;
	}
	
	@Transient
	public IUsers getReceiptantUser()
	{
		try
		{
			Object object = deserialize(receiptant);
			if (CommonValidator.isNotNullNotEmpty(object))
			{
				if (object instanceof IUsers)
					return (IUsers) object;
				else if (object instanceof IUsersAddress)
					return ((IUsersAddress) object).getUsers();
				
			}
			
		}
		catch (ClassNotFoundException | IOException | SQLException excep)
		{
			logger.error(excep);
		}
		return null;
	}
	
	@Column(name = "retryCount")
	public int getRetryCount()
	{
		return retryCount;
	}
	
	@Column(name = "selfDelete")
	public boolean isSelfDelete()
	{
		return selfDelete;
	}
	
	@Transient
	public Blob serialize(Object... objects) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException, IOException, SerialException, SQLException
	{
		HashMap<String, Object> hmBlob = new HashMap<String, Object>(0);
		for (Object obj : objects)
		{
			String clazzName = obj.getClass().getSimpleName();
			extractValuesFromObject(obj, hmBlob, clazzName);
		}
		ByteArrayOutputStream b = new ByteArrayOutputStream();
		ObjectOutputStream o = new ObjectOutputStream(b);
		o.writeObject(hmBlob);
		return new SerialBlob(b.toByteArray());
	}
	
	@Transient
	public Blob serializeObject(Object obj) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException, IOException, SerialException, SQLException
	{
		ByteArrayOutputStream b = new ByteArrayOutputStream();
		ObjectOutputStream o = new ObjectOutputStream(b);
		o.writeObject(obj);
		return new SerialBlob(b.toByteArray());
	}
	
	public void setAttachmentObject(Blob attachmentObject)
	{
		this.attachmentObject = attachmentObject;
	}
	
	public void setAutoId(int autoId)
	{
		this.autoId = autoId;
	}
	
	public void setDataObject(Blob dataObject)
	{
		this.dataObject = dataObject;
	}
	
	public void setDeliveryDateTime(String deliveryDateTime)
	{
		this.deliveryDateTime = deliveryDateTime;
	}
	
	public void setMessages(IMessages messages)
	{
		this.messages = messages;
	}
	
	public void setMessageStatus(String messageStatus)
	{
		this.messageStatus = messageStatus;
	}
	
	public void setReceiptantAddress(Blob receiptant)
	{
		this.receiptant = receiptant;
	}
	
	public void setRetryCount(int retryCount)
	{
		this.retryCount = retryCount;
	}
	
	public void setSelfDelete(boolean selfDelete)
	{
		this.selfDelete = selfDelete;
	}
	
}